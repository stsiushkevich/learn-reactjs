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
      date: 1556863200000,
      clientName: 'Должанский Николай Сергеевич',
      status: 'Завершён',
      holderName: 'Иванов Иван Иванович',
      compliences: 'Боль в правом ухе',
      diagnosis: 'Застужено правое ухо'
    },
    {
      date: 1560778200000,
      clientName: 'Пертов Пётр Генадьевич',
      status: 'Завершён',
      holderName: 'Иванов Иван Иванович',
      compliences: 'Боль в горле',
      diagnosis: 'Ангина'
    },
    {
      date: 1560256200000,
      clientName: 'Буйкевич Галина Петровна',
      status: 'Завершён',
      holderName: 'Нестеров Валерий Викторович',
      compliences: 'Головные боли',
      diagnosis: 'Мигрень'
    },
    {
      date: 1561017600000,
      clientName: 'Астафьева Ирина Михайловна',
      status: 'Завершён',
      holderName: 'Сидоров Генадий Павлович',
      compliences: 'Тошнота',
      diagnosis: 'Ротавирус'
    }
  ]</code>
  </pre>
</cd:code-example-decorator>