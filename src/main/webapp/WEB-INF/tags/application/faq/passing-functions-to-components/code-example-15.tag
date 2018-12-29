<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  import debounce from 'lodash.debounce';
  
  class Searchbox extends React.Component {
    constructor(props) {
      super(props);
      this.handleChange = this.handleChange.bind(this);
      this.emitChangeDebounced = debounce(this.emitChange, 250);
    }
  
    componentWillUnmount() {
      this.emitChangeDebounced.cancel();
    }
  
    render() {
      return (
        &lt;input
            type="text"
            onChange={this.handleChange}
            placeholder="Search..."
            defaultValue={this.props.value}
        /&gt;
      );
    }
  
    handleChange(e) {
      // React добавляет события в пулл, поэтому мы считываем значение перед debounce.
      // Или же мы могли бы вызвать `event.persist()` и передать событие целиком.
      // Чтобы получить больше информации смотрите learn-reactjs.ru/reference/synthetic-event#event-pool
      this.emitChangeDebounced(e.target.value);
    }
  
    emitChange(value) {
      this.props.onChange(value);
    }
  }
    </code>
</pre>
</cd:code-example-decorator>
