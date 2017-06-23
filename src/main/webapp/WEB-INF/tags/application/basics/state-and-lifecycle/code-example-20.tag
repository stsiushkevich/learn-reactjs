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
  componentDidMount() {
    fetchPermissions().then(response => {
      this.setState({
        <cd:hl>permissions: response.permissions</cd:hl>
      });
    });

    fetchUsers().then(response => {
      this.setState({
        <cd:hl>users: response.users</cd:hl>
      });
    });
  }</code>
    </pre>
</cd:code-example>