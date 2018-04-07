<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/context" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>
<c:url var="codemodeUrl" value="https://reactjs.org/blog/2017/04/07/react-v15.5.0.html#migrating-from-react.proptypes"/>
<c:url var="newReleaseUrl" value="https://github.com/reactjs/rfcs/blob/master/text/0002-new-version-of-context.md"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>3.9 Контекст</h1>

  <wg:p>
    Контекст обеспечивает способ передачи данных через дерево компонентов
    без необходимости передавать свойства вручную на каждом уровне.
  </wg:p>

  <wg:p>
    В типичном приложении React данные передаются сверху вниз (от родителя к потомку) через
    свойства <code>props</code>. Однако это может оказаться громоздким для определенных типов свойств
    (тема UI; предпочтения, связнные с локалью), которые требуются для многих
    компонентов в приложении. Контекст предоставляет способ совместного использования таких
    значений между компонентами без необходимости явно передавать свойство через каждый уровень дерева.
  </wg:p>

  <wg:p>
    <ul>
      <li>3.9.1 Когда следует использовать контекст?</li>
      <li>3.9.2 API
        <ul>
          <li>3.9.2.1 React.createContext</li>
          <li>3.9.2.2 Provider</li>
          <li>3.9.2.3 Consumer</li>
        </ul>
      </li>
      <li>3.9.3 Примеры
        <ul>
          <li>3.9.3.1 Динамический контекст</li>
          <li>3.9.3.2 Использование контекста из вложенного компонента</li>
          <li>3.9.3.3 Потребление множества контекстов</li>
          <li>3.9.3.4 Доступ к контексту в методах жизненного цикла</li>
          <li>3.9.3.5 Потребление контекста старшим компонентом (HOC-ом)</li>
          <li>3.9.3.6 Передача ссылок ref в потребители контекста</li>
        </ul>
      </li>
      <li>3.9.4 Подводные камни</li>
      <li>3.9.5 Устаревший API</li>
    </ul>
  </wg:p>

  <br/>
  <h2>3.9.1 Когда следует использовать контекст?</h2>

  <wg:p>
    Контекст разработан для совместного использования данных, которые можно
    рассматривать «глобальными» для дерева React компонентов, например таких как
    текущий аутентифицированный пользователь, тема или предпочтительный язык. В
    приведенном ниже коде мы вручную передаем свойство «theme», чтобы стилизовать компонент <code>Button</code>:
  </wg:p>

  <ce:code-example-1/>

  <wg:p>Используя контекст, мы можем избежать передачи свойств через промежуточные элементы:</wg:p>

  <ce:code-example-2/>

  <wg:p></wg:p>
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

<c:url var="prevPageUrl" value="reconciliation"/>
<c:url var="nextPageUrl" value="portals"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>