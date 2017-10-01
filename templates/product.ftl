<#include "header.ftl">

<#include "menu.ftl">

<div class="row">
    <div class="detailed col-sm-5 col-md-5">
        <img class="img-responsive" src="${content.rootpath}images/${content.root}/${content.preview_file_name}"
             alt="${content.product_name}" data-toggle="modal" data-target="#product-modal">
    <#if content.discount??>
        <span class="discount">-${content.discount}%</span>
    </#if>
        <div class="product-fullscreen" data-toggle="modal" data-target="#product-modal"><span
                class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
        </div>
    </div>
    <div class="detailed col-sm-7 col-md-7">
        <h3>${content.product_name}</h3>
    ${content.body}
    <#if content.discount??>
        <h5>
            <span class="price special-price">${content.price?number * (100 - content.discount?number) / 100} руб</span>
            <del class="price">${content.price} руб</del>
        </h5>
    <#else>
        <h5 class="price">${content.price} руб</h5>
    </#if>
    </div>
</div>

<div class="detailed modal" id="product-modal" tabindex="-1" role="img"
     aria-labelledby="myModalLabel">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
            class="glyphicon glyphicon-remove" aria-hidden="true"></span>
    </button>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div id="product-carousel" class="carousel slide" data-ride="carousel"
                     data-interval="false">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                    <#list content.detailed_file_names?split(",") as detailed_file_name>
                        <div class="item ${(detailed_file_name?index == 0)?then('active', '')}">
                            <div class="vertical-align-helper"></div>
                            <img src="${content.rootpath}images/${content.root}/${detailed_file_name}">
                        </div>
                    </#list>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#product-carousel" role="button"
                       data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#product-carousel" role="button"
                       data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>


<#include "footer.ftl">