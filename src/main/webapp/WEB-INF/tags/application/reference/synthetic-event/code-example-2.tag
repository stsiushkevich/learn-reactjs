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
  function onClick(event) {
    console.log(event); // => обнуляемый объект.
    console.log(event.type); // => "click"
    const eventType = event.type; // => "click"

    setTimeout(function() {
      console.log(event.type); // => null
      console.log(eventType); // => "click"
    }, 0);

    // Не будет работать. this.state.clickEvent будет иметь null
    this.setState({clickEvent: event});

    // Но вы можете сохранить свойства события
    this.setState({eventType: event.type});
  }</code>
  </pre>
</cd:code-example>