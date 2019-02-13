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
  <cd:hl>import React, { useState, useEffect } from 'react';</cd:hl>

  function Example() {
    const [count, setCount] = useState(0);
  
    <cd:hl>useEffect(() => {</cd:hl>
      <cd:hl>document.title = `You clicked \${count} times`;</cd:hl>
    <cd:hl>});</cd:hl>
  
    return (
      &lt;div>
        &lt;p>You clicked {count} times&lt;/p>
        &lt;button onClick={() => setCount(count + 1)}>
          Click me
        &lt;/button>
      &lt;/div>
    );
  }</code>
  </pre>
</cd:code-example-decorator>