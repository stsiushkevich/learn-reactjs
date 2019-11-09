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
  {
      appointment: {
          list: { // список приёмов
              error: null, // объект ошибки при загрузке данных с сервера
              isFetching: false, // флаг-индикатор загрузки данных
              shouldReload: false, // следует ли перезагрузить данные
              dataSource: {
                  data: [], // сами данные
                  filter: { // фильтр данных
                      startDate: null,
                      endDate: null,
                      clientName: '',
                      onlyMe: false
                  }
              }
          }
      }
  }</code>
  </pre>
</cd:code-example-decorator>