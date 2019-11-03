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
  
  <cd:hl>import {connect} from 'react-redux'</cd:hl>
  <cd:hl>import {bindActionCreators} from 'redux'</cd:hl>
  
  import Moment from 'react-moment'
  import { map, filter } from 'underscore'
  import { Form, Button } from 'reactstrap'
  
  import Table from '../../components/Table/Table'
  import TextField from '../../components/Form/TextField/TextField'
  import DateField from '../../components/Form/DateField/DateField'
  import CheckboxField from '../../components/Form/CheckboxField/CheckboxField'
  
  import './Appointments.scss'
  
  import Header from '../Header/Header'
  
  import * as appointmentListActions from '../../redux/appointment/list/appointmentListActions'
  
  import { ReactComponent as Search } from '../../images/search.svg'
  import { ReactComponent as Appointment } from '../../images/appointment.svg'
  
  const TITLE = 'Приёмы'
  
  const USER = 'Иванов Иван Иванович'
  
  // маппинг состояния приложения в свойства компонента-контейнера
  <cd:hl>function mapStateToProps (state) {</cd:hl>
  <cd:hl>    return {</cd:hl>
  <cd:hl>        error: state.appointment.list.error,</cd:hl>
  <cd:hl>        isFetching: state.appointment.list.isFetching,</cd:hl>
  <cd:hl>        dataSource: state.appointment.list.dataSource,</cd:hl>
  <cd:hl>        shouldReload: state.appointment.list.shouldReload</cd:hl>
  <cd:hl>    }</cd:hl>
  <cd:hl>}</cd:hl>
  
  // подключение генераторов действий к компоненту-контейнеру
  <cd:hl>function mapDispatchToProps(dispatch) {</cd:hl>
  <cd:hl>    return {</cd:hl>
  <cd:hl>        actions: {</cd:hl>
  <cd:hl>            ...bindActionCreators(appointmentListActions, dispatch)</cd:hl>
  <cd:hl>        }</cd:hl>
  <cd:hl>    }</cd:hl>
  <cd:hl>}</cd:hl>
  
  class Appointments extends Component {
  
    componentDidMount() {
      this.load()
    }
  
    onChangeFilterField = (name, value) => {
      this.changeFilterField(name, value)
    }
  
    onChangeFilterDateField = (name, value) => {
      this.changeFilterField(name, value && value.getTime())
    }
  
    onSearch = () => {
      this.load()
    }
  
    <cd:hl>load() {</cd:hl>
    <cd:hl>  const {</cd:hl>
    <cd:hl>    actions,</cd:hl>
    <cd:hl>    dataSource: ds</cd:hl>
    <cd:hl>  } = this.props</cd:hl>
  
    <cd:hl>  actions.load({</cd:hl>
    <cd:hl>      ...ds.filter.toJS()</cd:hl>
    <cd:hl>  })</cd:hl>
    <cd:hl>}</cd:hl>
  
    changeFilterField (name, value, shouldReload) {
    <cd:hl>      this.props</cd:hl>
    <cd:hl>          .actions</cd:hl>
    <cd:hl>          .changeFilterField(name, value, shouldReload)</cd:hl>
    }
  
    render() {
  
      // берём данные из состояния приложения используя свойства props
      const {
        isFetching,
        dataSource: ds
      } = this.props
  
      const {
        startDate,
        endDate,
        clientName,
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
  <cd:hl>export default connect(mapStateToProps, mapDispatchToProps)(Appointments)</cd:hl></code>
  </pre>
</cd:code-example-decorator>