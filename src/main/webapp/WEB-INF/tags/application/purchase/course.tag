<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>

<%@ attribute name="sections" required="false" rtexprvalue="true" %>
<%@ attribute name="price" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" %>

<div class="course ${cssClass}" style="${style}">
  <h3 class="course__title"><b>Курс: ${name}</b></h3>
  <ul class="course__sections">
    <c:forEach items="${fn:split(sections, ',')}" var="section">
      <li class="course__section">${fn:trim(section)}</li>
    </c:forEach>
  </ul>
  <div style="text-align: center">
    <div class="course__price">Цена: <span class="course__price-value">${price}</span></div>
  </div>
</div>
