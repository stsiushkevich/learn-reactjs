<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/typechecking-with-prop-types" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>3.2 Проверка типов с PropTypes</h1>

  <lt:layout cssClass="alert alert-warning">
    <b>Внимание! React.PropTypes</b> является устаревшим начиная с <b>React v15.5.</b>
    Пожалуйста,  вместо этого используйте
    <wg:link href="https://www.npmjs.com/package/prop-types">prop-types</wg:link> библиотеку
  </lt:layout>

  <wg:p>С ростом вашего приложения, вы можете получить много багов с проверками типов.
    Для некоторых приложений вы можете использовать JavaScript расширения, такие как
    <wg:link href="https://flow.org/">Flow</wg:link> или
    <wg:link href="https://www.typescriptlang.org/">TypeScript</wg:link>, чтобы проверять типы во всем вашем приложении. Но даже если
    вы их не используете, React имеет несколько встроенных возможностей по проверке типов.
    Чтобы запустить проверку типов для свойств компонента, вы можете назначить специальное
    свойство <code>propTypes</code>:</wg:p>

  <ce:code-example-1/>

  <wg:p>
    <code>PropTypes</code> экспортирует множество валидаторов, которые могут использоваться,
    чтобы убедиться, что данные, которые вы получаете, являются валидными.
    В данном примере мы используем <code>PropTypes.string</code>. Когда свойству предоставляется
    не валидное значение, будет показано предупреждение в JavaScript консоли.
    По соображениям производительности, <code>propTypes</code> работает только в режиме разработки.
  </wg:p>

  <br/>
  <h2>3.2 PropTypes</h2>

  <wg:p>Здесь показан пример, который отображает различные предоставленные валидаторы:</wg:p>

  <ce:code-example-2/>

  <br/>
  <h2>3.2.2 Необходимость единственного потомка</h2>

  <wg:p>Используя <code>PropTypes.element</code> вы можете указать, что только один потомок
    может быть передан в компонент как <code>children</code>.</wg:p>

  <ce:code-example-3/>

  <br/>
  <h2>3.2.2 Необходимость единственного потомка</h2>

  <wg:p>Вы можете определять значения по умолчанию для ваших свойств,
    используя специальное свойство <code>defaultProps</code>:</wg:p>

  <ce:code-example-4/>

  <wg:p>Свойство <code>defaultProps</code> будет использовано, чтобы гарантировать, что
    <code>this.props.name</code>, будет иметь значение, если оно не было указано родительским
    компонентом. Проверка типов <code>propTypes</code> происходит после отработки <code>defaultProps</code>,
    поэтому проверка типов будет также применена и к <code>defaultProps</code>.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="jsx-in-depth"/>
<c:url var="nextPageUrl" value="refs-and-the-dom"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>