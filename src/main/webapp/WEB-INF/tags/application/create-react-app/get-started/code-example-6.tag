<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator title="no" codePenUrl="${codePenUrl}">
  <pre class="prettyprint" style="border-radius: 4px">
    <code class="language-javascript">
  my-app
  ├── README.md
  ├── node_modules
  ├── package.json
  ├── .gitignore
  ├── public
  │   ├── favicon.ico
  │   ├── index.html
  │   └── manifest.json
  └── src
      ├── App.css
      ├── App.js
      ├── App.test.js
      ├── index.css
      ├── index.js
      ├── logo.svg
      └── serviceWorker.js</code>
  </pre>
</cd:code-example-decorator>