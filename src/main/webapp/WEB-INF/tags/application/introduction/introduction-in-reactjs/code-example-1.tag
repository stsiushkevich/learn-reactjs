<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    class FruitList extends React.Component {
      render() {
        return (
          &lt;div className="fruit-list"&gt;
            &lt;h1&gt;Fruit List for {this.props.name}&lt;/h1&gt;
            &lt;ul&gt;
              &lt;li&gt;Апельсин&lt;/li&gt;
              &lt;li&gt;Банан&lt;/li&gt;
              &lt;li&gt;Киви&lt;/li&gt;
            &lt;/ul&gt;
          &lt;/div&gt;
        );
      }
    }

    // Пример использования: &lt;FruitList name="Петя" /&gt; - по синтаксису в точности как обычный тэг:)!
    </code>
</pre>