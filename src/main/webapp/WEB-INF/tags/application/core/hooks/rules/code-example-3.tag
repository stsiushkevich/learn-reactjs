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
  function Form() {
    // 1. Используем переменную состояния name
    const [name, setName] = useState('Вася');

    // 2. Используем эффект, чтобы сохранить данные формы
    useEffect(function persistForm() {
      localStorage.setItem('formData', name);
    });

    // 3. Используем переменную состояния surname
    const [surname, setSurname] = useState('Пупкин');

    // 4. Используем эффект, чтобы обновить название
    useEffect(function updateTitle() {
      document.title = name + ' ' + surname;
    });

    // ...
  }</code>
  </pre>
</cd:code-example-decorator>