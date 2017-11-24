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
  &lt;div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable ui-resizable"&gt;
     &lt;div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"&gt;
        &lt;span id="ui-dialog-title-dialog" class="ui-dialog-title"&gt;Заголовок&lt;/span&gt;
        &lt;a class="ui-dialog-titlebar-close ui-corner-all" href="#"&gt;&lt;span class="ui-icon ui-icon-closethick"&gt;close&lt;/span&gt;&lt;/a&gt;
     &lt;/div&gt;
     &lt;div style="height: 200px; min-height: 109px; width: auto;" class="ui-dialog-content ui-widget-content" id="dialog"&gt;
        &lt;p&gt;Содержимое диалогового окна.&lt;/p&gt;
     &lt;/div&gt;
  &lt;/div&gt;</code>
  </pre>
</cd:code-example-decorator>