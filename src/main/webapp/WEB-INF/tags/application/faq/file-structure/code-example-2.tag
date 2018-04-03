<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    api/
      APIUtils.js
      APIUtils.test.js
      ProfileAPI.js
      UserAPI.js
    components/
      Avatar.js
      Avatar.css
      Feed.js
      Feed.css
      FeedStory.js
      FeedStory.test.js
      Profile.js
      ProfileHeader.js
      ProfileHeader.css
    </code>
</pre>
</cd:code-example-decorator>
