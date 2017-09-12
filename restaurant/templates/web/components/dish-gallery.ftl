<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section id="gallery" class="parallax-section">
    <div class="container">
        <div class="row" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="dishGallery"/>>
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <h1 class="heading">${contentModel.title}</h1>
                <hr>
            </div>
            
            <#assign breaker = 0 />
            <#list contentModel.dishList.item as dishItem>
                <#if dishItem?index == (0 + breaker) || dishItem?index == (2 + breaker) || dishItem?index == (3 + breaker) >
                    <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
                </#if>
                
                <a href="${dishItem.dishImage}" data-lightbox-gallery="zenda-gallery">
                  <img src="${dishItem.dishImage}" alt="gallery img">
                </a>
                
                <div>
                  <h3>${dishItem.dishName}</h3>
                  <span>${dishItem.dishIngredients}</span>
                </div>
                
                <#if dishItem?index == (1 + breaker) || dishItem?index == (2 + breaker) || dishItem?index == (4 + breaker) >
                    </div>
                </#if>
                
                <#if dishItem?index == (4  + breaker)>
                    <#assign breaker = (breaker + 5) />
                </#if>
                
                <#if dishItem?is_last>
                	</div>
                </#if>
            </#list>
            
        </div>
    </div>
</section>
<@studio.toolSupport />