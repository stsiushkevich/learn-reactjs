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
      &lt;Action action={this.actions.entity.doSomething}/&gt;
      &lt;Action
        params={{ someParam }}
        shouldPerform={prevParams => (
          someParam !== prevParams.someParam
        )}
        action={this.actions.entity.doSomething}
      /&gt;
      &lt;Action
        isMultiple
        params={{ someParam }}
        shouldPerform={prevParams => (
          someParam !== prevParams.someParam
        )}
        action={this.actions.entity.doSomething}
      /&gt;
  </code>
  </pre>
</cd:code-example-decorator>