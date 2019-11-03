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
  import React, { Component } from 'react';

  import {
    Route,
    Switch,
    Redirect,
    withRouter
  } from "react-router-dom"

  <cd:hl>import { connect } from 'react-redux'</cd:hl>
  <cd:hl>import { ConnectedRouter } from 'connected-react-router'</cd:hl>

  import './App.scss';

  import Home from './containers/Home/Home'
  import Appointments from './containers/Appointments/Appointments'

  class App extends Component {
    render() {
      const { history } = this.props

      return (
        <cd:hl>&lt;ConnectedRouter history={history}&gt;</cd:hl>
          &lt;div className="App"&gt;
            &lt;Switch&gt;
              &lt;Route path='/home' component={Home} /&gt;
              &lt;Route path='/appointments' component={Appointments} /&gt;
              &lt;Redirect from='/' to='/home'/&gt;
            &lt;/Switch&gt;
          &lt;/div&gt;
        <cd:hl>&lt;/ConnectedRouter&gt;</cd:hl>
      );
    }
  }

  <cd:hl>export default withRouter(connect()(App))</cd:hl></code>
  </pre>
</cd:code-example-decorator>