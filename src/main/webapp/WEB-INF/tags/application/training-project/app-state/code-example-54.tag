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

  import Action from '../components/Action/Action'

  export default function (actions) {

    function mapDispatchToProps (dispatch) {
      return { actions: { ...bindActionCreators(actions, dispatch) } }
    }

    return connect(null, mapDispatchToProps)(class extends Component {
      render () {
          return (
              &lt;Action {...this.props} action={this.props.actions.load}/&gt;
          )
      }
    })
  }</code>
  </pre>
</cd:code-example-decorator>