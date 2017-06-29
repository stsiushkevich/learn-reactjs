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
  function DeleteUserLink() {
    function onClick(e) {
      e.preventDefault();
      console.log('Пользователь был удален.');
    }

    return (
      &lt;a href="#" onClick={onClick}&gt;Удалить пользователя&lt;/a&gt;
    );
  }</code>
    </pre>
</cd:code-example>