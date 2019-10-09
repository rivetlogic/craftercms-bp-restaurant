<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <#global globalSiteName = contentModel.siteName />
        <title_t>${globalSiteName}</title_t>
        
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        
        <!-- CSS Files -->
        <#include "/templates/web/static-includes/css-libraries.ftl" />
    </head>
    <body>
        <!-- Preloader section -->
        <section class="preloader">
            <div class="sk-spinner sk-spinner-pulse"></div>
        </section>

        <!-- Navigation section -->
        <section class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="${contentModel.siteURL!'/'}" class="navbar-brand">${globalSiteName}</a>
                </div>
                <@renderComponent component = contentModel.menuBar_o.item />
            </div>
        </section>        
        


        <!-- Home section -->
        <section id="home" class="parallax-section" <@studio.iceAttr iceGroup="homepageGroup"/> style="background-image:url(${contentModel.homepageImage})">
            <div class="container">
                <div class="row"> 
                    <div class="col-md-12 col-sm-12">
                        <h1>${contentModel.title_t}</h1>
                        <h2>${contentModel.slogan_t}</h2>
                        <a href="#gallery" class="smoothScroll btn btn-default">${contentModel.buttonLabel_t}</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Gallery section -->
        <@renderComponent component = contentModel.dishGallery_o.item />

        <!-- Menu section -->
        <@renderComponent component = contentModel.foodMenu_o.item />

        <!-- Team section -->
        <@renderComponent component = contentModel.teamMembers_o.item />

		<!-- Contact us section -->
		<@renderComponent component = contentModel.contactUs_o.item />

        <!-- Copyright section -->
        <section id="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h3>${globalSiteName}</h3>
                        <@renderComponent component = contentModel.footer_o.item />
                    </div>
                </div>
            </div>
        </section>
        

        <!-- Javascript Files -->
        <#include "/templates/web/static-includes/js-libraries.ftl" />
        
        <@studio.toolSupport/>
    </body>
</html>