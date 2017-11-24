<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  const INTERVAL = 90;

  class Timer extends React.Component {
    constructor(props) {
      super(props);
      this.state = {value: 0};
    }

    increment(){
      <cd:hl>this.setState({value: this.state.value + 1});</cd:hl>
    }

    componentDidMount() {
      this.timerID = setInterval(() =&gt; this.increment(), 1000/INTERVAL);
    }

    componentWillUnmount() {
      clearInterval(this.timerID);
    }

    render() {
      const value = this.state.value
      return (&lt;div&gt;
        &lt;p&gt;Таймер:&lt;/p&gt;
        &lt;p&gt;
          &lt;span&gt;{Math.round(value/INTERVAL/60/60)} : &lt;/span&gt;
          &lt;span&gt;{Math.round(value/INTERVAL/60)} : &lt;/span&gt;
          &lt;span&gt;{Math.round(value/INTERVAL)} . &lt;/span&gt;
          &lt;span&gt;{value % INTERVAL}&lt;/span&gt;
        &lt;/p&gt;
      &lt;/div&gt;);
    }
  }
  ReactDOM.render(&lt;Timer/&gt;, document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>