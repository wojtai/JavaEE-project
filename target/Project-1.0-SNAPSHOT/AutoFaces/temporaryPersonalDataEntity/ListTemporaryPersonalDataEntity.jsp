<!--
  Created by IntelliJ IDEA.
  User: wojtek
  Date: 09.12.18
  Time: 14:28
  To change this template use File | Settings | File Templates.
-->
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>TemporaryPersonalDataEntity List</title>
    </head>
    <body>
        <f:view>
            <h1>TemporaryPersonalDataEntity List</h1>
            <h:form>
              <h:commandButton action="#{temporaryPersonalDataEntity.startCreate}" value="Create"/>

              <h:dataTable value='#{temporaryPersonalDataEntity.allEntities}' var='item' border="1" cellpadding="2" cellspacing="0">
                                                       <h:column>
                      <f:facet name="header">
                      <h:outputText value="id"/>
                      </f:facet>
                      <h:outputText value="#{item.id}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="timestamp"/>
                      </f:facet>
                      <h:outputText value="#{item.timestamp}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="userId"/>
                      </f:facet>
                      <h:outputText value="#{item.userId}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="familyName"/>
                      </f:facet>
                      <h:outputText value="#{item.familyName}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="firstName"/>
                      </f:facet>
                      <h:outputText value="#{item.firstName}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="birthDate"/>
                      </f:facet>
                      <h:outputText value="#{item.birthDate}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="birthPlace"/>
                      </f:facet>
                      <h:outputText value="#{item.birthPlace}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="photo"/>
                      </f:facet>
                      <h:outputText value="#{item.photo}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="adres"/>
                      </f:facet>
                      <h:outputText value="#{item.adres}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="emails"/>
                      </f:facet>
                      <h:outputText value="#{item.emails}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="phoneNumbers"/>
                      </f:facet>
                      <h:outputText value="#{item.phoneNumbers}"/>
                  </h:column>
                                                   <h:column>
                      <h:commandButton value="View" action="#{temporaryPersonalDataEntity.startView}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>&nbsp;
                      <h:commandButton value="Edit" action="#{temporaryPersonalDataEntity.startEdit}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>&nbsp;
                      <h:commandButton value="Delete" action="#{temporaryPersonalDataEntity.delete}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>
                  </h:column>
              </h:dataTable>
            </h:form>
        </f:view>
    </body>
</html>
