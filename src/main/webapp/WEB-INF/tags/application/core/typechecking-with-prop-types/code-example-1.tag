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
  import PropTypes from 'prop-types';

  class HelloWorld extends React.Component {
    render() {
      return (
        &lt;h1&gt;Привет, {this.props.name}&lt;/h1&gt;
      );
    }
  }

  Greeting.propTypes = {
    name: PropTypes.string
  };</code>
  </pre>
</cd:code-example>