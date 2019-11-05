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
  // маппинг состояния фильтра в свойства компонента-контейнера
  function mapStateToProps (state) {
     return {
         fields: state.appointment.list.dataSource.filter
     }
  }
  
  // подключение генераторов действий к компоненту-контейнеру
  function mapDispatchToProps(dispatch) {
     return {
         actions: {
             ...bindActionCreators(appointmentListActions, dispatch)
         }
     }
  }
  
  class AppointmentFilter extends Component {
    onChangeField = (name, value) => {
     this.changeFilterField(name, value, false)
   }
   
   onChangeDateField = (name, value) => {
     this.changeFilterField(name, value && value.getTime(), false)
   }
   
   onSearch = () => {
     this.change()
   }
   
   onClean = () => {
     this.clean()
   }
   
   // изменение определённых нескольких полей фильтра
   change (changes, shouldReload) {
     this.props
             .actions
             .changeFilter(changes, shouldReload)
   }
   
   // изменение определённого поля фильтра
   changeField (name, value, shouldReload) {
         this.props
             .actions
             .changeFilterField(name, value, shouldReload)
   }
   
   // сброс фильра
   clean () {
     this.props
             .actions
             .changeFilter()
   }
   
   // разметка
   render() {}
  }
  
  // объявляем контейнер
  export default connect(mapStateToProps, mapDispatchToProps)(AppointmentFilter)</code>
  </pre>
</cd:code-example-decorator>