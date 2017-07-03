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
  <cd:hl>import React from 'react';</cd:hl>
  <cd:hl>import Message from './Message';</cd:hl>

  function Warning(props) {
    <cd:hl>// return React.createElement(Message, {type: Message.DANGER, text: props.text}, null);</cd:hl>
    return &lt;Message type={Message.DANGER} text={props.text}/&gt;;
  }</code>
  </pre>
</cd:code-example>