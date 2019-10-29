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
  export const appointments = [
     {
       date: 1560422694514,
       clientName: 'Должанский Николай Сергеевич',
       status: 'Завершён',
       holderName: 'Иванов Иван Иванович',
       compliences: 'Боль в правом ухе',
       diagnosis: 'Застужено правое ухо'
     },
     {
       date: 1560422694514,
       clientName: 'Пертов Пётр Генадьевич',
       status: 'Завершён',
       holderName: 'Иванов Иван Иванович',
       compliences: 'Боль в горле',
       diagnosis: 'Ангина'
     }
  ]</code>
  </pre>
</cd:code-example-decorator>