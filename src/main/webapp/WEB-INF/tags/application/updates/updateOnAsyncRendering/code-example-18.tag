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
      previousScrollOffset = null;

<cd:hl>      componentWillUpdate(nextProps, nextState) {
        // Добавляем ли мы новые элементы в список?
        // Запомним положение прокрутки, чтобы мы позже могли ее отрегулировать.
        if (this.props.list.length < nextProps.list.length) {
          this.previousScrollOffset =
            this.listRef.scrollHeight - this.listRef.scrollTop;
        }
      }</cd:hl>

<cd:hl>      componentDidUpdate(prevProps, prevState) {
        // Если установлено previousScrollOffset, значит мы только что добавили новые элементы.
        // Отрегулируем прокрутку, чтобы новые элементы не вытесняли старые из виду.
        if (this.previousScrollOffset !== null) {
          this.listRef.scrollTop =
            this.listRef.scrollHeight -
            this.previousScrollOffset;
          this.previousScrollOffset = null;
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