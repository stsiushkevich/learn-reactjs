<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  onAbort onCanPlay onCanPlayThrough onDurationChange onEmptied onEncrypted
  onEnded onError onLoadedData onLoadedMetadata onLoadStart onPause onPlay
  onPlaying onProgress onRateChange onSeeked onSeeking onStalled onSuspend
  onTimeUpdate onVolumeChange onWaiting</code>
  </pre>
</cd:code-example-decorator>