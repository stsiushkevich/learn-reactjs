<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  const users = [{id: 1, name: 'Вася'},
                 {id: 2, name: 'Петя'},
                 {id: 3, name: 'Максим'},
                 {id: 4, name: 'Егор'}];

  function UserItem(props){
    const user = props.user
    //Правильно! Здесь не нужно указывать ключ:
    return (<cd:hl>&lt;li&gt;{user.name}&lt;/li&gt;</cd:hl>)
  }

  function UserList(props){
    const users = props.users;
    const items = users.map((user) =&gt; {
      //Правильно! Здесь должен быть указан ключ:
      return &lt;UserItem <cd:hl>key={user.id}</cd:hl> user={user}/&gt;;
    });
    return (&lt;ul&gt;{items}&lt;/ul&gt;);
  }

  ReactDOM.render(&lt;UserList users={users}/&gt;, document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>