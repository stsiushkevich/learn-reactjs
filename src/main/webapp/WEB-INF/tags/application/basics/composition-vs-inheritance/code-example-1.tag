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
  function Message(props) {
    return (
      &lt;p className="message__content"&gt;
        &lt;h3 className="message__title"&gt;{props.title}&lt;/h3&gt;
        &lt;p className="message__text"&gt;<cd:hl>{props.children}</cd:hl>&lt;/p&gt;
      &lt;/p&gt;
    );
  }</code>
    </pre>
</cd:code-example-decorator>