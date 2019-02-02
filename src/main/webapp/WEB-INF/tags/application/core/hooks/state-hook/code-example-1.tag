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
  import { useState } from 'react';

  function Example() {
    // Объявляем новую переменную состояния, которую назовём "count"
    const [count, setCount] = useState(0);

    return (
      &lt;div>
        &lt;p>Вы кликнули {count} раз&lt;/p>
        &lt;button onClick={() => setCount(count + 1)}>
          Кликни меня!
        &lt;/button>
      &lt;/div>
    );
  }</code>
  </pre>
</cd:code-example-decorator>