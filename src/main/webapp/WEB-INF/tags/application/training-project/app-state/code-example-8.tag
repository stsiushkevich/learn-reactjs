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
          list: {
              error: null,
              isFetching: false,
              shouldReload: false,
              dataSource: {
                  data: [],
                  filter: {
                      startDate: null,
                      endDate: null,
                      clientName: '',
                      onlyMe: false
                  }
              },
              sorting: { // данные сортитровки
                  field: 'startDate',
                  order: 'asc'
              },
              pagination: { // данные пагинации
                  page: 1,
                  size: 25,
                  totalCount: 0
              }
          },
          details: { // детали приёма
              error: null,
              isFetching: false,
              shouldReload: false,
              data: null // сами данные
          },
          form: { // форма для создания/редактирования приёма
              error: null,
              isFetching: false,
              shouldReload: false,
              fields: { // поля формы
                  startDate: null,
                  endDate: null,
                  clientName: '',
                  onlyMe: false
              }
          },
          count: { // счётчик колличества (записей в таблице БД)
              error: null,
              isFetching: false,
              shouldReload: false,
              value: null
          },
          history: { // история изменений приёма (например мы несколько раз редактировали одну запись)
              // структура точно такая же как и у просто списка list
              error: null,
              isFetching: false,
              shouldReload: false,
              dataSource: {
                  data: [],
                  pagination: {
                      page: 1,
                      size: 10,
                      totalCount: 0
                  }
              }
          },
          can: { // разграничение прав
              add: { // может ли текущий пользователь добавлять запись
                  error: null,
                  isFetching: false,
                  value: null
              },
              edit: { // может ли текущий пользователь редактировать запись
                  error: null,
                  isFetching: false,
                  value: null
              },
              remove: { // может ли текущий пользователь удалять запись
                  error: null,
                  isFetching: false,
                  value: null
              }
          }
      }
  }</code>
  </pre>
</cd:code-example-decorator>