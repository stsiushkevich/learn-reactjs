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
    function UserInfo(props) {
      return (
        <cd:hl>&lt;div className="UserInfo"&gt;</cd:hl>
          <cd:hl>&lt;Avatar user={props.user} /&gt;</cd:hl>
          <cd:hl>&lt;div className="UserInfo-name"&gt;</cd:hl>
            <cd:hl>{props.user.name}</cd:hl>
          <cd:hl>&lt;/div&gt;</cd:hl>
        <cd:hl>&lt;/div&gt;</cd:hl>
      );
    }
    </code>
</pre>
</cd:code-example-decorator>