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
  function visibilityFilter (state = 'SHOW_ALL', action) {
    if (action.type === 'SET_VISIBILITY_FILTER') {
      return action.filter
    }

    else {
      return state
    }
  }

  function todos(state = [], action) {
    switch (action.type) {
      case 'ADD_TODO':
        return state.concat([{ text: action.text, completed: false }])
      case 'TOGGLE_TODO':
        return state.map((todo, index) =>
          action.index === index
            ? { text: todo.text, completed: !todo.completed }
            : todo
        )
      default:
        return state
    }
  }</code>
  </pre>
</cd:code-example-decorator>