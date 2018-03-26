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
  function Glossary(props) {
    return (
      &lt;dl&gt;
        {props.items.map(item =&gt; (
          // Без указания `key`, React выбросит исключеие
          &lt;React.Fragment key={item.id}&gt;
            &lt;dt&gt;{item.term}&lt;/dt&gt;
            &lt;dd&gt;{item.description}&lt;/dd&gt;
          &lt;/React.Fragment&gt;
        ))}
      &lt;/dl&gt;
    );
  }
  </code>
  </pre>
</cd:code-example-decorator>