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
  # Если вы используете npm
  npm install --save-dev rollup-plugin-commonjs rollup-plugin-replace rollup-plugin-uglify

  # Если вы используете Yarn
  yarn add --dev rollup-plugin-commonjs rollup-plugin-replace rollup-plugin-uglify</code>
  </pre>
</cd:code-example>