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
  render() {
    return (
      &lt;form onSubmit={this.onSubmit}&gt;
        &lt;label&gt;Имя пользователя:
          &lt;input <cd:hl>defaultValue="Вася"</cd:hl>
            ref={(el) =&gt; this.nameTextField = el} name="name" type="text"/&gt;&lt;/label&gt;
        &lt;input type="submit" value="Submit" /&gt;
      &lt;/form&gt;
    );
  }</code>
  </pre>
</cd:code-example>