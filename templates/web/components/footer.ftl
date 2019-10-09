<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section id="copyright">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <h3>${contentModel.footerTitle_t}</h3>
                <p <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="footerData"/> >
                ${contentModel.copyright_t}
                <#if contentModel.showCredits_b">
                |
                ${contentModel.creditsLabel_t}
                <a rel="nofollow" href="${contentModel.linkURL}" target="_parent">${contentModel.linkLabel_t}</a>
                </#if>
                </p>
            </div>
        </div>
    </div>
</section>
<@studio.toolSupport />