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
  // React Cache для простого извлечения данных (не окончательный API)
  import {unstable_createResource} from 'react-cache';

  // Скажите React Cache как извлекать ваши данные
  const TodoResource = unstable_createResource(fetchTodo);
  
  function Todo(props) {
    // Приостановка пока данные не окажутся в кеше
    const todo = TodoResource.read(props.id);
    return &lt;li&gt;{todo.title}&lt;/li&gt;;
  }
  
  function App() {
    return (
      // Тот же компонент Suspense, который вы уже использовали для разбиения кода
      // может также обрабатывать извлечение данных.
      &lt;React.Suspense fallback={&lt;Spinner /&gt;}&gt;
        &lt;ul&gt;
          {/* Siblings fetch in parallel */}
          &lt;Todo id="1" /&gt;
          &lt;Todo id="2" /&gt;
        &lt;/ul&gt;
        &lt;/React.Suspense&gt;
    );
  }

  // Сторонние библиотеки, такие как Apollo и Relay также могут
  // предоставлять интеграции приостановки с похожими API.</code>
  </pre>
</cd:code-example-decorator>