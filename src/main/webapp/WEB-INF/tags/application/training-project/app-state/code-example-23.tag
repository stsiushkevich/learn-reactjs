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
  import Immutable from 'immutable'

  import InitialState from './AppointmentListInitialState'

  import { ACTION_TYPES } from '../../../lib/Constants'

  const {
      CLEAN_APPOINTMENT_LIST_ERROR,

      CLEAN_APPOINTMENT_LIST,

      CLEAN_APPOINTMENT_LIST_FILTER,
      CHANGE_APPOINTMENT_LIST_FILTER,
      CHANGE_APPOINTMENT_LIST_FILTER_FIELD,

      LOAD_APPOINTMENT_LIST_REQUEST,
      LOAD_APPOINTMENT_LIST_SUCCESS,
      LOAD_APPOINTMENT_LIST_FAILURE
  } = ACTION_TYPES

  const initialState = new InitialState()

  export default function (state = initialState, action) {

      // важный код! state может быть undefined
      if (!(state instanceof InitialState)) {
          return initialState.mergeDeep(state)
      }

      switch (action.type) {

          // сбрасываем все значения
          case CLEAN_APPOINTMENT_LIST:
              return state.clear()
                  .setIn(['shouldReload'], action.payload || false)

          // сбрасываем ошибку
          case CLEAN_APPOINTMENT_LIST_ERROR:
              return state.removeIn(['error'])

          // сбрасываем все значения фильтра
          case CLEAN_APPOINTMENT_LIST_FILTER:
              return state.getIn(['dataSource', 'f']).clear()
                          .setIn(['shouldReload'], true)

          // применяем множество значений фильтра
          case CHANGE_APPOINTMENT_LIST_FILTER: {
              const { changes, shouldReload } = action.payload

              if (changes) {
                  return state
                      .mergeIn(['dataSource', 'filter'], changes)
                      .setIn(['shouldReload'], shouldReload)
              }

              break
          }

          // изменяем одно значение фильтра
          case CHANGE_APPOINTMENT_LIST_FILTER_FIELD: {
              const { name, value, shouldReload = true } = action.payload

              return state
                  .setIn(['dataSource', 'filter', name], value)
                  .setIn(['shouldReload'], shouldReload)
          }

          // сигнализируем о том, что началась загрузка данных списка с сервера
          case LOAD_APPOINTMENT_LIST_REQUEST:
              return state
              .setIn(['error'], null)
              .setIn(['shouldReload'], false)
              .setIn(['isFetching'], true)

          // сохраняем данные, пришедшие с сервера
          case LOAD_APPOINTMENT_LIST_SUCCESS: {
              const {
                  data
              } = action.payload

              return state
                  .setIn(['isFetching'], false)
                  .setIn(['shouldReload'], false)
                  .setIn(['dataSource', 'data'], action.payload)
          }

          // сохраняем ошибку
          case LOAD_APPOINTMENT_LIST_FAILURE:
              return state
                  .setIn(['isFetching'], false)
                  .setIn(['shouldReload'], false)
                  .setIn(['error'], action.payload)
      }

      return state
  }</code>
  </pre>
</cd:code-example-decorator>