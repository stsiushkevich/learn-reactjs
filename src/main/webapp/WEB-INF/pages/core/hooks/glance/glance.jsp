<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/hooks/glance" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page hooks-glance-page">
    <h1>3.12.2 Обзор хуков</h1>
    
    <br/>
    
    <p class="introduction">
        Хуки - это новая функция, которая позволяет вам использовать состояние и другие
        функции React без написания класса. В настоящее время они доступны в <b>React v16.8.0-alpha.0</b>.
    </p>
    
    <c:url var="introduction1Url" value="introduction#no-breaking-changes"/>
    
    
    <p>
        Хуки являются <b><a href="${introduction1Url}">обратно совместимыми</a></b>. В данном разделе представлен быстрый обзор
        хуков для опытных пользователей React. Если вы запутались, ищите желтый
        прямоугольник, как этот:
    </p>
    
    <c:url var="introduction2Url" value="introduction"/>
    
    <app:alert title="Детальное объяснение" type="warning">
        Прочитайте <b><a href="${introduction2Url}">раздел о мотивации</a></b>,
        чтобы узнать, почему мы вводим хуки React.
    </app:alert>
    
    <p>
        <b>↑↑↑ Каждый раздел заканчивается таким желтым прямоугольником.</b>
        Он ссылается на подробное объяснение.
    </p>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.2.1 Хук состояния</h2>
    <br/>
    
    <p>
        В данном примере отображается счетчик. Когда вы нажимаете
        кнопку, он увеличивает своё значение:
    </p>
    
    <ce:code-example-1/>
    
    <p>
        Здесь <code>useState</code> - это хук (мы сейчас поговорим о том, что это значит). Мы
        вызываем его внутри компонента-функции, чтобы наделить последний локальным
        состоянием. React сохранит это состояние между повторными отрисовками. <code>useState</code>
        возвращает пару: <b>текущее</b> значение состояния и функцию, которая позволяет вам обновлять
        его. Вы можете вызвать эту функцию из обработчика событий или из любого другого места.
        Он похож на <code>this.setState</code> в классе, за исключением того, что он не объединяет старое и
        новое состояние. (Мы покажем пример, сравнивающий <code>useState</code> с <code>this.state</code> в разделе
        Использование хука состояния.)
    </p>
    
    <p>
        Единственный аргумент <code>useState</code> является начальным состоянием. В приведенном
        выше примере это <code>0</code>, так как наш счетчик начинается с нуля. Обратите внимание, что
        в отличие от <code>this.state</code>, состояние здесь не обязательно должно быть объектом.
        Аргумент начального состояния используется только во время первой отрисовки.
    </p>
    
    <br/>
    <h3>3.12.2.1.1 Объявление множества переменных состояния</h3>
    <br/>
    
    <p>
        Вы можете использовать хук состояния более
        одного раза в одном и том же компоненте:
    </p>
    
    <ce:code-example-2/>
    
    <p>
        Синтаксис деструктуризации массива позволяет нам давать различные имена
        переменным состояния, которые мы объявили, вызывая <code>useState</code>. Данные имена
        не являются частью API <code>useState</code>. Вместо этого React предполагает, что если
        вы вызываете <code>useState</code> много раз, вы делаете это в том же порядке во время
        каждой отрисовки. Позже мы еще вернемся к тому, почему это работает, и
        когда это полезно.
    </p>
    
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    
    <%-- <c:url var="Url" value=""/> --%>
    <%--
		<ul>
			<li>
				<p>
				
				</p>
			</li>
		</ul>
		--%>
    <%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
    <%-- <code></code> --%>
    <%-- <b></b> --%>
    <%-- <code>&lt; &gt;</code> --%>
    <%-- <b><a href="${}"></a></b> --%>
    <%-- <b><a href="#"></a></b> --%>
    <%-- <a href="#"></a> --%>

</div>

<c:url var="prevPageUrl" value="create-a-new-react-app"/>
<c:url var="nextPageUrl" value="/basics/topics"/>

<app:page-navigate
    pageStartAncor="pageStart"
    prevPageUrl="${prevPageUrl}"
    nextPageUrl="${nextPageUrl}"
/>