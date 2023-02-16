<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title><#if (content.title)??>${content.title}<#else>AIKIBLOG &mdash; Harmonie und IT</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Private blog - aiki blog">
    <meta name="author" content="phil">
    <meta name="keywords" content="">
    <meta name="generator" content="JBake">

    <!-- Le styles -->
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/bootstrap.min.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/asciidoctor.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/base.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/prettify.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon" sizes="180x180" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon/apple-touch-icon.png">
    <link rel="icon" sizes="512x512" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon/android-chrome-512x512.png" type="image/png">
    <link rel="icon" sizes="192x192" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon/android-chrome-192x192.png" type="image/png">
    <link rel="icon" sizes="32x32" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon/favicon-32x32.png" type="image/png">
    <link rel="icon" sizes="16x16" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon/favicon-16x16.png" type="image/png">


    <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon/favicon.ico" type="image/x-icon">
    <meta content="#ffffff" name="msapplication-TileColor">
<!-- FIXME -->
    <meta content="/ms-icon-144x144.png" name="msapplication-TileImage">

    <meta content="#ffffff" name="theme-color">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
<!-- FIXME -->
    <link rel="manifest" href="/manifest.json">

  </head>
  <body onload="prettyPrint()">
    <div id="wrap">
