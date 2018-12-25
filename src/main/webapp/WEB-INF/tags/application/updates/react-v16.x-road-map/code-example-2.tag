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
  function Example() {
    // Объявление новой переменной состояния, которую мы назовем "count"
    const [count, setCount] = useState(0);
  
    return (
     &lt;div&gt;
       &lt;p&gt;You clicked {count} times&lt;/p&gt;
       &lt;button onClick={() =&gt; setCount(count + 1)}&gt;
         Click me
       &lt;/button&gt;
     &lt;/div&gt;
   );
  }</code>
  </pre>
</cd:code-example-decorator>