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
  const Button = props =&gt; {
    const { type, ...other } = props;
    const className = type === "primary" ? "PrimaryButton" : "SecondaryButton";
    return &lt;button className={className} {...other} /&gt;;
  };
  
  const App = () =&gt; {
    return (
      &lt;div&gt;
        &lt;Button type="primary" onClick={() =&gt; console.log("Нажато!")}&gt;
          Hello World!
        &lt;/Button&gt;
      &lt;/div&gt;
    );
  };</code>
  </pre>
</cd:code-example-decorator>