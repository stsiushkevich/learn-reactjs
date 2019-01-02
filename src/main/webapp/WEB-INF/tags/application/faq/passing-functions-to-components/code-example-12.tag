<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  const A = 65 // код символа ASCII
  
  class Alphabet extends React.Component {
    constructor(props) {
      super(props);
      
      this.handleClick = this.handleClick.bind(this);
      
      this.state = {
        justClicked: null,
        letters: Array.from({length: 26}, (_, i) =&gt; String.fromCharCode(A + i))
      };
    }
    
    handleClick(letter) {
      this.setState({ justClicked: letter });
    }
    
    render() {
      return (
        &lt;div&gt;
          Просто кликни: {this.state.justClicked}
          &lt;ul&gt;
            {this.state.letters.map(letter =&gt;
              &lt;li key={letter} onClick={() =&gt; this.handleClick(letter)}&gt;
                {letter}
            &lt;/li&gt;
            )}
          &lt;/ul&gt;
        &lt;/div&gt;
      )
    }
  }
    </code>
</pre>
</cd:code-example-decorator>
