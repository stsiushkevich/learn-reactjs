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
  import MyErrorBoundary from './MyErrorBoundary';
  const OtherComponent = React.lazy(() => import('./OtherComponent'));
  const AnotherComponent = React.lazy(() => import('./AnotherComponent'));
  
  const MyComponent = () => (
    &lt;div&gt;
      &lt;MyErrorBoundary&gt;
        &lt;Suspense fallback={&lt;div&gt;Loading...&lt;/div&gt;}&gt;
          &lt;section&gt;
            &lt;OtherComponent /&gt;
            &lt;AnotherComponent /&gt;
          &lt;/section&gt;
        &lt;/Suspense&gt;
      &lt;/MyErrorBoundary&gt;
    &lt;/div&gt;
   );</code>
  </pre>
</cd:code-example-decorator>