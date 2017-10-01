<#include "header.ftl">

<#include "menu.ftl">

<div class="row">
    <div class="col-sm-12 col-md-12">
        <h2 class="contacts-label text-center">Контакты</h2>
    </div>
</div>

<div class="row">
    <div class="col-sm-9 col-md-9">
        <h3>Вконтакте</h3>
        <div id="contact-vk"></div>
        <script type="text/javascript">
            VK.Widgets.ContactUs("contact-vk", {}, -64928993);
        </script>
        <h3>Телефон</h3>
        <p>+7 (996) 337 1200</p>
        <h3>Почта</h3>
        <p>manyfacesdress@icloud.com</p>
    </div>
    <div class="col-sm-3 col-md-3">
        <!-- VK Widget -->
        <div id="vk_groups"></div>
        <script type="text/javascript">
            VK.Widgets.Group("vk_groups", {mode: 3, width: "auto", height: "400", color3: '222222'}, 64928993);
        </script>
    </div>
</div>

<#include "footer.ftl">