<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  const initialState = {count: 0};
  
  function reducer(state, action) {
    switch (action.type) {
      case 'increment':
        return {count: state.count + 1};
      case 'decrement':
        return {count: state.count - 1};
      default:
        throw new Error();
    }
  }
  
  function Counter({initialState}) {
    const [state, dispatch] = useReducer(reducer, initialState);
    return (
      &lt;>
        Значение счетчика: {state.count}
        &lt;button onClick={() => dispatch({type: 'increment'})}>+&lt;/button>
        &lt;button onClick={() => dispatch({type: 'decrement'})}>-&lt;/button>
      &lt;/>
    );
  }</code>
  </pre>
</cd:code-example-decorator>