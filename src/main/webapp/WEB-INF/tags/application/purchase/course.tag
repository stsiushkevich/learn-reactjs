<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="sections" required="false" rtexprvalue="true" %>
<%@ attribute name="price" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="level" required="false" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" %>

<c:url var="begginerImgUrl" value="/resources/imges/pages/purchase/boy.png"/>
<c:url var="specialistImgUrl" value="/resources/imges/pages/purchase/student.png"/>
<c:url var="professionalImgUrl" value="/resources/imges/pages/purchase/man.png"/>
<c:url var="masterImgUrl" value="/resources/imges/pages/purchase/professor.png"/>

<div class="course ${cssClass}" style="${style}">
  <div class="course__header">
    <div class="course__icon">
      <c:choose>
        <c:when test="${level eq 1}">
          <wg:img src="${begginerImgUrl}"/>
        </c:when>
        <c:when test="${level eq 2}">
          <wg:img src="${specialistImgUrl}"/>
        </c:when>
        <c:when test="${level eq 3}">
          <wg:img src="${professionalImgUrl}"/>
        </c:when>
        <c:when test="${level eq 4}">
          <wg:img src="${masterImgUrl}"/>
        </c:when>
        <c:otherwise>
          <c:when test="${level eq 1}">
            <wg:img src="${begginerImgUrl}"/>
          </c:when>
        </c:otherwise>
      </c:choose>
    </div>
    <div class="course__title"><b>${name}</b></div>
  </div>
  <ul class="course__sections">
    <c:forEach items="${fn:split(sections, ',')}" var="section">
      <li class="course__section">
        <div class="course__section-before-arrow"></div>
        <div>${fn:trim(section)}</div>
        <div class="course__section-after-arrow"></div>
      </li>
    </c:forEach>
  </ul>
  <div class="course__price">Цена: <span class="course__price-value">${price}</span></div>
</div>
