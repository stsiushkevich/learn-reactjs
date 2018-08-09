<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  // Вызывает коллбэк потомка, чтобы создать повторяемый компонент
  function UserList(props) {
    return (
      &lt;ul&gt;
        {props.users.map((user) => <cd:hl>props.children(user)</cd:hl>)}
      &lt;/ul&gt;
    )
  }

  function UserPage() {
    const users = [{id: 1, name: 'Вася'}, {id: 2, name: 'Петя'}];
    return (
      &lt;UserList users={users}&gt;
        <cd:hl>{(user) =&gt; &lt;li key={user.id}&gt;Пользователь: {user.name}&lt;/li&gt;}</cd:hl>
      &lt;/UserList&gt;
    );
  }</code>
  </pre>
</cd:code-example-decorator>