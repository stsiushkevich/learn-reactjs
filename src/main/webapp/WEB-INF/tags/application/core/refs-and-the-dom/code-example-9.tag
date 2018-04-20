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
  function CustomTextInput(props) {
    return (
      &lt;div&gt;
        <cd:hl>&lt;input ref={props.inputRef} /&gt;</cd:hl>
      &lt;/div&gt;
    );
  }
  
  class Parent extends React.Component {
    render() {
      return (
        &lt;CustomTextInput
            <cd:hl>inputRef={el =&gt; this.inputElement = el}</cd:hl>
        /&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>