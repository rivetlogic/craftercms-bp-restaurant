<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="section" id="team" class="parallax-section">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <@studio.h1 $field="title_t" class="heading">
                    ${contentModel.title_t}
                </@studio.h1>
                <hr>
            </div>

            <@studio.tag $field="teamMembers_o">
                <#list contentModel.teamMembers_o.item as member>
                    <#assign index = member?index>

                    <@studio.tag $field="teamMembers_o" $index=index class="col-md-4 col-sm-4 wow fadeInUp" $attrs={ 'data-wow-delay': '0.3s' }>
                        <@studio.img
                        $field="teamMembers_o.employeePhoto_s,teamMembers_o.employeeName_t"
                        $index=index
                        src=(member.employeePhoto_s)
                        alt=(member.employeeName_t)
                        class="img-responsive center-block"
                        />

                        <@studio.h4 $field="teamMembers_o.employeeName_t" $index=index>
                            ${member.employeeName_t!""}
                        </@studio.h4>

                        <@studio.h4 $field="teamMembers_o.jobTitle_t" $index=index>
                            ${member.jobTitle_t!""}
                        </@studio.h4>
                    </@studio.tag>
                </#list>
            </@studio.tag>
        </div>
    </div>
</@studio.componentRootTag>