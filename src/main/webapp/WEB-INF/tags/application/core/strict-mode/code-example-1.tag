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
  import React from 'react';

  function ExampleApplication() {
    return (
      &lt;div&gt;
        &lt;Header /&gt;
        <cd:hl>&lt;React.StrictMode&gt;</cd:hl>
          &lt;div&gt;
            &lt;ComponentOne /&gt;
            &lt;ComponentTwo /&gt;
          &lt;/div&gt;
        <cd:hl>&lt;/React.StrictMode&gt;</cd:hl>
        &lt;Footer /&gt;
      &lt;/div&gt;
    );
  }</code>
  </pre>
</cd:code-example-decorator>