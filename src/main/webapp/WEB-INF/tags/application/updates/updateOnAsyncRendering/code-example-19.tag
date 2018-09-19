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
    class ScrollingList extends React.Component {
      listRef = null;

<cd:hl>      getSnapshotBeforeUpdate(prevProps, prevState) {
        // Добавляем ли мы новые элементы в список?
        // Запомним положение прокрутки, чтобы мы позже могли ее отрегулировать.
        if (prevProps.list.length < this.props.list.length) {
          return (
            this.listRef.scrollHeight - this.listRef.scrollTop
          );
        }
        return null;
      }</cd:hl>

<cd:hl>      componentDidUpdate(prevProps, prevState, snapshot) {
        // Если у нас есть значение snapshot, значит мы только что добавили новые элементы.
        // Отрегулируем прокрутку, чтобы новые элементы не вытесняли старые из виду.
        // (здесь snapshot это значение, возвращенное из getSnapshotBeforeUpdate)
        if (snapshot !== null) {
          this.listRef.scrollTop =
            this.listRef.scrollHeight - snapshot;
        }
      }</cd:hl>

      render() {
        return (
          &lt;div ref={this.setListRef}&gt;
            {/* ...contents... */}
          &lt;/div&gt;
        );
      }

      setListRef = ref => {
        this.listRef = ref;
      };
    }</code>
  </pre>
</cd:code-example-decorator>