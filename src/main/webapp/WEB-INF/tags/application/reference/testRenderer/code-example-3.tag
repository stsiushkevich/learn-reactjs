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
  import TestRenderer from 'react-test-renderer';
  
  function MyComponent() {
    return (
      &lt;div&gt;
        &lt;SubComponent foo="bar" /&gt;
        &lt;p className="my"&gt;Hello&lt;/p&gt;
      &lt;/div&gt;
    )
  }
  
  function SubComponent() {
    return (
      &lt;p className="sub"&gt;Sub&lt;/p&gt;
    );
  }
  
  const testRenderer = TestRenderer.create(&lt;MyComponent /&gt;);
  const testInstance = testRenderer.root;
  
  expect(testInstance.findByType(SubComponent).props.foo).toBe('bar');
  expect(testInstance.findByProps({className: "sub"}).children).toEqual(['Sub']);</code>
  </pre>
</cd:code-example-decorator>