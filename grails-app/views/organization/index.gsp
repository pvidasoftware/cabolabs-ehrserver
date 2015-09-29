<%@ page import="com.cabolabs.security.Organization" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="admin">
    <g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
  </head>
  <body>
    <a href="#list-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
      <ul>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
      </ul>
    </div>
    <div id="list-organization" class="content scaffold-list" role="main">
      <h1><g:message code="default.list.label" args="[entityName]" /></h1>
      <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
      </g:if>
      <table>
      <thead>
          <tr>
            <g:sortableColumn property="name" title="${message(code: 'organization.name.label', default: 'Name')}" />
            <g:sortableColumn property="number" title="${message(code: 'organization.number.label', default: 'Pin')}" />
            <g:sortableColumn property="uid" title="${message(code: 'organization.uid.label', default: 'Uid')}" />
          </tr>
        </thead>
        <tbody>
        <g:each in="${organizationInstanceList}" status="i" var="organizationInstance">
          <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <td><g:link action="show" id="${organizationInstance.id}">${fieldValue(bean: organizationInstance, field: "name")}</g:link></td>
            <td>${fieldValue(bean: organizationInstance, field: "number")}</td>
            <td>${fieldValue(bean: organizationInstance, field: "uid")}</td>
          </tr>
        </g:each>
        </tbody>
      </table>
      <div class="pagination">
        <g:paginate total="${organizationInstanceCount ?: 0}" />
      </div>
    </div>
  </body>
</html>
