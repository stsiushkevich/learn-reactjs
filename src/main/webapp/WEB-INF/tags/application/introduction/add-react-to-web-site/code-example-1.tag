<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
 &lt;!-- ... кокой-то HTML ... --&gt;

 &lt;div id="like_button_container"&gt;&lt;/div&gt;
 
 &lt;!-- ... кокой-то HTML ... --&gt;
    </code>
</pre>
</cd:code-example-decorator>
