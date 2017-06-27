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
  class FirePlace extends React.Component {
    constructor(props) {
      super(props);
      this.onSetFire = this.onSetFire.bind(this);
      this.onSnuffOut = this.onSnuffOut.bind(this);
      this.state = {isBurning: false};
    }

    onSetFire() {
      this.setState({isBurning: true});
    }

    onSnuffOut() {
      this.setState({isBurning: false});
    }

    render() {
      const isBurning = this.state.isBurning;

      <cd:hl>let button = null;</cd:hl>
      <cd:hl>if(isBurning){</cd:hl>
        <cd:hl>button = &lt;SnuffOutButton onClick={this.onSnuffOut} /&gt;</cd:hl>
      <cd:hl>} else {</cd:hl>
        <cd:hl>button = &lt;SetFireButton onClick={this.onSetFire} /&gt;;</cd:hl>
      <cd:hl>}</cd:hl>
      return (
        &lt;div&gt;
          <cd:hl>&lt;Indicator isBurning={isBurning} /&gt;</cd:hl>
          <cd:hl>{button}</cd:hl>
        &lt;/div&gt;
      );
    }
  }</code>
    </pre>
</cd:code-example>