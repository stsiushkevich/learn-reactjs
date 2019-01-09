<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    history = [
      // Перед первым ходом
      {
        squares: [
          null, null, null,
          null, null, null,
          null, null, null,
        ]
      },
      // После первого хода
      {
        squares: [
          null, null, null,
          null, 'X', null,
          null, null, null,
        ]
      },
      // После второго хода
      {
        squares: [
          null, null, null,
          null, 'X', null,
          null, null, 'O',
        ]
      },
      // ...
    ]
    </code>
</pre>
</cd:code-example-decorator>