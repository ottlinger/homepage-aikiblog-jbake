	<!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>"><img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>logo.png" style="height:40px;" alt="AIKI Blog"</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>impressum.html">Impressum</a></li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>links/links.html">Links</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Seiten <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>aikido.html">Aikido</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>dojo.html">KaiShinKan - Dojo in Brandenburg</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>verhaltensregeln.html">Verhaltensregeln</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Ablage</li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>podcasts.html">Podcasts</a></li>
              </ul>
            </li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>archive.html">Archive</a></li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.feed_file}">Subscribe</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container">
