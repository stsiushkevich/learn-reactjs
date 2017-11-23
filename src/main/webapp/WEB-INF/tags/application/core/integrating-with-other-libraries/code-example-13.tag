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
  class Button extends React.Component {
    componentDidMount(){
      $('#okButton').on('click', this.onClick);
    }

    componentWillUnmount(){
      $('#okButton').off('click', this.onClick);
    }

    onClick(){
      alert('Hello!');
    }

    render(){
      return &lt;button id="okButton" className="btn btn-success"&gt;ОК&lt;/button&gt;;
    }
  }

  ReactDOM.render(&lt;Button /&gt;, document.getElementById('root'));</code>
  </pre>
</cd:code-example-decorator>