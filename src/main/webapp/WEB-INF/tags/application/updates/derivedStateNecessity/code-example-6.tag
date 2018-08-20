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
  class EmailInput extends Component {
      state = {
        email: this.props.defaultEmail,
        prevPropsUserID: this.props.userID
      };

      static getDerivedStateFromProps(props, state) {
        // Каждый раз, когда текущий пользователь изменяется,
        // сбрасываем необходимую часть состояния, связанную с этим пользователем.
        // В нашем примере э то email
        if (props.userID !== state.prevPropsUserID) {
          return {
            prevPropsUserID: props.userID,
            email: props.defaultEmail
          };
        }
        return null;
      }

      // ...
  }</code>
  </pre>
</cd:code-example-decorator>