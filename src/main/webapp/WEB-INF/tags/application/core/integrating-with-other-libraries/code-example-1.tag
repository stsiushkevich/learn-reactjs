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
  // применим плагин "modal"
  class Modal extends React.Component {
    componentDidMount() {
      <cd:hl>this.$element = $(this.element);</cd:hl>
    // установить плагин
      <cd:hl>this.$element.modal();</cd:hl>
    }

    componentWillUnmount() {
    // удалить плагин
      <cd:hl>this.$element.modal('destroy');</cd:hl>
    }

    render() {
      <cd:hl>return &lt;div ref={element =&gt; this.element = element} /&gt;;</cd:hl>
    }
  }</code>
  </pre>
</cd:code-example-decorator>