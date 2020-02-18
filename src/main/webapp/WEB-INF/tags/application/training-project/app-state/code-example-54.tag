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
  
  import { isFunction } from 'underscore'
  
  import { connect } from 'react-redux'
  import { bindActionCreators } from 'redux'
  
  import Action from '../components/Action/Action'
  
  export default function (actions, config = {}) {
  
      function mapDispatchToProps (dispatch) {
          return { actions: { ...bindActionCreators(actions, dispatch) } }
      }
  
      return connect(null, mapDispatchToProps)(class extends Component {
          render () {
              const {
                  params,
                  actions
              } = this.props
  
              const { action } = config
  
              if (!action) throw new Error(
                  '[CONFIGURATION]: "action" parameter is not specified'
              )
  
              if (!isFunction(action)) throw new Error(
                  '[CONFIGURATION]: "action" parameter must be a function'
              )
  
              return (
                  &lt;Action
                      {...this.props}
                      action={() => action(params, actions)}
                  /&gt;
              )
          }
      })
  }</code>
  </pre>
</cd:code-example-decorator>