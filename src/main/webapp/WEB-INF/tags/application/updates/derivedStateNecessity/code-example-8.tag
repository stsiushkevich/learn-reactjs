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
    class Example extends Component {
      state = {
        filterText: "",
      };

      // *******************************************************
      // Внимание: данный пример не является рекомендованным подходом.
      // Смотрите рекоммендуемые нами примеры ниже.
      // *******************************************************
    
      static getDerivedStateFromProps(props, state) {
        // Переустанавливать фильтр каждый раз, когда список или текст фильтра изменяется.
        // Обратите внимание, что нам необходимо хранить prevPropsList и
        // prevFilterText, чтобы регистрировать изменения.
        if (
          props.list !== state.prevPropsList ||
          state.prevFilterText !== state.filterText
        ) {
          return {
            prevPropsList: props.list,
            prevFilterText: state.filterText,
            filteredList: props.list.filter(item => item.text.includes(state.filterText))
          };
        }
        return null;
      }
    
      handleChange = event => {
        this.setState({ filterText: event.target.value });
      };
    
      render() {
        return (
          &lt;Fragment&gt;
            &lt;input onChange={this.handleChange} value={this.state.filterText} /&gt;
            &lt;ul&gt;{this.state.filteredList.map(item =&gt; &lt;li key={item.id}&gt;{item.text}&lt;/li&gt;)}&lt;/ul&gt;
          &lt;/Fragment&gt;
        );
      }
    }</code>
  </pre>
</cd:code-example-decorator>