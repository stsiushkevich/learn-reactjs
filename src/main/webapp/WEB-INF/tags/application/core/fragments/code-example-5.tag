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
  class Columns extends React.Component {
    render() {
      return (
        &lt;React.Fragment&gt;
          &lt;td&gt;Hello&lt;/td&gt;
          &lt;td&gt;World&lt;/td&gt;
        &lt;/React.Fragment&gt;
      );
    }
  }
  </code>
  </pre>
</cd:code-example-decorator>