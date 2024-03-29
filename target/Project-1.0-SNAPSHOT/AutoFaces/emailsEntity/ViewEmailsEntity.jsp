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
        <title>EmailsEntity View</title>
    </head>
    <body>
        <f:view>
            <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            <h1>EmailsEntity View</h1>
            <h:form>
                <h:panelGrid columns="2">
                                                           <h:outputText value="id:"/>
                                                   <h:outputText value="#{emailsEntity.entity.id}" title="id" />
                                                                                                       <h:outputText value="prim:"/>
                                                   <h:outputText value="#{emailsEntity.entity.prim}" title="prim" />
                                                                                                       <h:outputText value="value:"/>
                                                   <h:outputText value="#{emailsEntity.entity.value}" title="value" />
                                                                                                       <h:outputText value="personalDataByUserId:"/>
                                                   <h:selectOneMenu value="#{emailsEntity.entity.personalDataByUserId}"  title="personalDataByUserId">
                                <f:selectItems  value="#{personalDataEntity.allEntitiesAsSelectedItems}"/>
                            </h:selectOneMenu>
                                                                            </h:panelGrid>

                <h:commandButton action="editEmailsEntity" value="Edit" />
                <br>
                <h:commandButton action="emailsEntityList" value="Show All"/>
                <br>
            </h:form>
        </f:view>
    </body>
</html>
