<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  &lt;!-- ... другой HTML ... --&gt;
  &lt;!-- Загрузка React. --&gt;
  &lt;!-- Внимание: во время развертывания, замените "development.js" на "production.min.js". --&gt;
  &lt;script src="https://unpkg.com/react@16/umd/react.development.js" crossorigin&gt;&lt;/script&gt;
  &lt;script src="https://unpkg.com/react-dom@16/umd/react-dom.development.js" crossorigin&gt;&lt;/script&gt;
  
  &lt;!-- Загрузка нашего компонента React. --&gt;
  &lt;script src="like_button.js"&gt;&lt;/script&gt;
  
&lt;/body&gt;</code>
</pre>
</cd:code-example-decorator>
