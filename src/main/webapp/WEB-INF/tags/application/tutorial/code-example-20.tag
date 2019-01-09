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
    var player = {score: 1, name: 'Jeff'};

    var newPlayer = Object.assign({}, player, {score: 2});
    // Теперь player неизменяемый, а newPlayer - {score: 2, name: 'Jeff'}

    // Или, если вы используете оператор spread для объекта, можете написать:
    // var newPlayer = {...player, score: 2};
    </code>
</pre>
</cd:code-example-decorator>