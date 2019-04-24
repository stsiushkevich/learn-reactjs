<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
<pre class="prettyprint">
    <code class="language-javascript">
    function Comment(props) {
      return (
        &lt;div className="Comment"&gt;
          &lt;div className="UserInfo"&gt;
            &lt;img className="Avatar"
                 src={props.author.avatarUrl}
                 alt={props.author.name}
            /&gt;
            &lt;div className="UserInfo-name"&gt;
              {props.author.name}
            &lt;/div&gt;
          &lt;/div&gt;
          &lt;div className="Comment-text"&gt;
            {props.text}
          &lt;/div&gt;
          &lt;div className="Comment-date"&gt;
            {formatDate(props.date)}
          &lt;/div&gt;
        &lt;/div&gt;
      );
    }
    </code>
</pre>
</cd:code-example-decorator>