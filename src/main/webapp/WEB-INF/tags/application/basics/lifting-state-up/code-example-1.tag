<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  function SpeedDetector(props) {
    if (props.speed &gt;= props.maxSpeed) {
      return &lt;div&gt;Скорость превышена!&lt;/div&gt;;
    }
    return &lt;div&gt;Скорость не превышена.&lt;/div&gt;;
  }</code>
    </pre>
</cd:code-example>