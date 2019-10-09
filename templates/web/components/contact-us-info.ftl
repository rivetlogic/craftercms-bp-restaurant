<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer class="parallax-section">
    <div class="container">
        <div class="row">
        
            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="contactInfoData"/>>
                <h2 class="heading">${contentModel.contactInfoLabel_t}</h2>
                <div class="ph">
                    <p>
                        <i class="fa fa-phone" id="fa-icono"></i> 
                        ${contentModel.phoneLabel_t}
                    </p>
                    <h4>${contentModel.phoneNumber_s}</h4>
                </div>
                <div class="address">
                    <p>
                        <i class="fa fa-map-marker" id="fa-icono"></i> 
                        ${contentModel.locationLabel_t}
                    </p>
                    <h4>${contentModel.location_t}</h4>
                </div>
            </div>
            
            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="openHoursData"/>>
            	<h2 class="heading">${contentModel.openHoursLabel_t}</h2>
                <#list contentModel.openDays_o.item as item>
                    <p>
                        ${item.openDay_t}
                        <span>
                            ${item.openAt?datetime.iso?time?string.short}
                             - 
                            ${item.openAt?datetime.iso?time?string.short}
                        </span>
                    </p>
                </#list>
            </div>
            
            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="socialLinksData"/>>
                <h2 class="heading">${contentModel.socialLinksTitle}</h2>
                <ul class="social-icon">
                    <#list contentModel.contactSocialLinks.item as item>
                        <li>
                            <a href="${item.socialLinkUrl!""}" class="fa fa-${item.socialLinkType} wow bounceIn" data-wow-delay="0.3s"></a>
                        </li>
                    </#list>
                </ul>
            </div>
            
        </div>
    </div>
</footer>
<@studio.toolSupport />