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

  import PropTypes from 'prop-types'

  const MOUNTING_PHASE = 'mounting'
  const UNMOUNTING_PHASE = 'unmounting'

  export default class Action extends Component {
      static propTypes = {
          action: PropTypes.func,
          params: PropTypes.object,
          onPerformed: PropTypes.func,
          shouldPerform: PropTypes.func,
          isMultiple: PropTypes.bool,
          performingPhase: PropTypes.oneOf([MOUNTING_PHASE, UNMOUNTING_PHASE])
      }

      static defaultProps = {
          action: () => {},
          isMultiple: false,
          onPerformed: () => {},
          shouldPerform: () => true,
          performingPhase: MOUNTING_PHASE
      }

      state = {
          count: 0
      }

      componentDidMount () {
          const { params, performingPhase } = this.props

          if (performingPhase === MOUNTING_PHASE && this.shouldPerform(params)) {
              this.perform().then(this.onPerformed)
          }
      }

      componentDidUpdate(prevProps) {
          const { count } = this.state
          const { isMultiple } = this.props

          if ((!count || isMultiple) && this.shouldPerform(prevProps.params)) {
              this.perform().then(this.onPerformed)
          }
      }

      componentWillUnmount() {
          const { params, performingPhase } = this.props

          if (performingPhase === UNMOUNTING_PHASE && this.shouldPerform(params)) {
              this.perform().then(this.onPerformed)
          }
      }

      onPerformed = result => {
          this.props.onPerformed(result)
      }

      shouldPerform (prevParams) {
          return this.props.shouldPerform(prevParams)
      }

      perform () {
          this.increaseCount()
          return new Promise(resolve => {
              resolve(this.props.action())
          })
      }

      increaseCount () {
          this.setState(s => ({ count: s.count + 1 }))
      }

      render () { return null }
  }</code>
  </pre>
</cd:code-example-decorator>