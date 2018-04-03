<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    common/
      Avatar.js
      Avatar.css
      APIUtils.js
      APIUtils.test.js
    feed/
      index.js
      Feed.js
      Feed.css
      FeedStory.js
      FeedStory.test.js
      FeedAPI.js
    profile/
      index.js
      Profile.js
      ProfileHeader.js
      ProfileHeader.css
      ProfileAPI.js
    </code>
</pre>
</cd:code-example-decorator>
