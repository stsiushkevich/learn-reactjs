<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/hooks/api" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page hooks-glance-page">
    <h1>3.12.7 Справка по API хуков</h1>
    
    <br/>
    
    <p class="introduction">
        Хуки доступны в версии <b>React 16.8</b>. Они позволяют использовать состояние и другие
        функции React, освобождая от необходимости писать класс.
    </p>
    
    <br/>
    
    <p>
        В данном разделе описан API для встроенных хуков React.
    </p>
    
    <c:url var="glanceUrl" value="/core/hooks/glance"/>
    <c:url var="faqUrl" value="https://reactjs.org/docs/hooks-faq.html"/>
    
    <p>
        Если вы новичок в хуках, то сначала можете ознакомиться с <b><a href="${glanceUrl}">обзором</a></b>.
        Помимо прочего вы можете найти много полезной информации в разделе
        <b><a href="${faqUrl}">часто задаваемых вопросов</a></b>.
    </p>
    
    <br/>
    
    <ul>
        <li><p><b><a href="#baseHooks">Базовые хуки</a></b></p>
            <ul>
                <li><p><b><a href="#useState">useState</a></b></p></li>
                <li><p><b><a href="#useEffect">useEffect</a></b></p></li>
                <li><p><b><a href="#useContext">useContext</a></b></p></li>
            </ul>
        </li>
        <li><p><b><a href="#additionalHooks">Дополнительные хуки</a></b></p>
            <ul>
                <li><p><b><a href="#useReducer">useReducer</a></b></p></li>
                <li><p><b><a href="#useCallback">useCallback</a></b></p></li>
                <li><p><b><a href="#useMemo">useMemo</a></b></p></li>
                <li><p><b><a href="#useRef">useRef</a></b></p></li>
                <li><p><b><a href="#useImperativeHandle">useImperativeHandle</a></b></p></li>
                <li><p><b><a href="#useLayoutEffect">useLayoutEffect</a></b></p></li>
                <li><p><b><a href="#useDebugValue">useDebugValue</a></b></p></li>
            </ul>
        </li>
    </ul>
    
    <a name="baseHooks"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.7.1 Базовые хуки</h2>
    <br/>
    
    <a name="useState"></a>
    <br/>
    <h3>3.12.7.1.1 useState</h3>
    <br/>
    
    <ce:code-example-1/>
    
    <p>Возвращает значение с состоянием и функцию для его обновления.</p>
    
    <p>
        Во время начальной отрисовки возвращаемое состояние <code>state</code> совпадает со значением <code>initialState</code>,
        передаваемым в качестве первого аргумента.
    </p>
    
    <p>
        Функция <code>setState</code> обновляет состояние. Она принимает
        новое значение состояния и ставит в очередь повторную отрисовку компонента.
    </p>
    
    <ce:code-example-2/>
    
    <p>
        Во время последующих отрисовок первое значение, которое
        возвращает useState, всегда будет самым последним состоянием, после
        того как все обновления были применены.
    </p>
    
    <app:alert title="Внимание!" type="warning">
        React гарантирует, что идентичность функции <code>setState</code> остается стабильной и неизменной
        при повторных отрисовках. Поэтому её без всяких опасений можно не указывать в списке
        зависимостей у хуков <code>useEffect</code> или <code>useCallback</code>.
    </app:alert>
    
    <br/>
    <h3>3.12.7.1.1.1 Обновления состояния в функциональной форме</h3>
    <br/>
    
    <p>
        Если для того, чтобы вычислить новое состояние, вам нужно предыдущее состояние,
        вы можете передать функцию в <code>setState</code>. Эта функция получит предыдущее значение и вернет
        обновленное значение. Вот пример компонента счетчика, который использует обе формы <code>setState</code>:
    </p>
    
    <ce:code-example-3/>
    
    <p>
        Кнопки <code>+</code> и <code>-</code> используют функциональную форму обновления состояния,
        так как обновленное значение основано на предыдущем значении. Однако кнопка «Сброс» использует
        обычную форму и всегда устанавливает <code>count</code> обратно к начальному значению.
    </p>
    
    <app:alert title="Внимание!" type="warning">
        В отличие от метода <code>setState</code>, характерного для компонентов-классов, <code>useState</code>
        не объединяет(мерджит) объекты обновления автоматически. Однако вы сами можете
        реализовать такое поведение, комбинируя функциональную форму обновления со <code>spread</code>
        синтаксисом для объекта:
        
        <br/>
        <ce:code-example-4/>
    
        Другой вариант - <code>useReducer</code>, который больше подходит для управления объектами состояния,
        содержащих множество вложенных значений.
    </app:alert>
    
    <br/>
    <h3>3.12.7.1.1.2 Ленивая установка начального состояния</h3>
    <br/>
    
    <p>
        Аргумент <code>initialState</code> - это состояние, которое будет использовано только во время начальной отрисовки.
        В последующих отрисовках он игнорируется. Если начальное состояние - это результат дорогостоящих
        вычислений, то в первый аргумент можно передать функцию, которая будет выполнена
        только при начальной отрисовке:
    </p>
    
    <ce:code-example-5/>
    
    <br/>
    <h3>3.12.7.1.1.3 Отмена обновления состояния</h3>
    <br/>
    
    <c:url var="objectIsUrl" value="https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/Object/is#Description"/>
    <p>
        Если вы обновите хук состояния тем же значением, что и текущее состояние, React
        прекратит обновление компонента и выйдет из хука. Также он не будет отрисовывать дочерние
        элементы и запускать эффекты. (React использует алгоритм сравнения <b><a href="${objectIsUrl}">Object.is</a></b>.)
    </p>
    
    <p>
        Обратите внимание на то, что библиотеке React, возможно, понадобится снова отрисовать
        определенный компонент, прежде чем прекратить его обновление. Не беспокойтесь об этом:
        React не будет излишне углубляться в дерево. Если вы выполняете дорогостоящие
        вычисления во время отрисовки, можете оптимизировать их с помощью <code>useMemo</code>.
    </p>
    
    <p></p>
    <p></p>
    <p></p>
    
    <a name="useEffect"></a>
    <br/>
    <h3>3.12.7.1.2 useEffect</h3>
    <br/>
    
    <a name="useContext"></a>
    <br/>
    <h3>3.12.7.1.3 useContext</h3>
    <br/>
    
    <a name="additionalHooks"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.7.2 Дополнительные хуки</h2>
    <br/>
    
    <a name="useReducer"></a>
    <br/>
    <h3>3.12.7.2.1 useReducer</h3>
    <br/>
    
    <a name="useCallback"></a>
    <br/>
    <h3>3.12.7.2.2 useCallback</h3>
    <br/>
    
    <a name="useMemo"></a>
    <br/>
    <h3>3.12.7.2.3 useMemo</h3>
    <br/>
    
    <a name="useRef"></a>
    <br/>
    <h3>3.12.7.2.4 useRef</h3>
    <br/>
    
    <a name="useImperativeHandle"></a>
    <br/>
    <h3>3.12.7.2.5 useImperativeHandle</h3>
    <br/>
    
    <a name="useLayoutEffect"></a>
    <br/>
    <h3>3.12.7.2.6 useLayoutEffect</h3>
    <br/>
    
    <a name="useDebugValue"></a>
    <br/>
    <h3>3.12.7.2.7 useDebugValue</h3>
    <br/>
    
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

<c:url var="prevPageUrl" value="/core/hooks/rules"/>

<app:page-navigate
    pageStartAncor="pageStart"
    prevPageUrl="${prevPageUrl}"
/>