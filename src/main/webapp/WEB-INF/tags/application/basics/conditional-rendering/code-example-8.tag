<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  function DangerAlert(props) {
    return (
      &lt;h3 className="alert alert-danger"&gt;{props.text}&lt;/h3&gt;
    );
  }

  class Application extends React.Component {
    constructor(props) {
      super(props);
      this.state = {isDangerAlertShowed: true}
      this.toggleDangerAlert = this.toggleDangerAlert.bind(this);
    }

    toggleDangerAlert() {
      this.setState(prevState =&gt; ({
        isDangerAlertShowed: !prevState.isDangerAlertShowed
      }));
    }

    render() {
      return (
        &lt;div&gt;
          <cd:hl>{this.state.isDangerAlertShowed ?</cd:hl>
              <cd:hl>&lt;DangerAlert text={'Внимание! В приложении возникли некоторые проблемы!'} /&gt; : null}</cd:hl>
          &lt;button onClick={this.toggleDangerAlert}&gt;
            {this.state.isDangerAlertShowed ? 'Скрыть' : 'Показать'}
          &lt;/button&gt;
        &lt;/div&gt;
      );
    }
  }

  ReactDOM.render(&lt;Application /&gt;, document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>