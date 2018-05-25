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
  static getDerivedStateFromProps(props, state) {
    const prevProps = state.prevProps;
    // Сравнение входящего свойства с предыдущим
    const controlledValue =
      prevProps.value !== props.value
        ? props.value
        : state.controlledValue;
    return {
      // Сохранение предыдущих свойств в состояние
      prevProps: props,
      controlledValue,
    };
  }</code>
  </pre>
</cd:code-example-decorator>