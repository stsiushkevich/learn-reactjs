<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/derivedStateNecessity" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="updatingStateBasedOnProps"
       value="https://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#updating-state-based-on-props"/>

<c:url var="fetchingExternalDataWhenPropsChange"
       value="https://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#fetching-external-data-when-props-change"/>

<c:url var="controlledComponentsUrl" value="/basics/forms#controlled-components"/>
<c:url var="uncontrolledComponentsUrl" value="/core/uncontrolled-components"/>
<c:url var="antiPattern1Url" value="https://codesandbox.io/s/m3w9zn1z8x"/>
<c:url var="antiPattern12Url" value="https://codesandbox.io/s/jl0w6r9w59"/>
<c:url var="antiPattern21Url" value="https://codesandbox.io/s/mz2lnkjkrx"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page derived-state-necessity-page">
    <h1>Возможно, вам не требуется производное состояние</h1>

    <wg:p><b>7 Июня, 2018. Brian Vaughn (Брайан Вон)</b></wg:p>

    <wg:p>React <b>16.4</b> включил исправление для <code>getDerivedStateFromProps</code>, из-за чего некоторые
        существующие баги в компонентах React воспроизводятся более последовательно. Если
        данный релиз обнажил случай, когда ваше приложение использовало анти-паттерн и
        перестало работать должным образом после исправления, мы сожалеем об этом. В данном
        посте мы объясним некоторые общие анти-паттерны с производным состоянием и
        предпочтительные альтернативы.</wg:p>

    <wg:p>
        В течение долгого времени метод жизненного цикла <code>componentWillReceiveProps</code>
        был единственным способом обновления состояния в ответ на изменение свойств
        <code>props</code> без дополнительной отрисовки. В версии <b>16.3</b> мы ввели ему на смену новый
        метод жизненного цикла: <code>getDerivedStateFromProps</code>, чтобы более безопасно обеспечить
        те же варианты использования. В то же время мы поняли, что у людей много заблуждений
        о том, как использовать оба метода, и что анти-паттерны приводят к тонким и запутанным
        ошибкам. Исправление <code>getDerivedStateFromProps</code> в <b>16.4</b> делает производное состояние
        более предсказуемым, поэтому результаты его неправильного использования легче заметить.
    </wg:p>

    <app:alert title="Внимание!" type="warning">
        Все анти-паттерны, описанные в этом разделе, применимы как к более
        старому <code>componentWillReceiveProps</code>, так и к
        новому <code>getDerivedStateFromProps</code>.
    </app:alert>

    <wg:p>
        Данный раздел затрагивает следующие темы:
    </wg:p>

    <wg:p>
        <ul>
            <li><a href="#1">Когда следует использовать производное состояние</a></li>
            <li><a href="#2">Общие ошибки при использовании производного состояния</a>
                <ul>
                    <li><a href="#21">Анти-паттерн: безусловное копирование свойств в состояние</a></li>
                    <li><a href="#22">Анти-паттерн: стирание состояния при изменении свойств</a></li>
                </ul>
            </li>
            <li><a href="#3">Предпочтительные решения</a></li>
            <li><a href="#4">Что насчет запоминания?</a></li>
        </ul>
    </wg:p>

    <br/>
    <a name="1"></a>
    <h2>Когда следует использовать производное состояние</h2>

    <wg:p>
        <code>getDerivedStateFromProps</code> служит только одной цели: <b>он позволяет
        компоненту обновлять свое внутреннее состояние в результате изменения
        свойств.</b> В нашем предыдущем посте были приведены некоторые примеры,
        такие как <wg:link href="${updatingStateBasedOnProps}">запись текущего направления прокрутки на основе изменения
        свойства</wg:link>  <code>offset</code> или <wg:link href="${fetchingExternalDataWhenPropsChange}">загрузки
        внешних данных, обозначенных свойством</wg:link> <code>source</code>.
    </wg:p>

    <wg:p>
        Мы не привели много примеров, потому что, как правило, <b>производное
        состояние следует использовать экономно</b>. Все проблемы с производным
        состоянием, которые мы видели, могут быть в конечном итоге сведены к <b>(1)</b>
        безусловному обновлению состояния из свойств или <b>(2)</b> обновлению состояния,
        всякий раз, когда свойства и состояние не совпадают. (Мы рассмотрим
        оба варианта более подробно ниже).
    </wg:p>

    <wg:p>
        <ul>
            <li>
                Если вы используете производное состояние для запоминания некоторых вычислений,
                основанных только на текущих свойствах props, вам не требуется производное
                состояние. См. <a href="#4">Что насчет запоминания?</a> ниже.
            </li>
            <li>
                Если вы обновляете производное состояние безусловно либо обновляете его,
                всякий раз когда свойства и состояние не совпадают, ваш компонент может
                слишком часто обновлять свое состояние. Читайте дальше для более подробной
                информации.
            </li>
        </ul>
    </wg:p>

    <br/>
    <a name="2"></a>
    <h2>Общие ошибки при использовании производного состояния</h2>

    <wg:p>
        Термины <b>«<a href="${controlledComponentsUrl}">контролируемый</a>»</b> и
        <b>«<a href="${uncontrolledComponentsUrl}">неконтролируемый</a>»</b> обычно относятся к элементам
        формы, но они также могут описывать, где живут данные какого-либо компонента.
        Данные, переданные как свойства, можно рассматривать как <b>контролируемые</b> (поскольку
        родительский компонент контролирует эти данные). Данные, которые существуют только
        во внутреннем состоянии, могут считаться <b>неконтролируемыми</b> (поскольку родитель не может напрямую их изменить).
    </wg:p>

    <wg:p>
        Наиболее распространенная ошибка с производным состоянием заключается в смешении этих
        двух случаев: когда производное значение состояния обновляется к тому же и
        вызовами <code>setState</code>, получается, что для данных нет ни одного источника истины.
        Пример загрузки внешних данных, приведенный ранее, может показаться похожим, но
        он отличается в нескольких важных моментах. В примере загрузки есть явный
        источник истины как для свойства <code>source</code>, так и для значения <code>loading</code> в состоянии.
        Когда свойство <code>source</code> изменяется, состояние <code>loading</code> <b>всегда</b> должно быть переопределено.
        И наоборот, состояние переопределяется только тогда, когда свойство <b>изменяется</b>, в
        противном случае оно управляется компонентом.
    </wg:p>

    <wg:p>
        Проблемы возникают при изменении любого из этих ограничений.
        Обычно это происходит в двух формах. Давайте рассмотрим обе.
    </wg:p>

    <br/>
    <a href="21"></a>
    <h3>Анти-паттерн: безусловное копирование свойств в состояние</h3>

    <wg:p>
        Распространенным заблуждением является то, что <code>getDerivedStateFromProps</code> и
        <code>componentWillReceiveProps</code> вызывается только в том случае, если свойства «изменяются».
        Данные методы жизненного цикла вызываются всякий раз, когда перерисовывается
        родительский компонент, независимо от того, изменились ли свойства <code>props</code>. Поэтому
        всегда остается небезопасным безусловно переопределять состояние, используя каждый
        из этих методов жизненного цикла. <b>Это приведет к тому, что обновления состояния будут потеряны.</b>
    </wg:p>

    <wg:p>Рассмотрим пример, демонстрирующий проблему. Есть компонент <code>EmailInput</code>,
        который отображает свойство <code>email</code> в состояние:</wg:p>

    <ce:code-example-1/>

    <wg:p>
        На первый взгляд данный компонент выглядит нормально. Состояние инициализируется
        значением, заданным c помощью свойств <code>props</code>, и обновляется при вводе значения
        в <code>&lt;input&gt;</code>. Но если родитель нашего компонента перерисовывается, все, что
        мы набрали в <code>&lt;input&gt;</code>, будет потеряно! (см. <a href="${antiPattern1Url}">пример</a>) Это справедливо, даже
        если бы мы производили сравнение <code>nextProps.email! == this.state.email</code>
        перед переустановкой значения.
    </wg:p>

    <wg:p>
        В этом простом примере добавление <code>shouldComponentUpdate</code> для перерисовки
        только когда свойство <code>email</code> изменилось, может исправить проблему. Однако на практике
        компоненты обычно принимают множество свойств, поэтому изменение какого-либо другого
        свойства будет по-прежнему вызывать перерисовку и неправильную переустановку. Свойства
        типа <code>Function</code> и <code>Object</code> также часто создаются встроенными, что затрудняет реализацию
        <code>shouldComponentUpdate</code>, который стабильно возвращает <code>true</code> только тогда, когда произошли
        существенные изменения. <a href="${antiPattern12Url}">Вот демонстрация, которая показывает происходящее.</a> Как результат,
        <code>shouldComponentUpdate</code> лучше всего использовать в качестве оптимизации производительности,
        а не для обеспечения корректности производного состояния.
    </wg:p>

    <wg:p>
        Надеемся, теперь понятно, почему <b>безусловное копирование свойств в
        состояние является плохой идеей</b>. Прежде чем рассматривать возможные решения,
        давайте посмотрим на связанный с этим проблемный паттерн: что если мы
        обновляем состояние только при изменении свойства <code>email</code>?
    </wg:p>
    
    <br/>
    <a name="22"></a>
    <h3>Анти-паттерн: стирание состояния при изменении свойств</h3>
    
    <wg:p>
        Продолжая приведенный выше пример, мы могли бы избежать случайного
        стирания состояния, обновляя его только при изменении <code>props.email</code>:
    </wg:p>
    
    <ce:code-example-2/>
    
    <app:alert title="Внимание!" type="warning">
        Несмотря на то, что приведенный пример демонстрирует <code>componentWillReceiveProps</code>,
        тот же антипаттерн применим и к <code>getDerivedStateFromProps</code>.
    </app:alert>
    
    <wg:p>
        Мы только что произвели большое улучшение. Теперь наш компонент будет стирать
        то, что мы набрали, только когда свойства действительно изменятся.
    </wg:p>
    
    <wg:p>
        Существует еще одна тонкая проблема. Представьте приложение-менеджер паролей,
        использующее вышеуказанный компонент ввода. При навигации между деталями для
        двух акаунтов с тем же адресом электронной почты input не сможет быть сброшен.
        Это связано с тем, что значение свойства, переданное компоненту, будет
        одинаковым для обеих учетных записей! Это стало бы сюрпризом для пользователя,
        так как несохраненное изменение одной учетной записи повлияло бы на другие
        учетные записи, которые могли совместно использовать один и тот же адрес
        электронной почты. (см. <a href="${antiPattern21Url}">демонстрацию здесь</a>.)
    </wg:p>
    
    <wg:p>
        Данный дизайн принципиально ошибочен, но вместе с тем это непростая
        ошибка. (Я сам её допустил!) К счастью, существует две альтернативы, которые
        работают лучше. Ключ обеих состоит в том, что <b>для каждой части данных
        вам нужно выбрать один компонент, который владеет ей как источник истины,
        и избегать её дублирования в других компонентах.</b> Давайте посмотрим
        на каждую из альтернатив.
    </wg:p>
    
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="react-v16.4.0-pointer-events"/>
<app:page-navigate pageStartAncor="pageStart" prevPageUrl="${prevPageUrl}"/>