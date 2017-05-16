<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    import React from 'react';
    import ReactDOM from 'react-dom';

    ReactDOM.render(
      &lt;h1&gt;Hello, world!&lt;/h1&gt;,
      document.getElementById('root')
    );
    </code>
</pre>