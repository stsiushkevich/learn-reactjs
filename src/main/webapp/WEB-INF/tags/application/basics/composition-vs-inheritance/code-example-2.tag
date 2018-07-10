<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  function SuccessMessage(props) {
    return (
      &lt;div className={'message message_success'}&gt;
        <cd:hl>&lt;MessageContent title={props.title}&gt;{props.children}&lt;/MessageContent&gt;</cd:hl>
      &lt;/div&gt;
    );
  }

  function MessageContent(props) {
    return (
      &lt;p className="message__content"&gt;
        &lt;h3 className="message__title"&gt;{props.title}&lt;/h3&gt;
        <cd:hl>&lt;p className="message__text"&gt;{props.children}&lt;/p&gt;</cd:hl>
      &lt;/p&gt;
    );
  }

  function App(){
    return (
      &lt;p&gt;
        <cd:hl>&lt;SuccessMessage title="Успех"&gt;Операция завершена успешно!&lt;/SuccessMessage&gt;</cd:hl>
      &lt;/p&gt;
    );
  }</code>
    </pre>
</cd:code-example-decorator>