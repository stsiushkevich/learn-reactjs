<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  import React from 'react';

  <cd:hl>// Правильно! Это компонент и он должен быть записан с большой буквы:</cd:hl>
  <cd:hl>function Message(props) {</cd:hl>
    // Правильно! Использование &lt;div&gt; разрешено, так как это валидный HTML тег:
    return &lt;div&gt;{props.text}&lt;/div&gt;;
  }

  function HelloWorldMessage() {
    <cd:hl>// Правильно! React полагает, что &lt;message /&gt; - это HTML тег,</cd:hl>
    <cd:hl>// потому что записан с маленькой буквы</cd:hl>
    <cd:hl>return &lt;Message text="Hello World!" /&gt;;</cd:hl>
  }</code>
  </pre>
</cd:code-example>