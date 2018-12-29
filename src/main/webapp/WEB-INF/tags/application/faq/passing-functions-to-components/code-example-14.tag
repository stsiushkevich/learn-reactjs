<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  import throttle from 'lodash.throttle';
  
  class LoadMoreButton extends React.Component {
    constructor(props) {
      super(props);
      this.handleClick = this.handleClick.bind(this);
      this.handleClickThrottled = throttle(this.handleClick, 1000);
    }
  
    componentWillUnmount() {
      this.handleClickThrottled.cancel();
    }
  
    render() {
      return &lt;button onClick={this.handleClickThrottled}&gt;Изучить больше&lt;/button&gt;;
    }
  
    handleClick() {
      this.props.loadMore();
    }
  }
    </code>
</pre>
</cd:code-example-decorator>
