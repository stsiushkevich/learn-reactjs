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
  // Вызывает коллбэк потомка, чтобы создать повторяемый компонент
  function UserList(props) {
    let users = [];
    <cd:hl>for (let i = 0; i &lt; props.users.length; i++) {</cd:hl>
      items.push(props.children(i));
    }
    return &lt;ul&gt;{users}&lt;/ul&gt;;
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
</cd:code-example>