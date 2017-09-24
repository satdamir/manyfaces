<#include "header.ftl">

<#include "menu.ftl">

<#if content.page == 'dresses'>
    <#assign products = dresss?sort_by("index")>
<#elseif content.page == 'costumes'>
    <#assign products = costumes?sort_by("index")>
<#elseif content.page == 'exclusive'>
    <#assign products = exclusives?sort_by("index")>
</#if>

<div class="row">
<#list products as product>
    <div class="preview col-sm-6 col-md-3">
        <a href="${product.uri}">
            <img class="img-responsive"
                 src="${content.rootpath}images/${product.root}/${product.preview_file_name}"
                 alt="${product.product_name}" data-toggle="modal">
            <#if product.discount??>
                <span class="discount">-${product.discount}%</span>
            </#if>
            <h5>${product.product_name} / <span class="preview_desc">${product.preview_desc}</span></h5>
            <#if product.discount??>
                <h5>
                    <span class="price special-price">${product.price?number * (100 - product.discount?number) / 100}
                        руб</span>
                    <del class="price">${product.price} руб</del>
                </h5>
            <#else>
                <h5 class="price">${product.price} руб</h5>
            </#if>
        </a>
    </div>
    <#if product?counter % 4 == 0>
    </div>
    <div class="row">
    </#if>
</#list>
</div>

<#include "footer.ftl">