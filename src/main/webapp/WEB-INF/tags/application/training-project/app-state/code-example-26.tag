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
  import InitialState from './AppointmentInitialState'

  import listReducer from './list/appointmentListReducer'

  const initialState = new InitialState()

  export default function (state = initialState, action) {
     let nextState = state

     const list = listReducer(state.list, action)
     if (list !== state.list) nextState = nextState.setIn(['list'], list)

     return nextState
  }</code>
  </pre>
</cd:code-example-decorator>