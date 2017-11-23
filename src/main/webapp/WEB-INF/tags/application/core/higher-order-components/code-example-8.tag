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
  render() {
    // Отфильтруйте специфические свойства старшего компонента, которые не должны быть переданы
    const { specificProp1, specificProp2, ...propsToPass } = this.props;

    // Свойства, которые вставляются в исходный компонент.
    // Это могут быть значения состояния или методы экземпляра
    const someProp = someStateOrInstanceMethod;
    // Передайте свойства в исходный компонент
    return (&lt;TargetComponent someProp={someProp} {...propsToPass}/&gt;);
  }</code>
  </pre>
</cd:code-example-decorator>