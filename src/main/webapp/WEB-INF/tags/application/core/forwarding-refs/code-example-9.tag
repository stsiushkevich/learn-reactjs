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
  function logProps(Component) {
    class LogProps extends React.Component {
      // ...
    }
  
    function forwardRef(props, ref) {
      return &lt;LogProps {...props} forwardedRef={ref} /&gt;;
    }

    // Дайте этому компоненту полезное отображаемое имя name в DevTools.
    // например "ForwardRef(logProps(MyComponent))"
    <cd:hl>const name = Component.displayName || Component.name;</cd:hl>
    <cd:hl>forwardRef.displayName = `logProps(\${name})`;</cd:hl>
  
    return React.forwardRef(forwardRef);
  }</code>
  </pre>
</cd:code-example-decorator>