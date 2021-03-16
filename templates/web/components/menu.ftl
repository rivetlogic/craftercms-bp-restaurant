<#import "/templates/system/common/ice.ftl" as studio />
<#include "/templates/web/functions/utils-functions.ftl">

<section id="menu" class="parallax-section">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <@studio.h1 $field="title_t" class="heading">
                    ${contentModel.title_t}
                </@studio.h1>
                <hr>
            </div>

            <#list contentModel.menuList_o.item as dishItem>
                <div class="col-md-6 col-sm-6">
                    <h4> ${dishItem.dishName_t?trim} ${dots(dishItem.dishName_t?trim, dishItem.dishPrice_s?trim)?trim} <span>${contentModel.dishPriceCurrency_s}${dishItem.dishPrice_s?trim}</span></h4>
                    <h5>${dishItem.dishIngredients_t?trim}</h5>
                </div>
            </#list>
        </div>
    </div>
</section>
