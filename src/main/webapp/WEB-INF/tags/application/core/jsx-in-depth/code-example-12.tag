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
  function NumberDescriber(props) {
    let description;
    <cd:hl>if (props.number % 2 == 0) {</cd:hl>
      <cd:hl>description = &lt;strong&gt;even&lt;/strong&gt;;</cd:hl>
    <cd:hl>} else {</cd:hl>
      <cd:hl>description = &lt;i&gt;odd&lt;/i&gt;;</cd:hl>
    <cd:hl>}</cd:hl>
    return &lt;div&gt;{props.number} - это {description} число&lt;/div&gt;;
  }</code>
  </pre>
</cd:code-example>