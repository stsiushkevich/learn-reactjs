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
  import Moment from 'react-moment'
  
  import './Appointments.scss'
  
  import Table from '../Table/Table'
  import Header from '../Header/Header'
  
  import { ReactComponent as Appointment } from '../../images/appointment.svg'
  
  import { appointments as data } from '../../lib/MockData'
  
  const TITLE = 'Приёмы'
  
  export default class Appointments extends Component {
  
   render() {
     return (
       &lt;div className='Appointments'&gt;
         &lt;Header
                 title={TITLE}
                 userName='Иванов Иван Иванович'
                 className='Appointments-Header'
                 renderIcon={() =&gt; (
             &lt;Appointment className='Header-Icon' /&gt;
           )}
         /&gt;
         &lt;div className='Appointments-Body'&gt;
           &lt;Table
                   data={data}
                   columns={[
                   {
                   dataField: 'date',
                 text: 'Дата',
                 headerStyle: {
                   width: '200px'
                 },
                 <cd:hl>formatter: (v, row) =&gt; {</cd:hl>
                 <cd:hl>  return (</cd:hl>
                 <cd:hl>    &lt;Moment date={v} format='DD.MM.YYYY HH.mm'/&gt;</cd:hl>
                 <cd:hl>  )</cd:hl>
                 <cd:hl>}</cd:hl>
               },
               {
                 dataField: 'clientName',
                 text: 'Клиент'
               },
               {
                 dataField: 'status',
                 text: 'Статус'
               },
               {
                 dataField: 'holderName',
                 text: 'Принимающий'
               },
               {
                 dataField: 'compliences',
                 text: 'Жалобы'
               },
               {
                 dataField: 'diagnosis',
                 text: 'Диагноз'
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