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
  import React from 'react';
  <cd:hl>import {polyfill} from 'react-lifecycles-compat';</cd:hl>

  class ExampleComponent extends React.Component {
    <cd:hl>static getDerivedStateFromProps(props, state) {</cd:hl>
      // Здесь размещается ваша логика обновления состояния...
    }
  }

  // Произведите полизаполнение своего компонента
  // для работы со старыми версиями React:
  <cd:hl>polyfill(ExampleComponent);</cd:hl>

  export default ExampleComponent;</code>
  </pre>
</cd:code-example-decorator>