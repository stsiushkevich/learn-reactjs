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
  const UNIT = {
    KPH: 'Км/ч',
    MPH: 'Миль/ч'
  };
          
  class SpeedSetter extends React.Component {
    constructor(props) {
      super(props);
      this.onChange = this.onChange.bind(this)
      this.state = {speed: ''}
    }

    onChange(e) {
      this.setState({speed: e.target.value})
    }

    render() {
      let speed = this.state.speed
      <cd:hl>let unit = this.props.unit</cd:hl>

      return (
        &lt;p>
          <cd:hl>&lt;span>Введите скорость в "{UNIT[unit]}": &lt;/span></cd:hl>
          &lt;input value={speed} onChange={this.onChange}/>
        &lt;/p>
      );
    }
  }</code>
    </pre>
</cd:code-example-decorator>