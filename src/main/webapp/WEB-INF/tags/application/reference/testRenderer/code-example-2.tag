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

  function Link(props) {
    return &lt;a href={props.page}&gt;{props.children}&lt;/a&gt;;
  }

  const testRenderer = TestRenderer.create(
    &lt;Link page="https://www.facebook.com/"&gt;Facebook&lt;/Link&gt;
        );

  console.log(testRenderer.toJSON());
  // { type: 'a',
  //   props: { href: 'https://www.facebook.com/' },
  //   children: [ 'Facebook' ] }</code>
  </pre>
</cd:code-example-decorator>