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
  export default Record({
     error: null,
     isFetching: false,
     shouldReload: false,
     dataSource: Record({
         data: [],
         filter: Record({
             startDate: null,
             endDate: null,
             clientName: '',
             onlyMe: false
         })(),
         // сортировка
         <cd:hl>sorting: Record({</cd:hl>
         <cd:hl>    field: 'firstName',</cd:hl>
         <cd:hl>    order: 'asc'</cd:hl>
         <cd:hl>})()</cd:hl>
     })()
  })</code>
  </pre>
</cd:code-example-decorator>