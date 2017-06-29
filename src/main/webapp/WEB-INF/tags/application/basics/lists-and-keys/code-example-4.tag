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
  const users = ['Вася', 'Петя', 'Максим', 'Егор'];

  function UserList(props){
    const users = props.users;
    <cd:hl>const items = users.map((user) =&gt; &lt;li&gt;{user}&lt;/li&gt;);</cd:hl>
    <cd:hl>return (&lt;ul&gt;{items}&lt;/ul&gt;)</cd:hl>
  }

  ReactDOM.render(<cd:hl>&lt;UserList users={users}/&gt;</cd:hl>, document.getElementById('root'));</code>
    </pre>
</cd:code-example>