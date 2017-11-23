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
  import hoistNonReactStatic from 'hoist-non-react-statics';
  function improve(OriginComponent) {
    class Improved extends React.Component {/*...*/}
    hoistNonReactStatic(Improved, OriginComponent);
    return Improved;
  }</code>
  </pre>
</cd:code-example-decorator>