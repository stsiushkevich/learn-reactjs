<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    class ShoppingList extends React.Component {
      render() {
        return (
          &lt;div className="shopping-list"&gt;
            &lt;h1&gt;Список покупок для {this.props.name}&lt;/h1&gt;
            &lt;ul&gt;
              &lt;li&gt;Instagram&lt;/li&gt;
              &lt;li&gt;WhatsApp&lt;/li&gt;
              &lt;li&gt;Oculus&lt;/li&gt;
            &lt;/ul&gt;
          &lt;/div&gt;
        );
      }
    }
    
    // Пример использования: &lt;ShoppingList name="Mark" /&gt;
    </code>
</pre>
</cd:code-example-decorator>