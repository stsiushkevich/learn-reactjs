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

  const MyComponents = {
    Button: function Button(props) {
      return &lt;button className={props.color} value={props.text} onClick={props.onClick}/&gt;;
    }
  }

  function SuccessButton(props) {
    <cd:hl>return &lt;MyComponents.Button color="green" value="OK" onClick={props.onClick}/&gt;;</cd:hl>
  }</code>
  </pre>
</cd:code-example-decorator>