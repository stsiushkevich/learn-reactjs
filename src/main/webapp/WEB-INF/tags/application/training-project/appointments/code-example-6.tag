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
  import React, {Component} from 'react'
  
  import cn from 'classname'
  import PropTypes from 'prop-types'
  import {Label, Input, FormGroup} from 'reactstrap'
  
  import './CheckboxField.scss'
  
  class CheckboxField extends Component {
  
      static propTypes = {
          name: PropTypes.string,
          label: PropTypes.string,
          value: PropTypes.bool,
          className: PropTypes.string,
          onChange: PropTypes.func
      }
  
      static defaultProps = {
          value: false,
          onChange: function () {}
      }
  
      onChange = e => {
          const value = e.target.checked
          const { name, onChange: cb } = this.props
          cb(name, value)
      }
  
      render() {
          const {
              label,
              value,
              className
          } = this.props
  
          return (
              &lt;FormGroup check className={cn('CheckboxField', className)}&gt;
                 &lt;Label
                         check
                         onClick={this.onClick}
                         className='CheckboxField-Label'&gt;
                    &lt;Input
                            type='checkbox'
                            value={value}
                            onClick={this.onChange}
                            className='CheckboxField-Checkbox'
                    /&gt;
                    {label}
                &lt;/Label&gt;
              &lt;/FormGroup&gt;
          )
      }
  }
  
  export default CheckboxField;</code>
  </pre>
</cd:code-example-decorator>