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
  function Chat(props) {
    const users = props.users;
    <cd:hl>const userList = (</cd:hl>
      &lt;p&gt; Пользователи чата:
        {users.map((user) =&gt;
          &lt;b <cd:hl>key={user.id}</cd:hl>&gt; {user.name}; &lt;/b&gt;
        )}
      &lt;/p&gt;
    );
    <cd:hl>const messageList = props.messages.map((message) =&gt; {</cd:hl>
      let author = null;
      users.forEach((user) =&gt; {if(user.id === message.authorId) author = user});
      return (&lt;p <cd:hl>key={message.id}</cd:hl>&gt;
          &lt;b&gt;{author.name}: &lt;/b&gt;
          &lt;span&gt;{message.message}&lt;/span&gt;
        &lt;/p&gt;)
    });
    return (
      &lt;p&gt;
        <cd:hl>{userList}</cd:hl>
        <cd:hl>{messageList}</cd:hl>
      &lt;/p&gt;
    );
  }

  const users = [
    {id: 1, name: 'Вася'},
    {id: 2, name: 'Петя'},
    {id: 3, name: 'Ваня'}
  ];
  const messages = [
    {id: 1, message: 'Всем привет!', authorId: 1},
    {id: 2, message: 'И тебе привет!', authorId: 2},
    {id: 3, message: 'Привет, Вася :)', authorId: 3}
  ];

  ReactDOM.render(&lt;Chat users={users} messages={messages}/&gt;, document.getElementById('root'));</code>
    </pre>
</cd:code-example>