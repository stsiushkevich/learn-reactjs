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
  var SetIntervalMixin = {
    componentWillMount: function() {
      this.intervals = [];
    },
    setInterval: function() {
      this.intervals.push(setInterval.apply(null, arguments));
    },
    componentWillUnmount: function() {
      this.intervals.forEach(clearInterval);
    }
  };

  var createReactClass = require('create-react-class');

  var Timer = createReactClass({
    <cd:hl>mixins: [SetIntervalMixin], // Использовать миксин</cd:hl>
    getInitialState: function() {
      return {value: 0};
    },
    componentDidMount: function() {
      <cd:hl>this.setInterval(this.increment, 1000); // Вызвать метод миксина</cd:hl>
    },
    increment: function() {
      this.setState({value: this.state.value + 1});
    },
    render: function() {
      return (&lt;h1&gt;Значение: {this.state.value} секунд.&lt;/h1&gt;);
    }
  });

  ReactDOM.render(&lt;Timer /&gt;,  document.getElementById('root'));</code>
  </pre>
</cd:code-example>