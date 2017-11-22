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
  import 'core-js/es6/map';
  import 'core-js/es6/set';

  import React from 'react';
  import ReactDOM from 'react-dom';

  ReactDOM.render(
    &lt;h1&gt;Hello, world!&lt;/h1&gt;,
    document.getElementById('root')
  );</code>
  </pre>
</cd:code-example>