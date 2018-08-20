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
  // Изменение определяется при помощи проведения поверхностного сравнения ключей state и props.
  class Example extends PureComponent {
    // В состоянии требуется хранить только текущий текст фильтра:
    state = {
      filterText: ""
    };
  
    handleChange = event => {
      this.setState({ filterText: event.target.value });
    };
  
    render() {
      // Метод render в данном наследнике PureComponent вызывается только если
      // props.list или state.filterText изменились.
      const filteredList = this.props.list.filter(
        item => item.text.includes(this.state.filterText)
      )
  
      return (
        &lt;Fragment&gt;
          &lt;input onChange={this.handleChange} value={this.state.filterText} /&gt;
          &lt;ul&gt;{filteredList.map(item =&gt; &lt;li key={item.id}&gt;{item.text}&lt;/li&gt;)}&lt;/ul&gt;
        &lt;/Fragment&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>