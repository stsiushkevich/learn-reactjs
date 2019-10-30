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
  import React from 'react'
  import ReactDOM from 'react-dom'

  import { Router } from "react-router-dom"
  import {createBrowserHistory} from 'history'

  import './index.scss'

  import App from './App'

  // создаём кастомную историю
  const history = createBrowserHistory()

  ReactDOM.render((
     &lt;Router history={history}&gt;
       &lt;App/&gt;
     &lt;/Router&gt;
   ), document.getElementById('root')
  );</code>
  </pre>
</cd:code-example-decorator>