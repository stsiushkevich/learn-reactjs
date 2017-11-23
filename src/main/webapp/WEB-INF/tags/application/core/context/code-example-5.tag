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
  const PropTypes = require('prop-types');

  class MediaQuery extends React.Component {
    constructor(props) {
      super(props);
      this.state = {type:'desktop'};
    }

    getChildContext() {
      return {type: this.state.type};
    }

    componentDidMount() {
      const checkMediaQuery = () =&gt; {
        const type = window.matchMedia("(min-width: 1025px)").matches ? 'desktop' : 'mobile';
        if (type !== this.state.type) {
          this.setState({type});
        }
      };

      window.addEventListener('resize', checkMediaQuery);
      checkMediaQuery();
    }

    render() {
      return this.props.children;
    }
  }

  MediaQuery.childContextTypes = {
    type: PropTypes.string
  };</code>
  </pre>
</cd:code-example-decorator>