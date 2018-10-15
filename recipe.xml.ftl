<?xml version="1.0"?>
<recipe>

<#if FRAGMENT>	
<instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}Fragment.java" />
</#if>
<instantiate from="src/app_package/ViewInput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}ViewInput.java" />

   <#if ACTIVITY>
<instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}Activity.java" />
</#if>
<instantiate from="src/app_package/ViewOutput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}ViewOutput.java" />
<instantiate from="src/app_package/Interactor.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}Interactor.java" />
<instantiate from="src/app_package/InteractorInput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}InteractorInput.java" />
<instantiate from="src/app_package/InteractorOutput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}InteractorOutput.java" />
 
 <#if DAGGER>
<instantiate from="src/app_package/Scope.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}Scope.java" />
<instantiate from="src/app_package/Module.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}Module.java" />	
</#if>


<instantiate from="src/app_package/Presenter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${NAME}Presenter.java" />
<open file="${srcOut}/${NAME}Presenter.java"/>
</recipe>