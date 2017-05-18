<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    function Avatar(props) {
      return (
        &lt;img className="Avatar"
             src={props.user.avatarUrl}
             alt={props.user.name}
        /&gt;
      );
    }
    </code>
</pre>