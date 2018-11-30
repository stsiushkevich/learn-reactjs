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
<c:url var="firstRecommendationUrl" value="https://codesandbox.io/s/7154w1l551"/>
<c:url var="reconciliationUrl" value="/core/reconciliation#keys"/>
<c:url var="uncontrolledCmpUrl" value="https://codesandbox.io/s/6v1znlxyxn"/>
<c:url var="resetUncontrolledCmpWithIdPropUrl" value="https://codesandbox.io/s/rjyvp7l3rq"/>
<c:url var="resetUncontrolledCmpWithMethodUrl" value="https://codesandbox.io/s/l70krvpykl"/>
<c:url var="memoizationUrl" value="https://ru.wikipedia.org/wiki/Мемоизация"/>
<c:url var="githubUrl" value="https://github.com/reactjs/reactjs.org/issues/new"/>
<c:url var="twitterUrl" value="https://twitter.com/reactjs"/>

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
            <li><a href="#4">Что насчет мемоизации?</a></li>
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
        свойства</wg:link> <code>offset</code> или <wg:link href="${fetchingExternalDataWhenPropsChange}">загрузки
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
    <a name="21"></a>
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
        В этом простом примере добавление <code>shouldComponentUpdate</code> для перерисовки компонента
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
        электронной почты. (<a href="${antiPattern21Url}">см. демонстрацию здесь</a>.)
    </wg:p>
    
    <wg:p>
        Данный дизайн принципиально ошибочен, но вместе с тем это непростая
        ошибка. (Я сам её допустил!) К счастью, существует две альтернативы, которые
        работают лучше. Ключ обеих состоит в том, что <b>для каждой части данных
        вам нужно выбрать один компонент, который владеет ей как источник истины,
        и избегать её дублирования в других компонентах.</b> Давайте посмотрим
        на каждую из альтернатив.
    </wg:p>
    
    <br/>
    <a name="3"></a>
    <h2>Предпочтительные решения</h2>
    
    <br/>
    <h3>Рекомендация: полностью контролируемый компонент</h3>
    
    <wg:p>Один из способов избежать упомянутых выше проблем - полностью
        удалить состояние из нашего компонента. Если адрес электронной
        почты существует только как свойство, то нам не нужно беспокоиться
        о конфликтах с состоянием. Мы даже могли бы преобразовать <code>EmailInput</code>
        в более легкий функциональный компонент:</wg:p>
    
    <ce:code-example-3/>
    
    <wg:p>
        Данный подход упрощает реализацию нашего компонента, но если мы все же хотим
        сохранять введенное значение, компонент родительской формы теперь должен будет делать
        это вручную. (<a href="${firstRecommendationUrl}">Нажмите здесь, чтобы
        увидеть демонстрацию данного шаблона.</a>)
    </wg:p>
    
    <br/>
    <h3>Рекомендация: полностью неконтролируемый компонент с ключом key</h3>
    
    <wg:p>
        В качестве другой альтернативы может выспупать решение, где наш компонент
        полностью владеет состоянием, содержащим введенное значение электронной почты.
        В этом случае компонент все еще может принять свойство для установки начального
        значения, но затем он будет игнорировать последующие изменения этого свойства:
    </wg:p>
    
    <ce:code-example-4/>
    
    <wg:p>Чтобы сбросить значение при переходе на другой элемент (как в нашем сценарии менеджера
        паролей), мы можем использовать специальный атрибут React, называемый <code>key</code>. Когда <code>key</code> изменяется,
        <b><a href="${reconciliationUrl}">React создает новый экземпляр компонента, а не обновляет текущий.</a></b> Обычно ключи используются
        для динамических списков, но они также полезны и здесь. В нашем случае мы можем
        использовать ID пользователя для пересоздания элемента ввода электронной почты при
        выборе нового пользователя:</wg:p>
    
    <ce:code-example-5/>
    
    <wg:p>
        Каждый раз, когда ID изменяется, элемент ввода почтового адреса <code>EmailInput</code> будет создан заново, и его состояние
        будет сброшено до последнего значения <code>defaultEmail</code>. (<a href="${uncontrolledCmpUrl}">Нажмите здесь, чтобы увидеть
        демонстрацию этого шаблона.</a>) При таком подходе вам не нужно добавлять ключ к каждому
        элементу ввода. Возможно, было бы разумнее установить ключ на всю форму. Каждый раз, когда
        ключ изменяется, все элементы в форме будут созданы заново со свеже инициализированным состоянием.
    </wg:p>
    
    <wg:p>В большинстве случаев это лучший способ обработать состояние, которое необходимо сбросить.</wg:p>
    
    <app:alert title="Внимание!" type="warning">
        Хотя такое решение может показаться медленным, разница в производительности обычно незначителеная.
        Использование key может оказаться даже быстрее, в случаях когда компоненты имеют тяжелую логику,
        которая срабатывает при обновлениях, произошедших после того как алгоритм сравнения обошел соответствующее поддерево.
    </app:alert>

    <br/>
    <h4>Альтернатива 1: Сброс неконтролируемого компонента с помощью свойства-идентификатора</h4>

    <wg:p>
        Если по какой-либо причине <code>key</code> не работает (возможно, инициализировать компонент очень затратно),
        то рабочим, но громоздким решением будет слежение за изменениями <code>userID</code> в <code>getDerivedStateFromProps</code>:
    </wg:p>

    <ce:code-example-6/>

    <wg:p>
        Данное решение предоставляет гибкость: можно сбрасывать только требуемые части
        внутреннего состояния компонента по заданному условию. (<a href="${resetUncontrolledCmpWithIdPropUrl}">Нажмите здесь</a>, чтобы
        увидеть демонстрацию данного шаблона.)
    </wg:p>

    <br/>
    <h4>Альтернатива 2: Сброс неконтролируемого компонента с помощью метода экземпляра</h4>

    <wg:p>
        Реже, вам может потребоваться сбросить состояние, даже если нет подходящего идентификатора,
        чтобы использовать его как <code>key</code>. Одним из решений может являться сброс ключа на случайное значение или
        инкрементация номера каждый раз, когда вы хотите сбросить состояние. Но существует и еще одна жизнеспособная
        альтернатива: можно опубликовать метод экземпляра для императивного сброса внутреннего состояния:
    </wg:p>

    <ce:code-example-7/>

    <wg:p>
        Далее родительский компонент формы мог бы использовать <code>ref</code> для вызова данного метода.
        (<a href="${resetUncontrolledCmpWithMethodUrl}">Нажмите здесь</a>, чтобы увидеть демонстрацию данного шаблона.)
    </wg:p>

    <wg:p>
        Ссылки <code>ref</code> могут быть полезны в определенных случаях, таких как этот, но в целом мы
        рекомендуем использовать их экономно. Даже в демо, данный императивный метод не является
        идеальным, так как здесь будет выполняться две отрисовки вместо одной.
    </wg:p>

    <br/>
    <h3>Резюме</h3>

    <wg:p>Напомним, что при разработке компонента важно решить какими
        будут его данные: контролируемые или неконтролируемые.</wg:p>

    <wg:p>
        Вместо того, чтобы пытаться <b>«отзеркаливать» значение свойства в состояние</b>,
        сделайте компонент <b>контролируемым</b> и объедините два различных значения в состоянии
        какого-либо родительского компонента. Например, вместо того, чтобы потомок принимал
        «фиксированное» <code>props.value</code> и отслеживал «мгновенное» <code>state.value</code>, пусть родительский
        управляет как <code>state.draftValue</code>, так и <code>state.committedValue</code> и напрямую управляет
        значением потомка. Это сделает поток данных более явным и предсказуемым.
    </wg:p>

    <wg:p>
        В случае <b>неконтролируемых</b> компонентов, если вы пытаетесь сбросить состояние,
        когда изменяется определенное свойство (обычно идентификатор), у вас есть несколько вариантов:
    </wg:p>

    <wg:p>
        <ul>
            <li><b>Рекоммендация: сбрасывать <i>все внутреннее состояние</i> используя атрибут</b> <code>key</code>.</li>
            <li>Альтернатива 1: для сброса <i>только определенных полей</i> состояния отслеживайте
                изменения специального свойства (например, <code>props.userID</code>).</li>
            <li>Альтернатива 2: объявление императивного метода экземпляра и использование ссылок.</li>
        </ul>
    </wg:p>

    <br/>
    <a name="4"></a>
    <h2>Что насчет мемоизации?</h2>

    <wg:p>
        Мы уже видели производное состояние, которое использовалось для обеспечения того,
        чтобы дорогостоящее значение, используемое в отрисовке, пересчитывалось только при
        изменении <code>input</code>-ов. Данный подход известен как <a href="${memoizationUrl}">мемоизация</a>.
    </wg:p>

    <wg:p>
        Использование производного состояния для мемоизации не обязательно плохо, но как правило
        это не лучшее решение. В управлении производным состоянием присуща сложность, и эта сложность
        возрастает с каждым дополнительным свойством. Например, если мы добавим второе производное поле
        к нашему состоянию компонента, то нашей реализации потребуется отслеживать изменения
        каждого.
    </wg:p>

    <wg:p>
        Давайте рассмотрим пример компонента, который принимает одно свойство - список элементов,
        соответствующих поисковому запросу, введенному пользователем. Затем компонент отображает эти элементы.
        Мы могли бы использовать производное состояние для хранения отфильтрованного списка:
    </wg:p>

    <ce:code-example-8/>

    <wg:p>
        Данная реализация позволяет избежать перерасчета <code>filteredList</code> чаще, чем это необходимо.
        Но здесь присутствует избыточная сложность, так как нужно отдельно отслеживать изменения и
        в <code>props</code>, и в <code>state</code>, чтобы правильно обновлять отфильтрованный список. В следующем примере
        мы можем упростить работу с помощью <code>PureComponent</code> и перещения операции фильтрации в
        метод <code>render</code>:
    </wg:p>

    <ce:code-example-9/>

    <wg:p>
        Вышеупомянутый подход намного яснее и проще, чем версия с производным состоянием. Но иногда
        и это не будет являться достаточно хорошим решением - фильтрация может оказаться медленной для больших списков,
        а <code>PureComponent</code> не будет препятствовать перерисовке, если какое-либо дополнительное свойство изменилось. Чтобы
        решить обе эти проблемы, мы могли бы добавить memoization <b>помощник</b>, чтобы избежать излишней
        повторной фильтрации нашего списка:
    </wg:p>

    <ce:code-example-10/>

    <wg:p>
        Данное решение намного проще и достигает той же цели, что и версия с производным состоянием!
    </wg:p>

    <wg:p>При использовании мемоизации помните о некоторых ограничениях:</wg:p>

    <wg:p>
        <ul>
            <li>В большинстве случаев вам нужно <b>присоединить мемоизированную функцию к
                экземпляру компонента</b>. Это предотвращает множество экземпляров компонента от
                переустановки мемоизированных ключей друг друга.</li>
            <li>
                Как правило вам понадобится <code>memoization</code> помощник с <b>ограниченным размером кеша</b>, чтобы
                предотвратить утечку памяти с течением времени. (В приведенном выше примере мы
                использовали <code>memoize-one</code>, поскольку он кэширует только самые недавние аргументы и результат).
            </li>
            <li>
                Ни одна из реализаций, представленных в этом разделе, не будет работать, если <code>props.list</code> пересоздается
                каждый раз, когда отрисовывается родительский компонент. Но в большинстве случаев они подходят.
            </li>
        </ul>
    </wg:p>

    <br/>
    <h2>В заключение</h2>

    <wg:p>
        В реальных приложениях компоненты часто содержат сочетание контролируемого и
        неконтролируемого поведения. Это нормально! Если у каждого значения есть ясный источник истины,
        вы можете избежать упомянутых выше анти-паттернов.
    </wg:p>

    <wg:p>
        Также стоит напомнить, что метод <code>getDerivedStateFromProps</code> (и производное состояние в целом) является
        продвинутой функцией и должен использоваться экономно из-за описанной сложности. Если ваш случай
        использования выходит за рамки данных шаблонов, пожалуйста, поделитесь им с нами
        в <a href="${githubUrl}">GitHub</a> или <a href="${twitterUrl}">Twitter</a>!
    </wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="react-v16.4.0-pointer-events"/>
<c:url var="nextPageUrl" value="react-profiler"/>
<app:page-navigate pageStartAncor="pageStart"
                   prevPageUrl="${prevPageUrl}"
                   nextPageUrl="${nextPageUrl}"/>