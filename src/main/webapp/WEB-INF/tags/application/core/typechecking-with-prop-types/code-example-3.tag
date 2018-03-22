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
  import PropTypes from 'prop-types';

  class CustomComponent extends React.Component {
    render() {
      // Это должен быть в точности один элемент, иначе будет предупреждение
      const children = this.props.children;
      return (&lt;div&gt;{children}&lt;/div&gt;);
    }
  }

  CustomComponent.propTypes = {
    children: PropTypes.element.isRequired
  };</code>
  </pre>
</cd:code-example-decorator>