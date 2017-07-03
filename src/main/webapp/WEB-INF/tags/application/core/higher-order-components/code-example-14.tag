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
  function addSubscription(OriginComponent) {
    class SubscriptionSupport extends React.Component {/* ... */}
    SubscriptionSupport.displayName = `AddSubscription(\${getDisplayName(OriginComponent)})`;
    return SubscriptionSupport;
  }

  function getDisplayName(OriginComponent) {
    return OriginComponent.displayName || OriginComponent.name || 'Component';
  }</code>
  </pre>
</cd:code-example>