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
  import service from '../../../services/AppointmentService'

  // очистить список
  export function clean () {
      return { type: 'CLEAN_APPOINTMENT_LIST' }
  }

  // очистить ошибку
  export function cleanError () {
      return { type: 'CLEAN_APPOINTMENT_LIST_ERROR' }
  }

  // очистить фильтр
  export function cleanFilter () {
      return { type: 'CLEAN_APPOINTMENT_LIST_FILTER' }
  }

  // применить фильтр: сразу несколько полей в объекте changes
  export function changeFilter (changes, shouldReload) {
      return {
          type: 'CHANGE_APPOINTMENT_LIST_FILTER',
          payload: { changes, shouldReload }
      }
  }

  // применить фильтр: только одно поле
  export function changeFilterField (name, value, shouldReload) {
      return {
          type: 'CHANGE_APPOINTMENT_LIST_FILTER_FIELD',
          payload: { name, value, shouldReload }
      }
  }

  // загрузить данные для списка с сервера
  export function load (params) {
      return dispatch => {
          dispatch({ type: 'LOAD_APPOINTMENT_LIST_REQUEST' })

          return service.find(params).then(response => {
              dispatch({
                type: 'LOAD_APPOINTMENT_LIST_SUCCESS',
                payload: response.data
              })

              return response
          }).catch(error => {
              dispatch({ type: 'LOAD_APPOINTMENT_LIST_FAILURE', payload: error })
          })
      }
  }</code>
  </pre>
</cd:code-example-decorator>