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
 cd my-app
 cd src

 # Если вы используете Mac или Linux:
 rm -f *

 # Или, если вы на Windows:
 del *

 # Затем переключитесь обратно на папку проекта
 cd ..
    </code>
</pre>
</cd:code-example-decorator>