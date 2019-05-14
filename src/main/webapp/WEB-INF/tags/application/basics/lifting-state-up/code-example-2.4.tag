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
    // отдельная функция для валидации скорости
    function isValidSpeed(value){
      if(value !== null && value !== '' && value !== undefined){
        let intValue = parseInt(value);
        return !(isNaN(intValue) || !isFinite(intValue));
      }
      return false
    }

    function convertSpeed(value, convertor) {
      if(isValidSpeed(value)){
        const intValue = parseInt(value)
        let converted = convertor(intValue);
        let rounded = Math.round(converted * 100) / 100
        return rounded.toString()
      }
      return '';
    }</code>
    </pre>
</cd:code-example-decorator>