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
  // ------------
  // Первая отрисовка
  // ------------
  useState('Вася')           // 1. Инициализируем переменную состояния name значением 'Вася'
  useEffect(persistForm)     // 2. Добавляем эффект, чтобы сохранить данные формы
  useState('Пупкин')         // 3. Инициализируем переменную состояния surname значением 'Пупкин'
  useEffect(updateTitle)     // 4. Добавляем эффект, чтобы обновить название

  // -------------
  // Вторая отрисовка
  // -------------
  useState('Вася')           // 1. Считываем переменную состояния name (аргумент будет игнорирован)
  useEffect(persistForm)     // 2. Заменяем эффект, сохраняющий данные формы
  useState('Пупкин')        // 3. Считываем переменную состояния surname (аргумент будет игнорирован)
  useEffect(updateTitle)     // 4. Заменяем эффект, обновляющий название

  // ...</code>
  </pre>
</cd:code-example-decorator>