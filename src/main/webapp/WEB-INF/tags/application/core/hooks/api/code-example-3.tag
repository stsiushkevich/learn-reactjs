<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  function Counter({initialCount}) {
    const [count, setCount] = useState(initialCount);
    return (
      &lt;>
        Значение счетчика: {count}
        &lt;button onClick={() => setCount(initialCount)}>Сброс&lt;/button>
        &lt;button onClick={() => setCount(prevCount => prevCount + 1)}>+&lt;/button>
        &lt;button onClick={() => setCount(prevCount => prevCount - 1)}>-&lt;/button>
      &lt;/>
    );
  }</code>
  </pre>
</cd:code-example-decorator>