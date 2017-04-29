<%@ tag pageEncoding="UTF-8" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="id" rtexprvalue="true" required="true" %>
<%@ attribute name="name" rtexprvalue="true" required="false" %>
<%@ attribute name="leftLabel"  required="false" type="java.lang.String" %>
<%@ attribute name="rightLabel" required="false" type="java.lang.String" %>
<%@ attribute name="checked" required="false" type="java.lang.Boolean" %>
<%@ attribute name="cssClass" required="false" type="java.lang.String" %>
<%@ attribute name="style" required="false" type="java.lang.String" %>

<div class="cloud-slider ${cssClass}" style="${style}">
    <table>
        <tbody>
        <tr>
            <td class="cs-left-label"><span>${leftLabel}</span></td>
            <td>
                <div class="switch small">
                    <input class="switch-check" id="${id}" name="${name}" type="checkbox" ${checked ? 'checked' : ''}>
                    <label class="switch-label" for="${id}">
                        <span class="switch-slider switch-slider-on"></span>
                        <span class="switch-slider switch-slider-off"></span>
                    </label>
                </div>
            </td>
            <td class="cs-right-label"><span>${rightLabel}</span></td>
        </tr>
        </tbody>
    </table>
</div>
