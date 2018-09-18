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
    import {createSubscription} from 'create-subscription';

    const Subscription = createSubscription({
      getCurrentValue(sourceProp) {
        // Возвращает текущее значение подписки (sourceProp).
        return sourceProp.value;
      },

      subscribe(sourceProp, callback) {
        function handleSubscriptionChange() {
          callback(sourceProp.value);
        }

        // Подпишитесь (например, добавьте слушатель событий) на события (sourceProp).
        // Вызовите callback(newValue) при каждом изменении подписки.
        sourceProp.subscribe(handleSubscriptionChange);

        // Верните метод unsubscribe.
        return function unsubscribe() {
          sourceProp.unsubscribe(handleSubscriptionChange);
        };
      },
    });

    // Вместо того, чтобы передавать источник подписки в наш ExampleComponent,
    // Мы могли бы просто передать значение подписки напрямую:
    &lt;Subscription source={dataSource}&gt;
      {value =&gt; &lt;ExampleComponent subscribedValue={value} /&gt;}
    &lt;/Subscription&gt;;</code>
  </pre>
</cd:code-example-decorator>