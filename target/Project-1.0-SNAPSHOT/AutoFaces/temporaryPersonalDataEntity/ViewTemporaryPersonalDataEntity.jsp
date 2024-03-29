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
        <title>TemporaryPersonalDataEntity View</title>
    </head>
    <body>
        <f:view>
            <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            <h1>TemporaryPersonalDataEntity View</h1>
            <h:form>
                <h:panelGrid columns="2">
                                                           <h:outputText value="id:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.id}" title="id" />
                                                                                                       <h:outputText value="timestamp:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.timestamp}" title="timestamp" />
                                                                                                       <h:outputText value="userId:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.userId}" title="userId" />
                                                                                                       <h:outputText value="familyName:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.familyName}" title="familyName" />
                                                                                                       <h:outputText value="firstName:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.firstName}" title="firstName" />
                                                                                                       <h:outputText value="birthDate:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.birthDate}" title="birthDate" />
                                                                                                       <h:outputText value="birthPlace:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.birthPlace}" title="birthPlace" />
                                                                                                       <h:outputText value="photo:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.photo}" title="photo" />
                                                                                                       <h:outputText value="adres:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.adres}" title="adres" />
                                                                                                       <h:outputText value="emails:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.emails}" title="emails" />
                                                                                                       <h:outputText value="phoneNumbers:"/>
                                                   <h:outputText value="#{temporaryPersonalDataEntity.entity.phoneNumbers}" title="phoneNumbers" />
                                                                            </h:panelGrid>

                <h:commandButton action="editTemporaryPersonalDataEntity" value="Edit" />
                <br>
                <h:commandButton action="temporaryPersonalDataEntityList" value="Show All"/>
                <br>
            </h:form>
        </f:view>
    </body>
</html>
