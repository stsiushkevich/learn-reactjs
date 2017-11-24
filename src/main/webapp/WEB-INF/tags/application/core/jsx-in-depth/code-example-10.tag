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
  import React from 'react';
  import { Image, Video } from './media';

  const components = {
    image: Image,
    video: Video
  };

  function Media(props) {
    <cd:hl>// Правильно! JSX-тип может являться переменной, названной с большой буквы</cd:hl>
    <cd:hl>const MediaObject = components[props.storyType];</cd:hl>
    <cd:hl>return &lt;MediaObject url={props.url} /&gt;;</cd:hl>
  }</code>
  </pre>
</cd:code-example-decorator>