<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section id="team" class="parallax-section">
    <div class="container">
        <div class="row" <@studio.iceAttr component=contentModel iceGroup="teamData"/>>
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <h1 class="heading">${contentModel.title_t}</h1>
                <hr>
            </div>
            <#list contentModel.teamMembers_o.item as member>
                <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
                    <img src="${member.employeePhoto_s!""}" class="img-responsive center-block" alt="${member.employeeName_t}">
                    <h4>${member.employeeName_t!""}</h4>
                    <h3>${member.jobTitle_t!""}</h3>
                </div>
            </#list>
        </div>
    </div>
</section>