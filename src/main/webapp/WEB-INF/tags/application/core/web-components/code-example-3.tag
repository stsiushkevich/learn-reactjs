<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  const proto = Object.create(HTMLElement.prototype, {
    attachedCallback: {
      value: function() {
        const mountPoint = document.createElement('span');
        this.createShadowRoot().appendChild(mountPoint);

        const name = this.getAttribute('name');
        const url = 'https://www.google.com/search?q=' + encodeURIComponent(name);
        ReactDOM.render(&lt;a href={url}&gt;{name}&lt;/a&gt;, mountPoint);
      }
    }
  });
  document.registerElement('x-search', {prototype: proto});</code>
  </pre>
</cd:code-example>