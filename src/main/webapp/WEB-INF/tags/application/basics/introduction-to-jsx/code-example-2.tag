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
    function formatName(user) {
      return user.firstName + ' ' + user.lastName;
    }

    const user = {
      firstName: 'Harper',
      lastName: 'Perez'
    };

    // улучшаем читабельность
    <cd:hl>const element = (</cd:hl>
      <cd:hl>&lt;h1&gt;</cd:hl>
        <cd:hl>Hello, {formatName(user)}!</cd:hl>
      <cd:hl>&lt;/h1&gt;</cd:hl>
    <cd:hl>);</cd:hl>

    ReactDOM.render(
      element,
      document.getElementById('root')
    );
    </code>
</pre>
</cd:code-example-decorator>