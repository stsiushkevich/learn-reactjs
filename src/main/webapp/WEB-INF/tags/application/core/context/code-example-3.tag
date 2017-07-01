<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  import { BrowserRouter as Router, Route, Link } from 'react-router-dom';

  const MyApp = () =&gt; (
    &lt;Router&gt;
      &lt;div&gt;
        &lt;ul&gt;
          &lt;li&gt;&lt;Link to="/"&gt;Главная&lt;/Link&gt;&lt;/li&gt;
          &lt;li&gt;&lt;Link to="/options"&gt;Настройки&lt;/Link&gt;&lt;/li&gt;
          &lt;li&gt;&lt;Link to="/notifications"&gt;Уведомления&lt;/Link&gt;&lt;/li&gt;
          &lt;li&gt;&lt;Link to="/blog"&gt;Блог&lt;/Link&gt;&lt;/li&gt;
        &lt;/ul&gt;
        &lt;hr /&gt;
        &lt;Route exact path="/" component={Main} /&gt;
        &lt;Route path="/options" component={Options} /&gt;
        &lt;Route path="/notifications" component={Notifications} /&gt;
        &lt;Route path="/blog" component={Blog} /&gt;
      &lt;/div&gt;
    &lt;/Router&gt;
  );</code>
  </pre>
</cd:code-example>