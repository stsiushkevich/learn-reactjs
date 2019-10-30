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

  import './App.scss';

  import Home from './components/Home/Home'
  import Appointments from './components/Appointments/Appointments'

  class App extends Component {
    render() {
      const { history } = this.props

      return (
        &lt;div className="App"&gt;
          &lt;Switch&gt;
            &lt;Route history={history} path='/home' component={Home} /&gt;
            &lt;Route history={history} path='/appointments' component={Appointments} /&gt;
            &lt;Redirect from='/' to='/home'/&gt;
          &lt;/Switch&gt;
        &lt;/div&gt;
      );
    }
  }

  export default withRouter(App)</code>
  </pre>
</cd:code-example-decorator>