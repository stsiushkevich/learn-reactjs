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

  import cn from 'classnames'

  <cd:hl>import {connect} from 'react-redux'</cd:hl>

  import './Header.scss'

  <cd:hl>function mapStateToProps (state) {</cd:hl>
  <cd:hl>    return state</cd:hl>
  <cd:hl>}</cd:hl>

  class Header extends Component {

    render () {
      const {
        title,
        userName,
        className,
        bodyClassName,
        renderIcon
      } = this.props

      return (
        &lt;div className={cn('Header', className)}&gt;
          &lt;div className={cn('Header-Body', bodyClassName)}&gt;
            &lt;div className='flex-1 d-flex flex-row justify-content-start align-items-center'&gt;
              {renderIcon && renderIcon()}
              &lt;div className='Header-Title'&gt;
                {title}
              &lt;/div&gt;
            &lt;/div&gt;
            &lt;div className='flex-1 d-flex flex-row justify-content-end align-items-center'&gt;
              {userName && (
                &lt;div className='Header-UserName'&gt;
                  {userName}
                &lt;/div&gt;
              )}
              &lt;a className='btn btn-primary Header-ExitBtn'&gt;
                Выйти
              &lt;/a&gt;
            &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      )
    }
  }

  <cd:hl>export default connect(null, null)(Header)</cd:hl></code>
  </pre>
</cd:code-example-decorator>