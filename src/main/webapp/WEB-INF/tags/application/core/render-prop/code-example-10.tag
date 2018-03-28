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
  class Mouse extends React.PureComponent {
    // Та же реализация, что и выше...
  }
  
  class MouseTracker extends React.Component {
    render() {
      return (
        &lt;div&gt;
          &lt;h1&gt;Переместите мышь!&lt;/h1&gt;

          {/*
            Это плохо! Значение свойства 'render' будет
            отличаться на каждой стадии отрисовки.
          */}
          &lt;Mouse render={mouse =&gt; (
            &lt;Cat mouse={mouse} /&gt;
          )}/&gt;
        &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>