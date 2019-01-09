<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    class Square extends React.Component {
      constructor(props) {
        super(props);
        this.state = {
          value: null,
        };
      }
    
      render() {
        return (
          &lt;button
             <cd:hl>className="square"</cd:hl>
             <cd:hl>onClick={() => this.setState({value: 'X'})}</cd:hl>
          <cd:hl>></cd:hl>
            <cd:hl>{this.state.value}</cd:hl>
          &lt;/button>
        );
      }
    }
    </code>
</pre>
</cd:code-example-decorator>