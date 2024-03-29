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
        <title>Create AdresEntity</title>
    </head>
    <body>
        <f:view>
            <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            <h1>Create AdresEntity</h1>
            <h:form>
                <h:panelGrid columns="2">
                                                            <h:outputText value="id:"/>
                                                    <h:inputText value="#{adresEntity.entity.id}" title="id" />
                                                                                                        <h:outputText value="prim:"/>
                                                    <h:inputText value="#{adresEntity.entity.prim}" title="prim" />
                                                                                                        <h:outputText value="street:"/>
                                                    <h:inputText value="#{adresEntity.entity.street}" title="street" />
                                                                                                        <h:outputText value="number:"/>
                                                    <h:inputText value="#{adresEntity.entity.number}" title="number" />
                                                                                                        <h:outputText value="local:"/>
                                                    <h:inputText value="#{adresEntity.entity.local}" title="local" />
                                                                                                        <h:outputText value="postalCode:"/>
                                                    <h:inputText value="#{adresEntity.entity.postalCode}" title="postalCode" />
                                                                                                        <h:outputText value="town:"/>
                                                    <h:inputText value="#{adresEntity.entity.town}" title="town" />
                                                                                                        <h:outputText value="personalDataByUserId:"/>
                                                    <h:selectOneMenu value="#{adresEntity.entity.personalDataByUserId}"  title="personalDataByUserId">
                                <f:selectItems  value="#{personalDataEntity.allEntitiesAsSelectedItems}"/>
                            </h:selectOneMenu>
                                                                            </h:panelGrid>

                <h:commandButton action="#{adresEntity.create}" value="Save" />
                <h:commandButton action="adresEntityList" value="Cancel"/>
                <br>
            </h:form>
        </f:view>
    </body>
</html>
