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
  function User(props) {
    <cd:hl>return &lt;li&gt;{props.user.name}&lt;/li&gt;;</cd:hl>
  }

  function UserList() {
    const users = [{id: 1, name: 'Вася'}, {id: 2, name: 'Петя'}];
    return (
      &lt;ul&gt;
        <cd:hl>{users.map((user) =&gt; &lt;User key={user.id} user={user} /&gt;)}</cd:hl>
      &lt;/ul&gt;
    );
  }</code>
  </pre>
</cd:code-example>