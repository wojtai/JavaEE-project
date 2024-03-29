<!--
  Created by IntelliJ IDEA.
  User: wojtek
  Date: 11.12.18
  Time: 09:46
  To change this template use File | Settings | File Templates.
-->
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>AdresEntity List</title>
    </head>
    <body>
        <f:view>
            <h1>AdresEntity List</h1>
            <h:form>
              <h:commandButton action="#{adresEntity.startCreate}" value="Create"/>

              <h:dataTable value='#{adresEntity.allEntities}' var='item' border="1" cellpadding="2" cellspacing="0">
                                                       <h:column>
                      <f:facet name="header">
                      <h:outputText value="id"/>
                      </f:facet>
                      <h:outputText value="#{item.id}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="prim"/>
                      </f:facet>
                      <h:outputText value="#{item.prim}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="street"/>
                      </f:facet>
                      <h:outputText value="#{item.street}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="number"/>
                      </f:facet>
                      <h:outputText value="#{item.number}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="local"/>
                      </f:facet>
                      <h:outputText value="#{item.local}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="postalCode"/>
                      </f:facet>
                      <h:outputText value="#{item.postalCode}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="town"/>
                      </f:facet>
                      <h:outputText value="#{item.town}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="personalDataByUserId"/>
                      </f:facet>
                      <h:outputText value="#{item.personalDataByUserId}"/>
                  </h:column>
                                                   <h:column>
                      <h:commandButton value="View" action="#{adresEntity.startView}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>&nbsp;
                      <h:commandButton value="Edit" action="#{adresEntity.startEdit}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>&nbsp;
                      <h:commandButton value="Delete" action="#{adresEntity.delete}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>
                  </h:column>
              </h:dataTable>
            </h:form>
        </f:view>
    </body>
</html>
