<!--
  Created by IntelliJ IDEA.
  User: wojtek
  Date: 09.12.18
  Time: 14:28
  To change this template use File | Settings | File Templates.
-->
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:f="http://java.sun.com/jsf/core"
      xmlns:h="http://java.sun.com/jsf/html">
<head>
    <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
    <meta content="text/html; charset=UTF-8" />
        <title>PersonalDataEntity View</title>
    </head>
    <body>
        <f:view>
            <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            <h1>PersonalDataEntity View</h1>
            <h:form>
                <h:panelGrid columns="2">
                                                           <h:outputText value="id:"/>
                                                   <h:outputText value="#{personalDataEntity.entity.id}" title="id" />
                                                                                                       <h:outputText value="familyName:"/>
                                                   <h:outputText value="#{personalDataEntity.entity.familyName}" title="familyName" />
                                                                                                       <h:outputText value="firstName:"/>
                                                   <h:outputText value="#{personalDataEntity.entity.firstName}" title="firstName" />
                                                                                                       <h:outputText value="birthDate:"/>
                                                   <h:outputText value="#{personalDataEntity.entity.birthDate}" title="birthDate" />
                                                                                                       <h:outputText value="birthPlace:"/>
                                                   <h:outputText value="#{personalDataEntity.entity.birthPlace}" title="birthPlace" />
                                                                                                       <h:outputText value="photo:"/>
                                                   <h:outputText value="#{personalDataEntity.entity.photo}" title="photo" />
                                                                                
                                                        
                                                        
                                                                               <h:outputText value="jobDataById:"/>
                                                   <h:selectOneMenu value="#{personalDataEntity.entity.jobDataById}"  title="jobDataById">
                                <f:selectItems  value="#{jobDataEntity.allEntitiesAsSelectedItems}"/>
                            </h:selectOneMenu>
                                                                                
                                                                               <h:outputText value="userByUserIdId:"/>
                                                   <h:selectOneMenu value="#{personalDataEntity.entity.userByUserIdId}"  title="userByUserIdId">
                                <f:selectItems  value="#{userEntity.allEntitiesAsSelectedItems}"/>
                            </h:selectOneMenu>
                                                                                
                                                        
                                                    </h:panelGrid>

                <h:commandButton action="editPersonalDataEntity" value="Edit" />
                <br/>
                <h:commandButton action="personalDataEntityList" value="Show All"/>
                <br/>
            </h:form>
        </f:view>
    </body>
</html>
