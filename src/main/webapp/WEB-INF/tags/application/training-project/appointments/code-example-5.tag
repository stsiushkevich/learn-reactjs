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

  import cn from 'classname'
  import PropTypes from 'prop-types'
  import {Label, Input, FormGroup} from 'reactstrap'

  import './TextField.scss'

  export default class TextField extends Component {

      static propTypes = {
          type: PropTypes.oneOf(['text','textarea', 'email', 'password', 'date']),
          name: PropTypes.string,
          label: PropTypes.string,
          value: PropTypes.string,
          className: PropTypes.string,
          placeholder: PropTypes.string,
          onChange: PropTypes.func
      }

      static defaultProps = {
          type: 'text',
          value: '',
          onChange: function () {}
      }

      onChange = e => {
          const value = e.target.value
          const { name, onChange: cb } = this.props
          cb(name, value)
      }

      render () {
          const {
              type,
              name,
              label,
              value,
              className,
              placeholder
          } = this.props

          return (
              &lt;FormGroup className={cn('TextField', className)}&gt;
                  {label ? (
                      &lt;Label className='TextField-Label'&gt;
                        {label}
                      &lt;/Label&gt;
                  ) : null}
                  &lt;Input
                          type={type}
                          name={name}
                          value={value}
                          placeholder={placeholder}
                          className='TextField-Input'
                          onChange={this.onChange}
                  /&gt;
              &lt;/FormGroup&gt;
          )
      }
  }</code>
  </pre>
</cd:code-example-decorator>