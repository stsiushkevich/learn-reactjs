<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    render() {
      let className = 'menu';
      if (this.props.isActive) {
        className += ' menu-active';
      }
      return &lt;span className={className}&gt;Menu&lt;/span&gt;
    }
    </code>
</pre>
</cd:code-example-decorator>
