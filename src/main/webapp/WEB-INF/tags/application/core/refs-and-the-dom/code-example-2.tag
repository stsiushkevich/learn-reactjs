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
  class AutoFocusTextField extends React.Component {
    componentDidMount() {
      <cd:hl>this.textField.focus();</cd:hl>
    }

    render() {
      return (
        &lt;MyTextField <cd:hl>ref={(field) =&gt; { this.textField = field; }}</cd:hl> /&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example>