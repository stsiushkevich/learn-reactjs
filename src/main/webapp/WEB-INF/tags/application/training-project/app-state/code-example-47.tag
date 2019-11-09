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
 onChangeFilterField = (name, value) => {
   <cd:hl>this.actions.changeFilterField(name, value)</cd:hl>
 }

 onChangeFilterDateField = (name, value) => {
   <cd:hl>this.actions.changeFilterField(name, value && value.getTime())</cd:hl>
 }

 onSearch = () => {
   this.load()
 }

 get actions () {
   return this.props.actions
 }

 load() {
   <cd:hl>this.actions.load({</cd:hl>
   <cd:hl>    ...this.props.dataSource.filter.toJS()</cd:hl>
   <cd:hl>})</cd:hl>
 }

 loadStatuses () {
   <cd:hl>this.actions.status.list.load()</cd:hl>
 }</code>
  </pre>
</cd:code-example-decorator>