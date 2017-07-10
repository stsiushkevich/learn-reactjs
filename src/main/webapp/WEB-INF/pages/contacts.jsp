<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="avatarImgUrl" value="/resources/imges/pages/contacts/circle.png"/>

<lt:layout>
	<lt:layout><h2 class="text-center"><b>Контакты</b></h2></lt:layout>

	<br/>
	<lt:layout>
		<wg:img cssClass="avatar" src="${avatarImgUrl}"/>
		<lt:layout cssClass="person-info">
			<wg:link cssClass="person-info__full-name" href="https://moikrug.ru/sergeypeleng"><b>Тюшкевич Сергей</b></wg:link>
			<lt:layout cssClass="person-info__profession">
				Java front-end разработчик.
			</lt:layout>
		</lt:layout>
	</lt:layout>

	<br/>
	<lt:layout cssClass="email">
		<lt:layout cssClass="email__title"><b>e-mail:</b> </lt:layout>
		<lt:layout cssClass="email__value">warsplint@list.ru</lt:layout>
	</lt:layout>
</lt:layout>