<#include "header.ftl">

	<#include "menu.ftl">
	
	<div class="page-header">
		<h1>AIKIBLOG - Archive</h1>
	</div>
	
	<!--<ul>-->
		<#list published_posts as post>
		<#if (last_month)??>
			<#if post.date?string("MMMM yyyy") != last_month>
				</ul>
				<h4>${post.date?string("MMMM yyyy")}</h4>
				<ul>
			</#if>
		<#else>
			<h4>${post.date?string("MMMM yyyy")}</h4>
			<ul>
		</#if>
		
		<li>${post.date?string("yyyy-MM-dd (EEE)")} - <a href="${content.rootpath}${post.uri}">${post.title}</a></li>
		<#assign last_month = post.date?string("MMMM yyyy")>
		</#list>
	</ul>
	
<#include "footer.ftl">
