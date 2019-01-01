<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  function MyComponent(props) {
    /* Отрисовка с использованием props */
  }
  function areEqual(prevProps, nextProps) {
    /*
      возвращает true, если передача nextProps для отрисовки
      вернет тот же результат, что и передача prevProps. В
      противном случае вернет false
    */
  }
  export default React.memo(MyComponent, areEqual);</code>
  </pre>
</cd:code-example-decorator>