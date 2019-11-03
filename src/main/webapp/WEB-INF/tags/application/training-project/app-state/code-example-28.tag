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

  <cd:hl>import {Provider} from 'react-redux'</cd:hl>
  <cd:hl>import thunkMiddleware from 'redux-thunk'</cd:hl>
  <cd:hl>import {applyMiddleware, compose, createStore} from 'redux'</cd:hl>
  <cd:hl>import {routerMiddleware, ConnectedRouter} from 'connected-react-router'</cd:hl>

  import {createBrowserHistory} from 'history'

  import './index.scss'

  import App from './App'

  <cd:hl>import rootReducer from './redux/rootReducer'</cd:hl>

  <cd:hl>import AppointmentInitialState from './redux/appointment/AppointmentInitialState'</cd:hl>

  <cd:hl>function getInitialState () {</cd:hl>
  <cd:hl>    return {</cd:hl>
  <cd:hl>        appointment: AppointmentInitialState()</cd:hl>
  <cd:hl>    }</cd:hl>
  <cd:hl>}</cd:hl>

  // создаём кастомную историю
  const history = createBrowserHistory()

  <cd:hl>const store = createStore(</cd:hl>
  <cd:hl>    rootReducer(history),</cd:hl>
  <cd:hl>    getInitialState(),</cd:hl>
  <cd:hl>    compose(applyMiddleware(routerMiddleware(history), thunkMiddleware))</cd:hl>
  <cd:hl>)</cd:hl>

  ReactDOM.render((
      <cd:hl>&lt;Provider store={store}&gt;</cd:hl>
      <cd:hl>    &lt;ConnectedRouter history={history}&gt;</cd:hl>
      <cd:hl>        &lt;App history={history} /&gt;</cd:hl>
      <cd:hl>    &lt;/ConnectedRouter&gt;</cd:hl>
      <cd:hl>&lt;/Provider&gt;</cd:hl>
    ), document.getElementById('root')
  );</code>
  </pre>
</cd:code-example-decorator>