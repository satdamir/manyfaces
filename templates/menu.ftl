<nav class="navbar navbar-default navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                data-target="#navbar" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">Manyfaces</a>
    </div>

    <div class="pull-left nav-left"></div>
    <div class="collapse navbar-collapse" id="navbar">
        <ul class="nav navbar-nav">
            <li class="${(content.page??)?string("", "active")}"><a
                    href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">Спецпредложения</a>
            </li>
            <li class="${((content.page!"") == "exclusive")?string("active", "")}"><a
                    href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>exclusive.html">Эксклюзив</a></li>
            <li class="${((content.page!"") == "dresses")?string("active", "")}"><a
                    href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>dresses.html">Платья</a></li>
            <li class="${((content.page!"") == "costumes")?string("active", "")}"><a
                    href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>costumes.html">Костюмы</a></li>
            <li class="${((content.page!"") == "projects")?string("active", "")}"><a
                    href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>costumes.html">Фотопроекты</a>
            </li>
            <li class="${((content.page!"") == "contacts")?string("active", "")}"><a
                    href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>contacts.html">Контакты</a></li>
        </ul>
    </div>
    <div class="pull-right nav-right"></div>
</nav>