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
  
    <cd:hl>// Похож на componentDidMount и componentDidUpdate:</cd:hl>
    <cd:hl>useEffect(() => {</cd:hl>
      <cd:hl>// Обновляем название докуммента, используя API браузера</cd:hl>
      <cd:hl>document.title = `Вы нажали \${count} раз`;</cd:hl>
    <cd:hl>});</cd:hl>
  
    return (
      &lt;div>
        &lt;p>Вы нажали {count} раз&lt;/p>
        &lt;button onClick={() => setCount(count + 1)}>
          Нажми меня
        &lt;/button>
      &lt;/div>
    );
  }</code>
  </pre>
</cd:code-example-decorator>