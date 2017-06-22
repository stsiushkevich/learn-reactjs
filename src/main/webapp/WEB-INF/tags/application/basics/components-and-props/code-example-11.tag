<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    function Comment(props) {
      return (
        &lt;div className="Comment"&gt;
          <span class="highlighted">&lt;UserInfo user={props.author} /&gt;</span>
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