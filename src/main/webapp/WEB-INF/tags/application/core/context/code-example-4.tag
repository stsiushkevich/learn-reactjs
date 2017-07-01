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
  const PropTypes = require('prop-types');

  const Alert = ({children}, context) =&gt;
    &lt;div className={`alert alert-\${context.type}`}&gt;
      {children}
    &lt;/div&gt;;

  Alert.contextTypes = {type: PropTypes.string};</code>
  </pre>
</cd:code-example>