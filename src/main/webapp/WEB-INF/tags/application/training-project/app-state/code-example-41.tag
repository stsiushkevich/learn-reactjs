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

  import { map } from 'underscore'

  import cn from 'classnames'
  import PropTypes from 'prop-types'
  import {Label, Input, FormGroup} from 'reactstrap'

  import './SelectField.scss'

  /**
   * options = [{ value, text }]
   */

  export default class SelectField extends Component {

      static propTypes = {
          name: PropTypes.string,
          label: PropTypes.string,
          value: PropTypes.string,
          options: PropTypes.array,
          isMultiple: PropTypes.bool,
          className: PropTypes.string,
          placeholder: PropTypes.string,
          onChange: PropTypes.func
      }

      static defaultProps = {
          type: 'text',
          value: '',
          isMultiple: false,
          onChange: function () {}
      }

      onChange = e => {
          const value = +e.target.value
          const { name, onChange: cb } = this.props
          cb(name, value)
      }

      render () {
          const {
              type,
              name,
              label,
              value,
              options,
              className,
              placeholder
          } = this.props

          return (
              &lt;FormGroup className={cn('SelectField', className)}&gt;
                  {label ? (
                      &lt;Label className='SelectField-Label'&gt;
                        {label}
                      &lt;/Label&gt;
                  ) : null}
                  &lt;Input
                          name={name}
                          value={value}
                          type="select"
                          placeholder={placeholder}
                          className='SelectField-Input'
                          onChange={this.onChange}&gt;
                      {map(options, o =&gt; &lt;option value={o.value}&gt;{o.text}&lt;/option&gt;)}
                &lt;/Input&gt;
              &lt;/FormGroup&gt;
          )
      }
  }</code>
  </pre>
</cd:code-example-decorator>