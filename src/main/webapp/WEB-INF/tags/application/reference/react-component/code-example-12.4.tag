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
    constructor(props) {
      super(props);
      this.listRef = React.createRef();
    }
  
    getSnapshotBeforeUpdate(prevProps, prevState) {
      // Мы добавляем новые элементы списка?
      // Нужно захватиить позицию скрола, затем мы сможем его отрегулировать.
      if (prevProps.list.length < this.props.list.length) {
        const list = this.listRef.current;
        return list.scrollHeight - list.scrollTop;
      }
      return null;
    }
  
    componentDidUpdate(prevProps, prevState, snapshot) {
      // Если у нас есть ненулевое значение snapshot, 
      // мы просто добавляем новые элементы.
      // Отрегулируем скролл, и теперь новые элементы 
      // не вытолкнут старые из видимой области.
      // (snapshot - это значение, возвращенное из getSnapshotBeforeUpdate)
      if (snapshot !== null) {
        const list = this.listRef.current;
        list.scrollTop = list.scrollHeight - snapshot;
      }
    }
  
    render() {
      return (
        &lt;div ref={this.listRef}&gt;{/* ...чат... */}&lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>