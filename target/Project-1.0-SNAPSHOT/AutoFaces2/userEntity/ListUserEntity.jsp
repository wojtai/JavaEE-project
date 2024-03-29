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
        <title>UserEntity List</title>
    </head>
    <body>
        <f:view>
            <h1>UserEntity List</h1>
            <h:form>
              <h:commandButton action="#{userEntity.startCreate}" value="Create"/>

              <h:dataTable value='#{userEntity.allEntities}' var='item' border="1" cellpadding="2" cellspacing="0">
                                                       <h:column>
                      <f:facet name="header">
                      <h:outputText value="id"/>
                      </f:facet>
                      <h:outputText value="#{item.id}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="username"/>
                      </f:facet>
                      <h:outputText value="#{item.username}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="roles"/>
                      </f:facet>
                      <h:outputText value="#{item.roles}"/>
                  </h:column>
                                                                        <h:column>
                      <f:facet name="header">
                      <h:outputText value="password"/>
                      </f:facet>
                      <h:outputText value="#{item.password}"/>
                  </h:column>
                                                                                     <h:column>
                      <h:commandButton value="View" action="#{userEntity.startView}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>&nbsp;
                      <h:commandButton value="Edit" action="#{userEntity.startEdit}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>&nbsp;
                      <h:commandButton value="Delete" action="#{userEntity.delete}">
                          <f:param name="id" value="#{item.id}"/>
                      </h:commandButton>
                  </h:column>
              </h:dataTable>
            </h:form>
        </f:view>
    </body>
</html>
