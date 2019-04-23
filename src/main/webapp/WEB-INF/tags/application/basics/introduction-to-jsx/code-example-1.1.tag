<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    <cd:hl>const name = 'Вася Пупкин';</cd:hl>
    <cd:hl>const element = &lt;h1>Привет, {name}&lt;/h1>;</cd:hl>

    ReactDOM.render(
      element,
      document.getElementById('root')
    );
    </code>
</pre>
</cd:code-example-decorator>