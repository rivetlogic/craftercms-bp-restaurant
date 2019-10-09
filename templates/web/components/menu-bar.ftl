<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- navigation section_s -->
<div class="collapse navbar-collapse">
  	<ul class="nav navbar-nav navbar-right" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="navigationBar"/>>
    	<#list contentModel.navigationItems_o.item as item>
            <li>
              	<a href="#${item.section_s}" class="smoothScroll">${item.navigationItem_t}</a>
            </li>
    	</#list>
  	</ul>
</div>
<@studio.toolSupport/>