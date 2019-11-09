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
  
  import { connect } from 'react-redux'
  import { Link } from 'react-router-dom'
  import { bindActionCreators } from 'redux'
  
  import { Badge, Button } from 'reactstrap'
  
  import Tabs from '../../../components/Tabs/Tabs'
  import Table from '../../../components/Table/Table'
  import Loader from '../../../components/Loader/Loader'
  import SearchField from '../../../components/SearchField/SearchField'
  import Breadcrumbs from '../../../components/Breadcrumbs/Breadcrumbs'
  
  import './Organizations.scss'
  
  import * as sideBarActions from '../../../redux/sidebar/sideBarActions'
  import * as organizationListActions from '../../../redux/organization/list/organizationListActions'
  import * as organizationCountActions from '../../../redux/organization/count/organizationCountActions'
  
  import { getSideBarItems } from '../SideBarItems'
  
  import { PAGINATION } from '../../../lib/Constants'
  
  import { path } from '../../../lib/ContextUtils'
  import { isEmpty, DateUtils } from '../../../lib/Utils'</code>
  </pre>
</cd:code-example-decorator>