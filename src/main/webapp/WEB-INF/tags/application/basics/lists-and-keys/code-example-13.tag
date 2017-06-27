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
  function UserList(props){
    const users = props.users;
    const <cd:hl>items</cd:hl> = users.map((user) =&gt; {
      return &lt;UserItem user={user}/&gt;;
    });
    return (&lt;ul&gt;{items}&lt;/ul&gt;);
  }</code>
    </pre>
</cd:code-example>