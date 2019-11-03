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
  function visibilityFilter(state = 'SHOW_ALL', action) {
    switch (action.type) {
      case 'SET_VISIBILITY_FILTER':
        return action.filter
      default:
        return state
    }
  }

  function todos(state = [], action) {
    switch (action.type) {
      case 'ADD_TODO':
        return [
          ...state,
          {
            text: action.text,
            completed: false
          }
        ]
      case 'COMPLETE_TODO':
        return state.map((todo, index) => {
          if (index === action.index) {
            return Object.assign({}, todo, {
              completed: true
            })
          }
          return todo
        })
      default:
        return state
    }
  }

  import { combineReducers, createStore } from 'redux'
  const reducer = combineReducers({ visibilityFilter, todos })
  const store = createStore(reducer)</code>
  </pre>
</cd:code-example-decorator>