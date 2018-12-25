<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="react_v16_x_RoadMapUrl" value="react-v16.x-road-map"/>
<c:url var="react_v16_6_0Url" value="react-v16.6.0"/>
<c:url var="createReactApp_2_0Url" value="create-react-app-2.0"/>
<c:url var="reactProfilerUrl" value="react-profiler"/>
<c:url var="derivedStateNecessityUrl" value="derived-state-necessity"/>
<c:url var="react_v16_4_0PointerEventsUrl" value="react-v16.4.0-pointer-events"/>
<c:url var="react_v16_3_0Url" value="react-v16.3.0"/>
<c:url var="updateOnAsyncRenderingUrl" value="update-on-async-rendering"/>
<c:url var="react_v16_2_0_fragmentsImprovedSupportUrl" value="react-v16.2.0-fragments-improved-support"/>
<c:url var="react_v16_0Url" value="react_v16_0"/>
<c:url var="domAttributesInReact16Url" value="dom-attributes-in-react-16"/>
<c:url var="errorHandlingInReact16Url" value="error-handling-in-react-16"/>

<lt:layout cssClass="menu-sidebar">
	<div class="black-line"></div>
	<nav class="menu-sidebar__nav">
		<ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_V16_X_ROAD_MAP' ? 'active' : null}">
				<a href="${react_v16_x_RoadMapUrl}">React v16.x: план дествий</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_V16_6_0' ? 'active' : null}">
				<a href="${react_v16_6_0Url}">React v16.6.0: lazy, memo и contextType</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_CREATE_REACT_APP_2_0' ? 'active' : null}">
				<a href="${createReactApp_2_0Url}">Create React App 2.0: Babel 7, Sass и другое</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_PROFILER' ? 'active' : null}">
				<a href="${reactProfilerUrl}">Представляем профайлер React</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_DERIVED_STATE_NECESSITY' ? 'active' : null}">
				<a href="${derivedStateNecessityUrl}">Возможно, вам не требуется производное состояние</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_16_4_0_POINTER_EVENTS' ? 'active' : null}">
				<a href="${react_v16_4_0PointerEventsUrl}">React v16.4.0: События указателя</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_16_3_0' ? 'active' : null}">
				<a href="${react_v16_3_0Url}">React v16.3.0: Новые методы жизненного цикла и API контекста</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_UPDATE_ON_ASYNC_RENDERING' ? 'active' : null}">
				<a href="${updateOnAsyncRenderingUrl}">Информация по асинхронной отрисовке компонентов</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_16_2_0_FRAGMENTS_IMPROVED_SUPPORT' ? 'active' : null}">
				<a href="${react_v16_2_0_fragmentsImprovedSupportUrl}">React v16.2.0: улучшенная поддержка фрагментов</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_V16_0' ? 'active' : null}">
				<a href="${react_v16_0Url}">React v16.0</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_DOM_ATTRIBUTES_IN_REACT_16' ? 'active' : null}">
				<a href="${domAttributesInReact16Url}">DOM Атрибуты в React 16</a>
			</li>
			<li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_ERROR_HANDLING_IN_REACT_16' ? 'active' : null}">
				<a href="${errorHandlingInReact16Url}">Обработка ошибок в React 16</a>
			</li>
		</ul>
	</nav>
</lt:layout>
