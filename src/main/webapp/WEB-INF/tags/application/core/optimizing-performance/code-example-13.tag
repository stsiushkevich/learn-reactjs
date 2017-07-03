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
  class UserList extends React.PureComponent {
    render() { return (&lt;h3&gt;{this.props.users.join(',')}&lt;/h3&gt;); }
  }

  class UserAdmin extends React.Component {
    constructor(props) {
      super(props);
      this.state = {users: ['Пользователь 1']};
      this.onAddUser = this.onAddUser.bind(this);
    }

    onAddUser() {
      // Данная секция содержит плохой код и приводит к багам
      const users = this.state.users;
      users.push(`Пользователь ${users.length}`);
      this.setState({users: users});
    }

    render() {
      return (
        &lt;p&gt;
          &lt;button onClick={this.onAddUser} value="Добавить пользователя"/&gt;
          &lt;UserList users={this.state.users} /&gt;
        &lt;/p&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example>