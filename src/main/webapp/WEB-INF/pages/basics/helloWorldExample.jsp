<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/basics/hello-world-example" %>

<c:url var="installationUrl" value="/introduction/installation"/>

<lt:layout cssClass="page hello-world-example-page">
    <h1>2.2 Hello, World!</h1>

    <wg:p>Самый простой путь начать использовать React – это использовать <wg:link href="https://jsfiddle.net/u9a1ug3e/6/">даный пример «Hello, World!»</wg:link>.
        В этом случае нет необходимости что-либо устанавливать. Можно просто открыть этот пример в новой
        закладке и следовать вместе с примерами, приведенными ниже. Если же вы предпочитаете использовать
        локальную среду разработки, то вам следует изучить <wg:link href="${installationUrl}">главу «Установка»</wg:link>.</wg:p>

    <wg:p>Наименьший пример на React выглядит приблизительно так:</wg:p>

    <code-example:code-example-1/>

    <wg:p>Он отрисовывает заголовок на странице, выводя «Привет, мир!».</wg:p>

    <wg:p>Последующие разделы будут постепенно знакомить нас с использованием React. Мы рассмотрим
        строительные блоки приложения React: элементы и компоненты. Однажды овладев ими, вы сможете
        создавать сложные приложения из маленьких переиспользуемых частей.</wg:p>
</lt:layout>