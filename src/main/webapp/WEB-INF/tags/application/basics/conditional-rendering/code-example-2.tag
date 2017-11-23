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
  function Response(props) {
    const isSuccess = props.isSuccess;
    <cd:hl>if (isSuccess) {</cd:hl>
      <cd:hl>return &lt;SuccessMessage/&gt;;</cd:hl>
    <cd:hl>}</cd:hl>
    <cd:hl>return &lt;ErrorMessage/&gt;;</cd:hl>
    <cd:hl>//или</cd:hl>
    <cd:hl>//return isSuccess ? &lt;SuccessMessage/&gt; : &lt;ErrorMessage/&gt;</cd:hl>
  }
  // Можете поменять на isSuccess={false}:
  ReactDOM.render(<cd:hl>&lt;Response isSuccess={true} /&gt;</cd:hl>,  document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>