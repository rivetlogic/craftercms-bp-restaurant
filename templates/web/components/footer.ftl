<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="section" id="copyright">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
          <@studio.h3 $field="footerTitle_t">${contentModel.footerTitle_t}</@studio.h3>
        <p>
            <@studio.span $field="copyright_t">
                ${contentModel.copyright_t}
            </@studio.span>
            <#if contentModel.showCredits_b>
              |
                <@studio.span $field="creditsLabel_t">
                    ${contentModel.creditsLabel_t}
                </@studio.span>
              <a rel="nofollow" href="${contentModel.linkURL_s}" target="_parent">
                  <@studio.span $field="linkLabel_t">
                      ${contentModel.linkLabel_t}
                  </@studio.span>
              </a>
            </#if>
        </p>
      </div>
    </div>
  </div>
</@studio.componentRootTag>
