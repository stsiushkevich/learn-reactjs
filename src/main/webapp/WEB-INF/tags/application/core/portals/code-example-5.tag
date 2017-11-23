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
  // Эти два контейнера являются соседями в DOM
  const appRoot = document.getElementById('app-root');
  const modalRoot = document.getElementById('modal-root');
  
  class Modal extends React.Component {
    constructor(props) {
      super(props);
      this.el = document.createElement('div');
    }
  
    componentDidMount() {
      /*
        Элемент портала вставлен в дерево DOM после того, как потомки Modal
      были монтированы, что означает, что потомки будут монтированы в отдельный
      узел DOM.
        Если дочерний компонент требует присоединения к дереву DOM сразу после
      его монтирования, например, для измерения узла DOM или использования
      «autoFocus» в потомке, добавьте состояние в Modal и отрисуйте дочерние
      элементы, после того, как Modal будет вставлен в DOM дерево.
      */
      modalRoot.appendChild(this.el);
    }
  
    componentWillUnmount() {
      modalRoot.removeChild(this.el);
    }
  
    render() {
      return ReactDOM.createPortal(
        this.props.children,
        this.el,
      );
    }
  }
  
  class Parent extends React.Component {
    constructor(props) {
      super(props);
      this.state = {clicks: 0};
      this.handleClick = this.handleClick.bind(this);
    }
  
    handleClick() {
      // Он сработает, когда кнопка в Child будет нажата,
      // обновляя состояние Parent, даже если кнопка
      // не является его прямым потомком в DOM.
      this.setState(prevState =&gt; ({
        clicks: prevState.clicks + 1
      }));
    }
  
    render() {
      return (
        &lt;div onClick={this.handleClick}&gt;
          &lt;p&gt;Число кликов: {this.state.clicks}&lt;/p&gt;
          &lt;p&gt;
            Откройте DevTools браузера,
            чтобы увидеть, что кнопка button
            не является потомком div
            с обработчиком onClick.
          &lt;/p&gt;
          &lt;Modal&gt;
            &lt;Child /&gt;
          &lt;/Modal&gt;
        &lt;/div&gt;
      );
    }
  }
  
  function Child() {
    // Событие клика на этой кнопке будет всплывать к Parent,
    // так как нет заданного 'onClick' атрибута
    return (
      &lt;div className="modal"&gt;
        &lt;button&gt;Click&lt;/button&gt;
      &lt;/div&gt;
    );
  }
  
  ReactDOM.render(&lt;Parent /&gt;, appRoot);</code>
  </pre>
</cd:code-example-decorator>