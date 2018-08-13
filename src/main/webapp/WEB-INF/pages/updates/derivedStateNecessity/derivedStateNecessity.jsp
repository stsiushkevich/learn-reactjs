<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/domAttributesInReact16" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="updatingStateBasedOnProps"
       value="https://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#updating-state-based-on-props"/>

<c:url var="fetchingExternalDataWhenPropsChange"
       value="https://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#fetching-external-data-when-props-change"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page react-v16.0-page">
    <h1>Возможно, вам не требуется производное состояние</h1>

    <wg:p><b>7 Июня, 2018. Brian Vaughn(Брайан Вон)</b></wg:p>

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

    <app:alert title="Внимание!" type="alert">
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

    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="react_v16_0"/>
<c:url var="nextPageUrl" value="error-handling-in-react-16"/>
<app:page-navigate pageStartAncor="pageStart"
                   prevPageUrl="${prevPageUrl}"
                   nextPageUrl="${nextPageUrl}"/>