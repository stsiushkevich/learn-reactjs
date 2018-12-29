<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  import rafSchedule from 'raf-schd';
  
  class ScrollListener extends React.Component {
    constructor(props) {
      super(props);
  
      this.handleScroll = this.handleScroll.bind(this);
  
      // Создаем новую функцию, чтобы запланировать обновления.
      this.scheduleUpdate = rafSchedule(
        point =&gt; this.props.onScroll(point)
      );
    }
  
    handleScroll(e) {
      // Когда мы получаем событие scroll, планируем обновление.
      // Если мы получим много событий внутри фрейма, мы опубликуем только последнее значение.
      this.scheduleUpdate({ x: e.clientX, y: e.clientY });
    }
  
    componentWillUnmount() {
      // Отменяем все ожидающие обновления, так как компонент будет демонтирован.
      this.scheduleUpdate.cancel();
    }
  
    render() {
      return (
        &lt;div
            style={{ overflow: 'scroll' }}
          onScroll={this.handleScroll}
        &gt;
          &lt;img src="/my-huge-image.jpg" /&gt;
        &lt;/div&gt;
        );
    }
  }
    </code>
</pre>
</cd:code-example-decorator>
