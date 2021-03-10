<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="footer" class="parallax-section">
    <div class="container">
        <div class="row">

            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                <@studio.h2 $field="contactInfoLabel_t" class="heading">
                    ${contentModel.contactInfoLabel_t}
                </@studio.h2>
                <div class="ph">
                    <p>
                        <i class="fa fa-phone" id="fa-icono"></i>
                        <@studio.span $field="phoneLabel_t">
                            ${contentModel.phoneLabel_t}
                        </@studio.span>
                    </p>
                    <@studio.h4 $field="phoneNumber_s">${contentModel.phoneNumber_s}</@studio.h4>
                </div>
                <div class="address">
                    <p>
                        <i class="fa fa-map-marker" id="fa-icono"></i>
                        <@studio.span $field="locationLabel_t">
                            ${contentModel.locationLabel_t}
                        </@studio.span>
                    </p>
                    <@studio.h4 $field="location_t">${contentModel.location_t}</@studio.h4>
                </div>
            </div>

            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                <@studio.h2 $field="openHoursLabel_t" class="heading">
                    ${contentModel.openHoursLabel_t}
                </@studio.h2>

                <#list contentModel.openDays_o.item as item>
                    <p>
                        ${item.openDay_t}
                        <span>
                            ${item.openAt_dt?time?string.short}
                            -
                            ${item.closedAt_dt?time?string.short}
                        </span>
                    </p>
                </#list>
            </div>

            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                <@studio.h2 $field="socialLinksTitle_t" class="heading">
                    ${contentModel.socialLinksTitle_t}
                </@studio.h2>
                <ul class="social-icon">
                    <#list contentModel.contactSocialLinks_o.item as item>
                        <li>
                            <a href="${item.socialLinkUrl!""}" class="fa fa-${item.socialLinkType_s} wow bounceIn" data-wow-delay="0.3s"></a>
                        </li>
                    </#list>
                </ul>
            </div>

        </div>
    </div>
</@studio.componentRootTag>