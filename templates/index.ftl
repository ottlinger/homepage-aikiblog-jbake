<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header">
		<h1>AIKIBLOG &mdash; Harmonie und IT</h1>
                <h2>Neues aus der Welt der Harmonie - in der Ruhe liegt die Kraft</h2>
	</div>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1>${post.title}</h1></a>
  			<p>${post.date?string("yyyy-MM-dd")}</p>
  			<p>${post.body}</p>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
