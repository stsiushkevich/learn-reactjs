<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/introduction/installation" %>

<lt:layout cssClass="page instalation-page">
    <wg:head size="3"><strong>Установка</strong></wg:head>
    <br/>
    <wg:head size="4"><strong>Попробовать React</strong></wg:head>
    <wg:p>
        Если вы просто хотите побаловаться с <strong>React</strong>, можно использовать
        <wg:link href="https://jsfiddle.net"><strong>JSFiddle</strong>.</wg:link> Попробуйте начать с традиционного
        примера <strong><wg:link href="https://jsfiddle.net/stzidane/u9a1ug3e/5/">Привет, мир!</wg:link></strong>
    </wg:p>
    <wg:p>
        Если вы хотите использовать <strong>React</strong> для полноценного приложения, то переходите к изучению
        следующих разделов <strong>«Создание приложения на React»</strong> и <strong>«Добавление React в существующее
        приложение»</strong>.
    </wg:p>
    <br/>
    <wg:head size="4"><strong>Создание приложения на React</strong></wg:head>
    <wg:p>
        На гитхабе есть пример создания <strong>React</strong> приложения. Это лучший путь для начала построения нового
        одностраничного <strong>React</strong> приложения. Использование этого примера позволит настроить вашу среду разработки,
        так что вы сможете использовать самые последние возможности JavaSript. Кроме того данный пример предоставляет хороший
        опыт профессиональной разработки и оптимизирует ваше приложение для продакшена.
    </wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-1/>
    </wg:p>
    <wg:p>
        Данный пример не работает с бэк-энд логикой или базой данных. Он просто создает начальный фронт-энд каркасс. Так что мы можем
        использовать его с любой бэк-энд логикой, которая необходима. Данный пример использует инструменты билда, такие как
        <strong>Babel</strong> и <strong>webpack</strong>, но работает с нулевой конфигурацией. Ее необходимо будет исправить под
        нужды вашего проекта.
    </wg:p>
    <wg:p>
        Когда ваше приложение готово для разворачивания на продакшене, нужно запустить команду <code>npm run build</code>. Она создаст
        оптимизированый билд вашего приложения в папке <strong>build</strong>. Больше информации можно получить
        по ссылкам
        <wg:link href="https://github.com/facebookincubator/create-react-app#create-react-app-"><strong>Create React App</strong></wg:link>
        и
        <wg:link href="https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md#table-of-contents"><strong>User Guide</strong></wg:link>.
    </wg:p>
</lt:layout>