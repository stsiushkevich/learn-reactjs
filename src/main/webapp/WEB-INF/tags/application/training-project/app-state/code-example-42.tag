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
  
  import {connect} from 'react-redux'
  import {bindActionCreators} from 'redux'
  
  import Moment from 'react-moment'
  import { map, filter } from 'underscore'
  import { Form, Button } from 'reactstrap'
  
  import Table from '../../components/Table/Table'
  import TextField from '../../components/Form/TextField/TextField'
  import DateField from '../../components/Form/DateField/DateField'
  <cd:hl>import SelectField from '../../components/Form/SelectField/SelectField'</cd:hl>
  import CheckboxField from '../../components/Form/CheckboxField/CheckboxField'
  
  import './Appointments.scss'
  
  import Header from '../Header/Header'
  
  import * as appointmentListActions from '../../redux/appointment/list/appointmentListActions'
  <cd:hl>import * as appointmentStatusListActions from '../../redux/directory/appointment/status/list/appointmentStatusListActions'</cd:hl>
  
  import { ReactComponent as Search } from '../../images/search.svg'
  import { ReactComponent as Appointment } from '../../images/appointment.svg'
  
  const TITLE = 'Приёмы'
  
  const USER = 'Иванов Иван Иванович'
  
  // маппинг состояния приложения в свойства компонента-контейнера
  function mapStateToProps (state) {
      return {
          error: state.appointment.list.error,
          isFetching: state.appointment.list.isFetching,
          dataSource: state.appointment.list.dataSource,
          shouldReload: state.appointment.list.shouldReload,
  
          <cd:hl>directory: state.directory</cd:hl>
      }
  }
  
  // подключение генераторов действий к компоненту-контейнеру
  function mapDispatchToProps(dispatch) {
      return {
          actions: {
              ...bindActionCreators(appointmentListActions, dispatch),
              
              <cd:hl>status: {</cd:hl>
              <cd:hl>  list: bindActionCreators(appointmentStatusListActions, dispatch)</cd:hl>
              <cd:hl>}</cd:hl>
          }
      }
  }
  
  class Appointments extends Component {
  
    componentDidMount() {
      this.load()
      <cd:hl>this.loadStatuses()</cd:hl>
    }
  
    onChangeFilterField = (name, value) =&gt; {
      this.changeFilterField(name, value)
    }
  
    onChangeFilterDateField = (name, value) =&gt; {
      this.changeFilterField(name, value && value.getTime())
    }
  
    onSearch = () =&gt; {
      this.load()
    }
  
    load() {
      const { 
        actions, 
        dataSource: ds 
      } = this.props
  
      actions.load({
          ...ds.filter.toJS()
      })
    }
  
    <cd:hl>loadStatuses () {</cd:hl>
    <cd:hl>  this.props.actions.status.list.load()</cd:hl>
    <cd:hl>}</cd:hl>
  
    changeFilterField (name, value, shouldReload) {
      this.props
          .actions
          .changeFilterField(name, value, shouldReload)
    }
  
    render() {
  
      // берём данные из состояния приложения используя свойства props
      const {
        isFetching,
        dataSource: ds,
        directory
      } = this.props
  
      const {  
        startDate,
        endDate,
        clientName,
        <cd:hl>statusId,</cd:hl>
        onlyMe
      } = ds.filter
  
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
                <cd:hl>&lt;SelectField</cd:hl>
                <cd:hl>        name='statusId'</cd:hl>
                <cd:hl>        value={statusId}</cd:hl>
                <cd:hl>        placeholder='Статус'</cd:hl>
                <cd:hl>        options={[</cd:hl>
                <cd:hl>          { value: -1, text: '' },</cd:hl>
                <cd:hl>          ...map(</cd:hl>
                <cd:hl>            directory.appointment.status.list.dataSource.data,</cd:hl>
                <cd:hl>            o =&gt; ({ value: o.id, text: o.title })</cd:hl>
                <cd:hl>          )</cd:hl>
                <cd:hl>        ]}</cd:hl>
                <cd:hl>        className='Appointments-FilterField'</cd:hl>
                <cd:hl>        onChange={this.onChangeFilterField}</cd:hl>
                <cd:hl>/&gt;</cd:hl>
                &lt;CheckboxField
                        name='onlyMe'
                        label='Только я'
                        value={onlyMe}
                        className='Appointments-FilterField'
                        onChange={this.onChangeFilterField}
                /&gt;
                &lt;Button
                        className='Appointments-SearchBtn'
                        onClick={this.onSearch}&gt;
                  &lt;Search className='Appointments-SearchBtnIcon'/&gt;
                &lt;/Button&gt;
              &lt;/Form&gt;
            &lt;/div&gt;
            &lt;Table
                    data={ds.data}
                    isLoading={isFetching}
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
                        &lt;Moment date={v} format='DD.MM.YYYY HH.mm' /&gt;
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
  }
  
  // объявляем контейнер
  export default connect(mapStateToProps, mapDispatchToProps)(Appointments)</code>
  </pre>
</cd:code-example-decorator>