<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    function UserInfo(props) {
      return (
        &lt;div className="UserInfo"&gt;
          &lt;Avatar user={props.user} /&gt;
          &lt;div className="UserInfo-name"&gt;
            {props.user.name}
          &lt;/div&gt;
        &lt;/div&gt;
      );
    }
    </code>
</pre>