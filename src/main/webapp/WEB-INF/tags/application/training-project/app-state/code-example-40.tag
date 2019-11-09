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
  import InitialState from './AppointmentStatusListInitialState'

  import { ACTION_TYPES } from '../../../../../lib/Constants'

  const {
      CLEAR_APPOINTMENT_STATUS_LIST,
      CLEAR_APPOINTMENT_STATUS_LIST_ERROR,
      LOAD_APPOINTMENT_STATUS_LIST_REQUEST,
      LOAD_APPOINTMENT_STATUS_LIST_SUCCESS,
      LOAD_APPOINTMENT_STATUS_LIST_FAILURE
  } = ACTION_TYPES

  const initialState = new InitialState()

  export default function appointmentStatusListReducer (state = initialState, action) {
      if (!(state instanceof InitialState)) {
          return initialState.mergeDeep(state)
      }

      switch (action.type) {
          case CLEAR_APPOINTMENT_STATUS_LIST:
              return state.clear()

          case CLEAR_APPOINTMENT_STATUS_LIST_ERROR:
              return state.removeIn(['error'])

          case LOAD_APPOINTMENT_STATUS_LIST_REQUEST:
              return state.removeIn(['error'])
                          .setIn(['isFetching'], true)

          case LOAD_APPOINTMENT_STATUS_LIST_SUCCESS: {
              const { data } = action.payload

              return state
                  .setIn(['isFetching'], false)
                  .setIn(['dataSource','data'], data)
          }

          case LOAD_APPOINTMENT_STATUS_LIST_FAILURE:
              return state
                  .setIn(['isFetching'], false)
                  .setIn(['error'], action.payload)
      }

      return state
  }</code>
  </pre>
</cd:code-example-decorator>