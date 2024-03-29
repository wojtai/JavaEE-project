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
        <title>EngagementEntity View</title>
    </head>
    <body>
        <f:view>
            <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            <h1>EngagementEntity View</h1>
            <h:form>
                <h:panelGrid columns="2">
                                                           <h:outputText value="id:"/>
                                                   <h:outputText value="#{engagementEntity.entity.id}" title="id" />
                                                                                                       <h:outputText value="personalDataByPersonId:"/>
                                                   <h:selectOneMenu value="#{engagementEntity.entity.personalDataByPersonId}"  title="personalDataByPersonId">
                                <f:selectItems  value="#{personalDataEntity.allEntitiesAsSelectedItems}"/>
                            </h:selectOneMenu>
                                                                                                       <h:outputText value="staffCategoryByStaffCategoryId:"/>
                                                   <h:selectOneMenu value="#{engagementEntity.entity.staffCategoryByStaffCategoryId}"  title="staffCategoryByStaffCategoryId">
                                <f:selectItems  value="#{staffCategoryEntity.allEntitiesAsSelectedItems}"/>
                            </h:selectOneMenu>
                                                                            </h:panelGrid>

                <h:commandButton action="editEngagementEntity" value="Edit" />
                <br>
                <h:commandButton action="engagementEntityList" value="Show All"/>
                <br>
            </h:form>
        </f:view>
    </body>
</html>
