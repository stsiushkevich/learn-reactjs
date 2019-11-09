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
  import React, { Component } from 'react'

  import { connect } from 'react-redux'
  import { bindActionCreators } from 'redux'

  import Action from '../../components/Action/Action'

  import * as actions from '../../redux/directory/appointment/status/list/appointmentStatusListActions'

  function mapDispatchToProps (dispatch) {
     return { actions: { ...bindActionCreators(actions, dispatch) } }
  }

  class LoadAppointmentStatusesAction extends Component {
     render () {
         return (
             &lt;Action {...this.props} action={this.props.actions.load}/&gt;
         )
     }
  }

  export default connect(null, mapDispatchToProps)(LoadAppointmentStatusesAction)</code>
  </pre>
</cd:code-example-decorator>