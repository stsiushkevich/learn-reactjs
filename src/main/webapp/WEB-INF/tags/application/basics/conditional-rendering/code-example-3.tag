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
  function SetFireButton(props) {
    return (&lt;button className="orange" onClick={props.onClick}&gt;Зажечь&lt;/button&gt;);
  }

  function SnuffOutButton(props) {
    return (&lt;button className="blue" onClick={props.onClick}&gt;Потушить&lt;/button&gt;);
  }</code>
    </pre>
</cd:code-example>