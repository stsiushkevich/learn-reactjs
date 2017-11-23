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
  function ErrorMessage(props) {
    return &lt;h3&gt;Произошла ошибка на сервере. Не удалось сохранить ваши данные.&lt;/h3&gt;;
  }

  function SuccessMessage(props) {
    return &lt;h3&gt;Ваши данные успешно сохранены!&lt;/h3&gt;;
  }</code>
    </pre>
</cd:code-example-decorator>