<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    function Avatar(props) {
      return (
        <span class="highlighted">&lt;img className="Avatar"</span>
             <span class="highlighted">src={props.user.avatarUrl}</span>
             <span class="highlighted">alt={props.user.name}/&gt;</span>
      );
    }
    </code>
</pre>