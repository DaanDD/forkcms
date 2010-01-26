<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$LANGUAGE}" lang="{$LANGUAGE}">
<head>
	<title>{$pageTitle}</title>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="{$LANGUAGE}" />

	<link rel="shortcut icon" href="/favicon.ico" />

	<meta name="generator" content="Fork CMS" />
	<meta name="description" content="{$metaDescription}" />
	<meta name="keywords" content="{$metaKeywords}" />
	{$metaCustom}

	<!-- stylesheets -->
	{iteration:cssFiles}
		{option:!cssFiles.condition}<link rel="stylesheet" type="text/css" media="{$cssFiles.media}" href="{$cssFiles.file}" />{/option:!cssFiles.condition}
		{option:cssFiles.condition}<!--[if {$cssFiles.condition}]><link rel="stylesheet" type="text/css" media="{$cssFiles.media}" href="{$cssFiles.file}" /><![endif]-->{/option:cssFiles.condition}
	{/iteration:cssFiles}

	<!-- javascript files -->
	{iteration:javascriptFiles}
	<script type="text/javascript" src="{$javascriptFiles.file}"></script>
	{/iteration:javascriptFiles}
</head>

<body class="{$LANGUAGE} frontend">
	<div id="container">
		<div id="topbar">
			<!-- breadcrumb -->
			{include:file="{$FRONTEND_CORE_PATH}/layout/templates/breadcrumb.tpl"}

			<!-- user -->
			{include:file="{$FRONTEND_CORE_PATH}/layout/templates/user.tpl"}
		</div>

		<div id="header">
			<h1><a href="/">{$siteTitle}</a></h1>

			<!-- languages -->
			{include:file="{$FRONTEND_CORE_PATH}/layout/templates/languages.tpl"}
		</div>

		<div id="main">
			<!-- navigation -->
			<div id="navigation">
				{$var|getNavigation}
			</div>

			<!-- content -->
			<div id="content">
				<h2>Titel pagina</h2>

				<!-- Block 0 -->
				{option:blockAIsHTML}{$blockA}{/option:blockAIsHTML}
				{option:!blockAIsHTML}{include:file="{$blockA}"}{/option:!blockAIsHTML}

				<!-- Block 1 -->
				{option:blockBIsHTML}{$blockB}{/option:blockBIsHTML}
				{option:!blockBIsHTML}{include:file="{$blockB}"}{/option:!blockBIsHTML}

				<!-- Block 2 -->
				{option:blockCIsHTML}{$blockC}{/option:blockCIsHTML}
				{option:!blockCIsHTML}{include:file="{$blockC}"}{/option:!blockCIsHTML}
			</div>
		</div>

		<!-- footer -->
		{include:file="{$FRONTEND_CORE_PATH}/layout/templates/footer.tpl"}
	</div>
</body>
</html>