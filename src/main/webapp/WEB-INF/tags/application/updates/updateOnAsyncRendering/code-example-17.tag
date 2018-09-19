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
    // После
    class ExampleComponent extends React.Component {
      state = {
        externalData: null,
      };

<cd:hl>      static getDerivedStateFromProps(props, state) {
        // Сохраняем prevId в состояние, чтобы мы могли его сравнивать при изменении свойств.
        // Очищаем ранее загруженные данные (чтобы не отображать устаревшую информацию).
        if (props.id !== state.prevId) {
          return {
            externalData: null,
            prevId: props.id,
          };
        }

        // Нет необходимости обновлять состояние
        return null;
      }</cd:hl>

      componentDidMount() {
        this._loadAsyncData(this.props.id);
      }

<cd:hl>      componentDidUpdate(prevProps, prevState) {
        if (this.state.externalData === null) {
          this._loadAsyncData(this.props.id);
        }
      }</cd:hl>

      componentWillUnmount() {
        if (this._asyncRequest) {
          this._asyncRequest.cancel();
        }
      }

      render() {
        if (this.state.externalData === null) {
          // Отображение состояния загрузки...
        } else {
          // Отображения UI с данными...
        }
      }

      _loadAsyncData(id) {
        this._asyncRequest = asyncLoadData(id).then(
          externalData => {
            this._asyncRequest = null;
            this.setState({externalData});
          }
        );
      }
    }</code>
  </pre>
</cd:code-example-decorator>