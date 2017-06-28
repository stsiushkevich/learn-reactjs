<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  function BackButton(props) {
    return (
      &lt;button className={'back-button'}&gt;{props.children}&lt;/button&gt;
    );
  }

  function NavButton(props) {
    return (
      &lt;button className={'nav-button'}&gt;{props.children}&lt;/button&gt;
    );
  }

  function NavButtons(props) {
    return (
      &lt;div className={'nav-buttons'}&gt;{props.children}&lt;/div&gt;
    );
  }

  function NavBar(props) {
    return (
      &lt;div className="nav-bar"&gt;
        &lt;div className="nav-bar__back-button-wrapper"&gt;<cd:hl>{props.backButton}</cd:hl>&lt;/div&gt;
        &lt;div className="nav-bar__nav-buttons-wrapper"&gt;<cd:hl>{props.navButtons}</cd:hl>&lt;/div&gt;
      &lt;/div&gt;
    );
  }

  function App(){
    let navButtons = (
      &lt;NavButtons&gt;
        &lt;NavButton&gt;Один&lt;/NavButton&gt;
        &lt;NavButton&gt;Два&lt;/NavButton&gt;
        &lt;NavButton&gt;Три&lt;/NavButton&gt;
      &lt;/NavButtons&gt;
    );
    let backButton = (&lt;BackButton&gt;Назад&lt;/BackButton&gt;);
    return (
      &lt;p&gt;
        &lt;NavBar <cd:hl>backButton={backButton}</cd:hl> <cd:hl>navButtons={navButtons}</cd:hl>/&gt;
      &lt;/p&gt;
    );
  }</code>
    </pre>
</cd:code-example>