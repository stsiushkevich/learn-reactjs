<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/web-components" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<lt:layout cssClass="page hello-world-example-page">
  <wg:head size="3"><b>3.10	Веб-компоненты</b></wg:head>

  <wg:p>React и <wg:link href="https://developer.mozilla.org/en-US/docs/Web/Web_Components">Web Components</wg:link>
    созданы для решения разных проблем. Веб-компоненты
    обеспечивают надежную инкапсуляцию для повторно используемых компонентов,
    в то время как React предоставляет декларативную библиотеку, которая поддерживает
    DOM в синхронизации с вашими данными. Эти две цели являются взаимодополняющими.
    Как разработчик, вы можете использовать React в своих веб-компонентах или использовать
    веб-компоненты в React или и то и то.</wg:p>

  <wg:p>Большинство использующих React не используют веб-компоненты, но вы, возможно, захотите,
    особенно если вы используете сторонние компоненты пользовательского интерфейса, которые
    написаны с использованием веб-компонентов.</wg:p>

  <br/>
  <wg:head size="3"><b>3.10.1	Использование веб-компонентов в React</b></wg:head>

  <ce:code-example-1/>

  <app:alert title="Внимание!" type="warning">
    Веб-компоненты часто предоставляют необходимве API. Например, веб-компонент <code>video</code> может
    предоставлять функции <code>play()</code> и <code>pause()</code>. Чтобы получить доступ к необходимым API веб-компонента,
    вам нужно будет использовать ссылку для непосредственного взаимодействия с узлом DOM. Если вы
    используете сторонние веб-компоненты, лучшим решением является написание компонента React, который
    является оболочкой веб-компонента. События, эмитированные веб-компонентом, могут неправильно
    распространяться через отрисовываемое React-ом дерево. Вам нужно будет самим добавить обработчики
    для этих событий в ваши компоненты React.
  </app:alert>

  <wg:p>Существует распрастранённая путаница, заключающаяся в том, что веб-компоненты
    используют <code>class</code> вместо <code>className</code>.</wg:p>

  <ce:code-example-2/>

  <br/>
  <wg:head size="3"><b>3.10.2	Использование React в веб-компонентах</b></wg:head>

  <wg:p>Пример из официальной документации:</wg:p>

  <ce:code-example-3/>
</lt:layout>