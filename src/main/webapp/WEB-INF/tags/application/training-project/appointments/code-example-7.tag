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
  import DatePicker from 'react-datepicker'
  import {FormGroup, Label} from 'reactstrap'
  
  import './DateField.scss'
  
  export default class DateField extends Component {
  
      static propTypes = {
          name: PropTypes.string,
          label: PropTypes.string,
          hasTime: PropTypes.bool,
          placeholder: PropTypes.string,
          dateFormat: PropTypes.string,
          timeFormat: PropTypes.string,
          timeInterval: PropTypes.number,        
          className: PropTypes.string,        
          onChange: PropTypes.func
      }
  
      static defaultProps = {
          hasTime: false,
          dateFormat: 'dd/MM/yyyy',
          // формат времени, отображающийся в выпадающем списке
          timeFormat: 'HH:mm',
          // шаг выбора времени 
          timeInterval: 30,
          onChange: function () {}
      }
  
      onChange = (value) => {
          const { name, onChange: cb } = this.props
          cb(name, value)
      }
  
      render () {
          const {
              name,
              label,
              value,
  
              dateFormat,
  
              hasTime,            
              timeFormat,
              timeInterval,
  
              onChange,
              className,
              placeholder
          } = this.props
  
          return (
              &lt;FormGroup className={cn('DateField', className)}&gt;
                &lt;div&gt;
                  {label ? (
                      &lt;Label className='DateField-Label'&gt;
                          {label}
                      &lt;/Label&gt;
                  ) : null}                
                  &lt;DatePicker
                          name={name}
                          selected={value}
  
                          dateFormat={dateFormat}
  
                          timeFormat={timeFormat}
                          showTimeSelect={hasTime}
                          timeIntervals={timeInterval}
  
                          onChange={this.onChange}
                          placeholderText={placeholder}
                          className='DateField-Input form-control'
                  /&gt;
                &lt;/div&gt;
              &lt;/FormGroup&gt;
          )
      }
  }</code>
  </pre>
</cd:code-example-decorator>