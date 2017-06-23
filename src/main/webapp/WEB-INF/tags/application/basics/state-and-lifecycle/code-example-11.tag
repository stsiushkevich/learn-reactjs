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
  componentDidMount() {
     <cd:hl>this.timerID = setInterval(() => this.increment(), 1000/INTERVAL);</cd:hl>
  }</code>
    </pre>
</cd:code-example>