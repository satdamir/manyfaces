<#include "header.ftl">

<#include "menu.ftl">

<#include "right-column-head.ftl">

<#assign products = (dresss + costumes)?sort_by("special_index")>
<#assign i = 0>
<div class="row">
<#list products as product>
    <#if product.special_index != 'NO'>
        <#assign i += 1>
        <div class="preview col-sm-6 col-md-4">
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
        <#if i%3 == 0>
        </div>
        <div class="row">
        </#if>
    </#if>
</#list>
</div>
<#include "right-column.ftl">
<#include "footer.ftl">