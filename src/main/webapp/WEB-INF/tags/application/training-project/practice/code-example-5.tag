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
  export default class Table extends Component {
  
   // ...
   
   onRefresh = (type, { page }) => {
    this.props.onRefresh(page)
   }
   
   // ...
   
   render() {
     // ...
   
     return (
       &lt;div className={cn('TableContainer', containerClass)}&gt;
         &lt;BootstrapTable
            // ...
            <cd:hl>onTableChange={this.onRefresh}</cd:hl>
            // ...
         /&gt;
       &lt;/div&gt;
     )
   }
  }</code>
  </pre>
</cd:code-example-decorator>