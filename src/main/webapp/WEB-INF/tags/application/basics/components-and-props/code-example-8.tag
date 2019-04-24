<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
<pre class="prettyprint">
    <code class="language-javascript">
    function Avatar(props) {
      return (
        <cd:hl>&lt;img className="Avatar"</cd:hl>
             <cd:hl>src={props.user.avatarUrl}</cd:hl>
             <cd:hl>alt={props.user.name}/&gt;</cd:hl>
      );
    }
    </code>
</pre>
</cd:code-example-decorator>