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
  import gql from "graphql-tag";
  import { Query } from "react-apollo";

  const GET_DOGS = gql`
    {
      dogs {
        id
        breed
      }
    }
  `;

  const Dogs = ({ onDogSelected }) =&gt; (
    &lt;Query query={GET_DOGS}&gt;
      {({ loading, error, data }) =&gt; {
        if (loading) return "Loading...";
        if (error) return `Error! \${error.message}`;

        return (
          &lt;select name="dog" onChange={onDogSelected}&gt;
            {data.dogs.map(dog =&gt; (
              &lt;option key={dog.id} value={dog.breed}&gt;
                {dog.breed}
              &lt;/option&gt;
            ))}
          &lt;/select&gt;
        );
      }}
    &lt;/Query&gt;
  );</code>
  </pre>
</cd:code-example-decorator>