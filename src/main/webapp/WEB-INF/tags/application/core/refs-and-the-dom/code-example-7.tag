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
  function TextField(props) {
    return (
      &lt;div&gt;
        <cd:hl>&lt;input type="text" ref={props.textFieldRef /&gt;</cd:hl>
      &lt;/div&gt;
    );
  }

  function Parent(props) {
    return (
      &lt;div&gt;
        Текстовое поле: <cd:hl>&lt;TextField textFieldRef={props.textFieldRef /&gt;</cd:hl>
      &lt;/div&gt;
    );
  }


  class Grandparent extends React.Component {
    render() {
      return (
        &lt;Parent <cd:hl>textFieldRef={elem =&gt; this.textField = elem}</cd:hl>/&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example>