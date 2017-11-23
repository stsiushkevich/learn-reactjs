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
  <cd:hl>function MessageBox(props) {</cd:hl>
    return &lt;p&gt;{props.message}&lt;/p&gt;;
  }

  class UserPage extends React.Component {
    render() {
      <cd:hl>// Это не работает!</cd:hl>
      return (
        &lt;MessageBox message={'Важное сообщение!'} ref={(box) =&gt; { this.messageBox = box; }} /&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>