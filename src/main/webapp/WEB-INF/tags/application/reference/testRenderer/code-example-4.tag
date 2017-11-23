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
  
  class MyComponent extends React.Component {
    constructor(props) {
      super(props);
      this.input = null;
    }
    componentDidMount() {
      this.input.focus();
    }
    render() {
      return &lt;input type="text" ref={el => this.input = el} /&gt;
    }
  }

  let focused = false;
  TestRenderer.create(
    &lt;MyComponent /&gt;,
    {
      createNodeMock: (element) => {
        if (element.type === 'input') {
          // mock a focus function
          return {
            focus: () => {
              focused = true;
            }
          };
        }
        return null;
      }
    }
  );
  expect(focused).toBe(true);</code>
  </pre>
</cd:code-example-decorator>