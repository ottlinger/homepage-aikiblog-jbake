<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>AIKIBLOG – Harmonie und IT: Neues aus der Welt der Harmonie – in der Ruhe liegt die Kraft</title>
    <link>${config.site_host}</link>
    <atom:link href="${config.site_host}/${config.feed_file}" rel="self" type="application/rss+xml" />
    <description></description>
    <language>de-de</language>
    <pubDate>${published_date?string("yyyy-MM-dd HH:mm:ss Z (EEE)")}</pubDate>
    <lastBuildDate>${published_date?string("yyyy-MM-dd HH:mm:ss Z")}</lastBuildDate>

    <#list published_posts as post>
    <item>
      <title><#escape x as x?xml>${post.title}</#escape></title>
      <link>${config.site_host}/${post.uri}</link>
      <pubDate>${post.date?string("yyyy-MM-dd  HH:mm:ss Z (EEE)")}</pubDate>
      <guid isPermaLink="false">${post.uri}</guid>
      	<description>
	<#escape x as x?xml>	
	${post.body}
	</#escape>
	</description>
    </item>
    </#list>

  </channel> 
</rss>
