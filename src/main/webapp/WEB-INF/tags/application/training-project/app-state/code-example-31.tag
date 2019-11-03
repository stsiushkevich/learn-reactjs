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
  import { Link } from "react-router-dom"

  <cd:hl>import {connect} from 'react-redux'</cd:hl>

  import './Home.scss'

  import Header from '../Header/Header'

  import { ReactComponent as User } from '../../images/user.svg'
  import { ReactComponent as Star } from '../../images/star.svg'
  import { ReactComponent as Nurse } from '../../images/nurse.svg'
  import { ReactComponent as House } from '../../images/house.svg'
  import { ReactComponent as Clients } from '../../images/clients.svg'
  import { ReactComponent as Messages } from '../../images/messages.svg'
  import { ReactComponent as Broadcast } from '../../images/broadcast.svg'
  import { ReactComponent as Employees } from '../../images/employees.svg'
  import { ReactComponent as Appointment } from '../../images/appointment.svg'

  const TITLE = 'Домашняя'

  const SECTIONS = [
    { title: 'Приёмы', href: '/appointments', Icon: Appointment },
    { title: 'События', href: '/events', Icon: Star  },
    { title: 'Оповещения', href: '/notifications', Icon: Broadcast },
    { title: 'Сообщения', href: '/messages', Icon: Messages },
    { title: 'Клиенты', href: '/clients', Icon: Clients },
    { title: 'Сотрудники', href: '/employees', Icon: Employees }
  ]

  <cd:hl>function mapStateToProps (state) {</cd:hl>
  <cd:hl>    return state</cd:hl>
  <cd:hl>}</cd:hl>

  class Home extends Component {

    render () {
      return (
        &lt;div className='Home'&gt;
          &lt;Header
                  title={TITLE}
                  userName='Иванов Иван Иванович'
                  className='Home-Header'
                  renderIcon={() =&gt; (
              &lt;House className='Header-Icon'/&gt;
            )}
          /&gt;
          &lt;div className='Home-Body'&gt;
            &lt;div className='SectionNavigation'&gt;
              {map(SECTIONS, ({ title, href, Icon }) =&gt; (
                // с помощью компонента Link будет осуществляться
                // навигация по разделам приложения
                &lt;Link className='SectionNavigation-Item Section' to={href}&gt;
                  &lt;Icon className='Section-Icon'/&gt;
                  &lt;span className='Section-Title'&gt;{title}&lt;/span&gt;
              &lt;/Link&gt;
              ))}
            &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      )
    }
  }

  <cd:hl>export default connect(null, null)(Home)</cd:hl></code>
  </pre>
</cd:code-example-decorator>