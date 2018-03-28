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
  // Компонент &lt;Mouse&gt; инкапсулирует необходимое нам поведение...
  class Mouse extends React.Component {
    constructor(props) {
      super(props);
      this.handleMouseMove = this.handleMouseMove.bind(this);
      this.state = { x: 0, y: 0 };
    }
  
    handleMouseMove(event) {
      this.setState({
        x: event.clientX,
        y: event.clientY
      });
    }
  
    render() {
      return (
        &lt;div style={{ height: '100%' }} onMouseMove={this.handleMouseMove}&gt;

          {/* ...но как мы отрисуем что-то отличное от &lt;p&gt;? */}
          &lt;p&gt;Текущая позиция мыши: ({this.state.x}, {this.state.y})&lt;/p&gt;
        &lt;/div&gt;
        );
    }
  }
  
  class MouseTracker extends React.Component {
    render() {
      return (
        &lt;div&gt;
          &lt;h1&gt;Переместите мышь!&lt;/h1&gt;
          &lt;Mouse /&gt;
        &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>