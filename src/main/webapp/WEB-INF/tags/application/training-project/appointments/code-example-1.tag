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
  import BootstrapTable from 'react-bootstrap-table-next'
  
  import './Table.scss'
  
  const NO_DATA_TEXT = 'Данных нет'
  
  export default class Table extends Component {
  
   static propTypes = {
     columns: PropTypes.arrayOf(PropTypes.object), // дескрипторы столбцов таблицы
     data: PropTypes.arrayOf(PropTypes.object), // данные таблицы
     keyField: PropTypes.string, // имя уникального столбца
     noDataText: PropTypes.string,

     hasHover: PropTypes.bool,
     hasOptions: PropTypes.bool,
     hasBorders: PropTypes.bool,

     isStriped: PropTypes.bool,

     expandRow: PropTypes.object,

     className: PropTypes.string,
     containerClass: PropTypes.string,

     getRowStyle: PropTypes.func
   }

   static defaultProps = {
     data: [],
     columns: [],
     keyField: 'id',
     noDataText: NO_DATA_TEXT,

     isRemote: true,
     isStriped: true,
     isLoading: false,

     hasHover: false,
     hasHeader: false,
     hasBorders: false,

     getRowStyle: function() { return null }
   }

   getRowStyle = (row, rowIndex) => {
     return this.props.getRowStyle(row, rowIndex)
   }

   render() {
     const {
       data,
       columns,
       keyField,
       expandRow,
       className,
       containerClass,
       isStriped,
       hasBorders,
       hasHover,
       noDataText,
     } = this.props

     return (
       &lt;div className={cn('TableContainer', containerClass)}&gt;
         &lt;BootstrapTable
                 expandRow={expandRow}
                 data={data}
                 columns={columns}
                 keyField={keyField}
                 classes={cn('Table', className)}
                 headerClasses={'Table-Header'}
                 striped={isStriped}
                 hover={hasHover}
                 bordered={hasBorders}
                 rowStyle={this.getRowStyle}
                 noDataIndication={noDataText}
         /&gt;
       &lt;/div&gt;
     )
   }
  }</code>
  </pre>
</cd:code-example-decorator>