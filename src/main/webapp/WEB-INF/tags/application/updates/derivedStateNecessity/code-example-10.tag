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
  import memoize from "memoize-one";

  class Example extends Component {
    // В состоянии требуется хранить только текущий текст фильтра:
    state = { filterText: "" };

    // Переустанавливать фильтр каждый раз, когда список или текст фильтра изменяется:
    filter = memoize(
      (list, filterText) => list.filter(item => item.text.includes(filterText))
    );

    handleChange = event => {
      this.setState({ filterText: event.target.value });
    };

    render() {
      // Вычислить последний отфильтрованный список. Если эти аргументы не изменились
      // с последней отрисовки, `memoize-one` будет повторно использовать последнее возвращенное значение.
      const filteredList = this.filter(this.props.list, this.state.filterText);

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