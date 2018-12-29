<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  class Foo extends Component {
    handleClick() {
      console.log('Click happened');
    }
    
    render() {
      return &lt;button onClick={() =&gt; this.handleClick()}&gt;Click Me&lt;/button&gt;;
    }
  }
    </code>
</pre>
</cd:code-example-decorator>
