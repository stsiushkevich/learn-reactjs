<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  render() {
    const isNew = this.state.isNew;
    return (
      &lt;div&gt;
        <cd:hl>{isNew ? (</cd:hl>
                <cd:hl>&lt;div></cd:hl>
                   <cd:hl>&lt;EditButton onClick={this.onEdit} /&gt;</cd:hl>
                   <cd:hl>&lt;DeleteButton onClick={this.onDelete} /&gt;</cd:hl>
                <cd:hl>&lt;/div></cd:hl>
            <cd:hl>) : (</cd:hl>
                <cd:hl>&lt;AddButton onClick={this.onAdd} /&gt;</cd:hl>
            <cd:hl>)</cd:hl>
        <cd:hl>}</cd:hl>
      &lt;/div&gt;
    );
  }</code>
    </pre>
</cd:code-example-decorator>