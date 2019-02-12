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
  <cd:hl>1:  import { useState } from 'react';</cd:hl>
  2:
  3:  function Example() {
  <cd:hl>4:    const [count, setCount] = useState(0);</cd:hl>
  5:
  6:    return (
  7:      &lt;div>
  8:        &lt;p>Вы кликнули {count} раз&lt;/p>
  <cd:hl>9:        &lt;button onClick={() => setCount(count + 1)}></cd:hl>
  10:         Кликни меня
  11:        &lt;/button>
  12:      &lt;/div>
  13:    );
  14:  }</code>
  </pre>
</cd:code-example-decorator>