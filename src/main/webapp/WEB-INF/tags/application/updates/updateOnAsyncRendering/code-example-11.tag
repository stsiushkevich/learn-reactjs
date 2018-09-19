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
  // После
  class ExampleComponent extends React.Component {
    // Инициализируйте состояние в конструкторе,
    // либо с помощью инициализатора свойств.
<cd:hl>    state = {
      isScrollingDown: false,
      lastRow: null,
    };</cd:hl>

<cd:hl>    static getDerivedStateFromProps(props, state) {
      if (props.currentRow !== state.lastRow) {
        return {
          isScrollingDown: props.currentRow > state.lastRow,
          lastRow: props.currentRow,
        };
      }</cd:hl>

      // Возвращает значение null, чтобы показать, что изменения состояния не было.
      return null;
    }
  }</code>
  </pre>
</cd:code-example-decorator>