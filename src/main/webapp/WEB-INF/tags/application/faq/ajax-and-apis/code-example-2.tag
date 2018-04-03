<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    class MyComponent extends React.Component {
      constructor(props) {
        super(props);
        this.state = {
          error: null,
          isLoaded: false,
          items: []
        };
      }
    
      componentDidMount() {
        fetch("https://api.example.com/items")
          .then(res =&gt; res.json())
          .then(
            (result) =&gt; {
              this.setState({
                isLoaded: true,
                items: result.items
              });
            },
            // Примечание: важно обрабатывать ошибки именно в данном коллбэке,
            // вместо блока catch(), чтобы мы не теряли исключения от
            // реальных багов в компонентах.
            (error) =&gt; {
              this.setState({
                isLoaded: true,
                error
              });
            }
          )
      }
    
      render() {
        const { error, isLoaded, items } = this.state;
        if (error) {
          return &lt;div&gt;Error: {error.message}&lt;/div&gt;;
        } else if (!isLoaded) {
          return &lt;div&gt;Loading...&lt;/div&gt;;
        } else {
          return (
            &lt;ul&gt;
              {items.map(item =&gt; (
                &lt;li key={item.name}&gt;
                  {item.name} {item.price}
                &lt;/li&gt;
              ))}
            &lt;/ul&gt;
          );
        }
      }
    }</code>
</pre>
</cd:code-example-decorator>
