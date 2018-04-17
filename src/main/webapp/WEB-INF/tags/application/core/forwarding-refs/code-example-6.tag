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
        componentDidUpdate(prevProps) {
          console.log('old props:', prevProps);
          console.log('new props:', this.props);
        }

        render() {
          <cd:hl>const {forwardedRef, ...rest} = this.props;</cd:hl>

          // Передадим пользовательское свойство "forwardedRef" как ссылку ref
          <cd:hl>return &lt;Component ref={forwardedRef} {...rest} /&gt;;</cd:hl>
        }
      }

      // Обратите внимание: второй параметр "ref" предоставлен React.forwardRef.
      // Мы можем передать его дальше в LogProps как обычное свойство, например "forwardedRef"
      // Затем ссылка может быть присоединена к Component.
      <cd:hl>return React.forwardRef((props, ref) =&gt; {</cd:hl>
         <cd:hl>return &lt;LogProps {...props} forwardedRef={ref} /&gt;;</cd:hl>
      <cd:hl>});</cd:hl>
    }</code>
  </pre>
</cd:code-example-decorator>