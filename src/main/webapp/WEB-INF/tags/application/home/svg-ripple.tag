<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<svg id="${id}" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"
     preserveAspectRatio="xMidYMid" class="lds-ripple ${cssClass}" style="background: none; ${style}">
	<circle cx="50" cy="50" r="4.23242" fill="none" ng-attr-stroke="{{config.c1}}"
	        ng-attr-stroke-width="{{config.width}}" stroke="#95F9FF" stroke-width="10"
	        style="animation-play-state: running; animation-delay: 0s;">
		<animate attributeName="r" calcMode="spline" values="0;47" keyTimes="0;1" dur="3.5" keySplines="0 0.2 0.8 1"
		         begin="-1.75s" repeatCount="indefinite"
		         style="animation-play-state: running; animation-delay: 0s;"></animate>
		<animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3.5"
		         keySplines="0.2 0 0.8 1" begin="-1.75s" repeatCount="indefinite"
		         style="animation-play-state: running; animation-delay: 0s;"></animate>
	</circle>
	<circle cx="50" cy="50" r="31.7322" fill="none" ng-attr-stroke="{{config.c2}}"
	        ng-attr-stroke-width="{{config.width}}" stroke="#95F9FF" stroke-width="10"
	        style="animation-play-state: running; animation-delay: 0s;">
		<animate attributeName="r" calcMode="spline" values="0;47" keyTimes="0;1" dur="3.5" keySplines="0 0.2 0.8 1"
		         begin="0s" repeatCount="indefinite"
		         style="animation-play-state: running; animation-delay: 0s;"></animate>
		<animate attributeName="opacity" calcMode="spline" values="1;0" keyTimes="0;1" dur="3.5"
		         keySplines="0.2 0 0.8 1" begin="0s" repeatCount="indefinite"
		         style="animation-play-state: running; animation-delay: 0s;"></animate>
	</circle>
</svg>