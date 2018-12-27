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
  const OtherComponent = React.lazy(() => import('./OtherComponent'));
  const AnotherComponent = React.lazy(() => import('./AnotherComponent'));
  
  function MyComponent() {
    return (
      &lt;div&gt;
        &lt;Suspense fallback={&lt;div&gt;Loading...&lt;/div&gt;}&gt;
          &lt;section&gt;
            &lt;OtherComponent /&gt;
            &lt;AnotherComponent /&gt;
          &lt;/section&gt;
        &lt;/Suspense&gt;
      &lt;/div&gt;
        );
  }</code>
  </pre>
</cd:code-example-decorator>