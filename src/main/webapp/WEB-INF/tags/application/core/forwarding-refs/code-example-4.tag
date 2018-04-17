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
  class FancyButton extends React.Component {
    focus() {
      // ...
    }

    // ...
  }

  // Вместо экспортирования FancyButton, мы экспортируем LogProps.
  // Он по-прежнему будет отрисовывать FancyButton.
  <cd:hl>export default logProps(FancyButton);</code></cd:hl>
  </pre>
</cd:code-example-decorator>