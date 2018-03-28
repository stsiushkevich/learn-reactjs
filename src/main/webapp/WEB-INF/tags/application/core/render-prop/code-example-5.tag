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
  class Cat extends React.Component {
    render() {
      const mouse = this.props.mouse;
      return (
        &lt;img src="/cat.jpg" style={{ position: 'absolute', left: mouse.x, top: mouse.y }} /&gt;
      );
    }
  }
  
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

          {/*
            Вместо задания статического представления того, что должен отрисовывать &lt;Mouse&gt;,
            используйте свойство 'render' чтобы  определять это представление динамически.
          */}
          {this.props.render(this.state)}
        &lt;/div&gt;
        );
    }
  }
  
  class MouseTracker extends React.Component {
    render() {
      return (
        &lt;div&gt;
          &lt;h1&gt;Move the mouse around!&lt;/h1&gt;
          &lt;Mouse render={mouse =&gt; (
            &lt;Cat mouse={mouse} /&gt;
          )}/&gt;
        &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>