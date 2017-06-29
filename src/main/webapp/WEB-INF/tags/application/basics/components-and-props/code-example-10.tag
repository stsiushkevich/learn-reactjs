<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    function UserInfo(props) {
      return (
        <span class="highlighted">&lt;div className="UserInfo"&gt;</span>
          <span class="highlighted">&lt;Avatar user={props.user} /&gt;</span>
          <span class="highlighted">&lt;div className="UserInfo-name"&gt;</span>
            <span class="highlighted">{props.user.name}</span>
          <span class="highlighted">&lt;/div&gt;</span>
        <span class="highlighted">&lt;/div&gt;</span>
      );
    }
    </code>
</pre>