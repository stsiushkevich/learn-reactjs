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
  
  import {Form} from 'reactstrap'
  import Moment from 'react-moment'
  import {map, filter} from 'underscore'
  
  import Table from '../Table/Table'
  import Header from '../Header/Header'
  import TextField from '../Form/TextField/TextField'
  import DateField from '../Form/DateField/DateField'
  import CheckboxField from '../Form/CheckboxField/CheckboxField'
  
  import './Appointments.scss'
  
  import { ReactComponent as Appointment } from '../../images/appointment.svg'
  
  import { appointments as data } from '../../lib/MockData'
  
  const TITLE = 'Приёмы'
  
  const USER = 'Иванов Иван Иванович'
  
  export default class Appointments extends Component {
  
    <cd:hl>state = {</cd:hl>
    <cd:hl>  filter: {</cd:hl>
    <cd:hl>    startDate: null,</cd:hl>
    <cd:hl>    endDate: null,</cd:hl>
    <cd:hl>    clientName: '',</cd:hl>
    <cd:hl>    onlyMe: false</cd:hl>
    <cd:hl>  }</cd:hl>
    <cd:hl>}</cd:hl>
  
    <cd:hl>onChangeFilterField = (name, value) => {</cd:hl>
    <cd:hl>  const { filter } = this.state</cd:hl>
  
    <cd:hl>  this.setState({</cd:hl>
    <cd:hl>    filter: {...filter, ...{[name]: value}}</cd:hl>
    <cd:hl>  })</cd:hl>
    <cd:hl>}</cd:hl>
  
    <cd:hl>onChangeFilterDateField = (name, value) => {</cd:hl>
    <cd:hl>  const { filter } = this.state</cd:hl>
  
    <cd:hl>  this.setState({</cd:hl>
    <cd:hl>    filter: {...filter, ...{[name]: value && value.getTime()}}</cd:hl>
    <cd:hl>  })</cd:hl>
    <cd:hl>}</cd:hl>
  
    render() {
      const {
        startDate,
        endDate,
        clientName,
        onlyMe,
      } = this.state.filter
  
      let filtered = filter(data, o => {
        return (startDate ? o.date >= startDate : true) && 
        (endDate ? o.date <= endDate : true) && 
        (clientName ? (clientName.length > 2 ? o.clientName.includes(clientName) : true) : true) && 
        (onlyMe ? o.holderName === USER : true)
      })
  
      return (
        &lt;div className='Appointments'&gt;
          &lt;Header
                  title={TITLE}
                  userName={USER}
                  className='Appointments-Header'
                  bodyClassName='Appointments-HeaderBody'
                  renderIcon={() =&gt; (
              &lt;Appointment className='Header-Icon' /&gt;
            )}
          /&gt;
          &lt;div className='Appointments-Body'&gt;
            &lt;div className='Appointments-Filter'&gt;
              &lt;Form className='Appointments-FilterForm'&gt;
                &lt;DateField
                        hasTime
                        name='startDate'
                        value={startDate}
                        dateFormat='dd/MM/yyyy HH:mm'
                        timeFormat='HH:mm'
                        placeholder='С'
                        className='Appointments-FilterField'
                        onChange={this.onChangeFilterDateField}
                /&gt;
                &lt;DateField
                        hasTime
                        name='endDate'
                        value={endDate}
                        dateFormat='dd/MM/yyyy HH:mm'
                        timeFormat='HH:mm'
                        placeholder='По'
                        className='Appointments-FilterField'
                        onChange={this.onChangeFilterDateField}
                /&gt;
                &lt;TextField
                        name='clientName'
                        value={clientName}
                        placeholder='Клиент'
                        className='Appointments-FilterField'
                        onChange={this.onChangeFilterField}
                /&gt;
                &lt;CheckboxField
                        name='onlyMe'
                        label='Только я'
                        value={onlyMe}
                        className='Appointments-FilterField'
                        onChange={this.onChangeFilterField}
                /&gt;
              &lt;/Form&gt;
            &lt;/div&gt;
            &lt;Table
                    data={filtered}
                    className='AppointmentList'
                    columns={[
                    {
                    dataField: 'date',
                  text: 'Дата',
                  headerStyle: {
                    width: '150px'
                  },
                  formatter: (v, row) =&gt; {
                    return (
                      &lt;Moment date={v} format='DD.MM.YYYY HH.mm'/&gt;
                    )
                  }
                },
                {
                  dataField: 'clientName',
                  text: 'Клиент',
                  headerStyle: {
                    width: '300px'
                  }
                },
                {
                  dataField: 'status',
                  text: 'Статус'
                },
                {
                  dataField: 'holderName',
                  text: 'Принимающий',
                  headerStyle: {
                    width: '300px'
                  }
                },
                {
                  dataField: 'compliences',
                  text: 'Жалобы',
                  headerStyle: {
                    width: '200px'
                  }
                },
                {
                  dataField: 'diagnosis',
                  text: 'Диагноз',
                  headerStyle: {
                    width: '200px'
                  }
                }      
              ]}
            /&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      )
    }
  }</code>
  </pre>
</cd:code-example-decorator>