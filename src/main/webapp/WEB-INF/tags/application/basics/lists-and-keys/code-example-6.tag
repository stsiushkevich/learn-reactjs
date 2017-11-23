<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  <cd:hl>function getKey(str){</cd:hl>
    let key = 0;
    for (let i = 0; i &lt; str.length; i++) {
      key += str.charCodeAt(i);
    }
    return key.toString();
   }

  const users = ['Вася', 'Петя', 'Максим', 'Егор'];
  const items = users.map((user) =&gt; {
    <cd:hl>const key = getKey(user)</cd:hl>
    <cd:hl>return &lt;li key={key}&gt;{user}&lt;/li&gt;;</cd:hl>
  });</code>
    </pre>
</cd:code-example-decorator>