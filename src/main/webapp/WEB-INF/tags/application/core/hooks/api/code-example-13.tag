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
  <cd:hl>function init(initialCount) {</cd:hl>
    <cd:hl>return {count: initialCount};</cd:hl>
  <cd:hl>}</cd:hl>
  
  function reducer(state, action) {
    switch (action.type) {
      case 'increment':
        return {count: state.count + 1};
      case 'decrement':
        return {count: state.count - 1};
      <cd:hl>case 'reset':</cd:hl>
        <cd:hl>return init(action.payload);</cd:hl>
      default:
        throw new Error();
    }
  }
  
  function Counter({initialCount}) {
    <cd:hl>const [state, dispatch] = useReducer(reducer, initialCount, init);</cd:hl>
    return (
      &lt;>
        Значение счетчика: {state.count}
        &lt;button
            <cd:hl>onClick={() => dispatch({type: 'reset', payload: initialCount})}></cd:hl>
  
          Сброс
        &lt;/button>
        &lt;button onClick={() => dispatch({type: 'increment'})}>+&lt;/button>
        &lt;button onClick={() => dispatch({type: 'decrement'})}>-&lt;/button>
      &lt;/>
    );
  }</code>
  </pre>
</cd:code-example-decorator>