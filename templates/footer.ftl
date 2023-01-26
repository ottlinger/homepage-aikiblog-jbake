		</div>
		<div id="push"></div>
    </div>
    
    <div id="footer">
      <div class="container">
        <p class="muted credit">&copy; 2010-${.now?string('yyyy')} | Created with ❤️ | Mixed with <a href="https://getbootstrap.com/" target="_blank">Bootstrap v3.1.1</a> | Baked with <a href="https://jbake.org" target="_blank">JBake ${version}</a> | Powered by OpenSource &amp; <a href="https://www.aiki-it.de">AIKI IT</a></p>
      </div>
    </div>
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery-1.11.1.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/prettify.js"></script>
    
  </body>
</html>
