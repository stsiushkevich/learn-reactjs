<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    // Обратите внимание: эта структура упрощена
    const element = {
      type: 'h1',
      props: {
        className: 'greeting',
        children: 'Hello, world'
      }
    };
    </code>
</pre>