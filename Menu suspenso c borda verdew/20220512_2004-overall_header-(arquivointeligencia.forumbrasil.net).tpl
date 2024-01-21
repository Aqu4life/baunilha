<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="{S_CONTENT_DIRECTION}" id="min-width" lang="{L_LANG_HTML}" xml:lang="{L_LANG_HTML}" {NAMESPACE_FB_LIKE} {NAMESPACE_FB} {NAMESPACE_BBCODE}>
<head>
	<title>{SITENAME_TITLE}{PAGE_TITLE}</title>
	<meta http-equiv="content-type" content="text/html; charset={S_CONTENT_ENCODING}" />
	<meta http-equiv="content-script-type" content="text/javascript" />
	<meta http-equiv="content-style-type" content="text/css" />
	<!-- BEGIN switch_compat_meta -->
		<meta http-equiv="X-UA-Compatible" content="IE={switch_compat_meta.VERSION}" />
	<!-- END switch_compat_meta -->
	<!-- BEGIN switch_canonical_url -->
		<link rel="canonical" href="{switch_canonical_url.CANONICAL_URL}" />
	<!-- END switch_canonical_url -->
	{META_FAVICO}
	{META}
	{META_FB_LIKE}
	<meta name="title" content="{SITENAME_TITLE}{PAGE_TITLE}" />
	{T_HEAD_STYLESHEET}
	{CSS}
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Amatic+SC|Permanent+Marker&display=swap" rel="stylesheet">
	<link rel="search" type="application/opensearchdescription+xml" href="/improvedsearch.xml" title="{SITENAME}" />
	<link rel="search" type="application/opensearchdescription+xml" href="{URL_BOARD_DIRECTORY}/search/improvedsearch.xml" title="{SEARCH_FORUMS}" />
	<script src="{JQUERY_PATH}" type="text/javascript"></script>
    <!-- BEGIN switch_recent_jquery -->
    <script src="{JS_DIR}jquery1.9/jquery-migrate-1.4.1.js" type="text/javascript"></script>
    <script src="{JQUERY_DIR}browser/v1.0/jquery.browser.min.js" type="text/javascript"></script>
    <script src="{JQUERY_DIR}support/jquery.support.js" type="text/javascript"></script>
    <!-- END switch_recent_jquery -->
	<script src="{JS_DIR}{L_LANG}.js" type="text/javascript"></script>
    {RICH_SNIPPET_GOOGLE}

	<!-- BEGIN switch_fb_login -->
		<script src="https://connect.facebook.net/{switch_fb_login.FB_LOCAL}/all.js" type="text/javascript"></script>
		<script src="{switch_fb_login.JS_FB_LOGIN}" type="text/javascript"></script>
	<!-- END switch_fb_login -->

	<!-- BEGIN switch_ticker -->
		<link type="text/css" rel="stylesheet" href="{JQUERY_DIR}ticker/ticker.css" />
		<script src="{JQUERY_DIR}ticker/ticker.js" type="text/javascript"></script>
	<!-- END switch_ticker -->

	<!-- BEGIN switch_ticker_new -->
		<script src="{JQUERY_DIR}jcarousel/jquery.jcarousel.js" type="text/javascript"></script>
		<script type="text/javascript">
			//<![CDATA[
				/* Definir le sens de direction en fonction du panneau admin */
				var tickerDirParam = "{switch_ticker.DIRECTION}";
				var slid_vert = false;
				var auto_dir = 'next';
				var h_perso = parseInt({switch_ticker.HEIGHT});

				switch( tickerDirParam )
				{
					case 'top' :
						slid_vert = true;
						break;

					case 'left':
						break;

					case 'bottom':
						slid_vert = true;
						auto_dir = 'prev';
						break;

					case 'right':
						auto_dir = 'prev';
						break;

					default:
						slid_vert = true;
				}

				$(document).ready(function() {

					$('#fa_ticker_content').css('display','block');

					var width_max = $('ul#fa_ticker_content').width();
					var width_item = Math.floor(width_max / {switch_ticker.SIZE});

					if (width_max > 0)
					{
						$('ul#fa_ticker_content li').css('float','left').css('list-style','none').width(width_item).find('img').each(function () {
							if ($(this).width() > width_item)
							{
							var ratio		= $(this).width() / width_item;
							var new_height = Math.round($(this).height() / ratio);
							$(this).height(new_height).width(width_item);
							}
						});

						if (slid_vert)
						{
							var height_max = h_perso;

							$('ul#fa_ticker_content li').each( function () {
								if ($(this).height() > height_max)
								{
									height_max = $(this).height();
								}
							} );

							$('ul#fa_ticker_content').width(width_item).height(height_max).css('marginLeft','auto').css('marginRight','auto');
							$('ul#fa_ticker_content li').height(height_max);
						}


						$('#fa_ticker_content').jcarousel({
								vertical: slid_vert,
							wrap: 'circular',
							auto: {switch_ticker.STOP_TIME},
							auto_direction: auto_dir,
						scroll: 1,
						size: {switch_ticker.SIZE},
						height_max: height_max,
						animation: {switch_ticker.SPEED}
						});
					}
					else
					{
						$('ul#fa_ticker_content li:not(:first)').css('display','none');
						$('ul#fa_ticker_content li:first').css('list-style','none').css('text-align','center');
					}
				});
			//]]>
		</script>
	<!-- END switch_ticker_new -->

	<script type="text/javascript">//<![CDATA[
		$(document).ready(function(){
			<!-- BEGIN switch_enable_pm_popup -->
				pm = window.open('{U_PRIVATEMSGS_POPUP}', '_faprivmsg', 'HEIGHT=225,resizable=yes,WIDTH=400');
				if(pm != null) { pm.focus(); }
			<!-- END switch_enable_pm_popup -->
			<!-- BEGIN switch_report_popup -->
				report = window.open('{switch_report_popup.U_REPORT_POPUP}', '_phpbbreport', 'HEIGHT={switch_report_popup.S_HEIGHT},resizable=yes,scrollbars=no,WIDTH={switch_report_popup.S_WIDTH}');
				if(report != null) { report.focus(); }
			<!-- END switch_report_popup -->
			<!-- BEGIN switch_ticker -->
				$(document).ready(function() {
					Ticker.start({
						height : {switch_ticker.HEIGHT},
						spacing : {switch_ticker.SPACING},
						speed : {switch_ticker.SPEED},
						direction : '{switch_ticker.DIRECTION}',
						pause : {switch_ticker.STOP_TIME} 
					});
				});
			<!-- END switch_ticker -->
		});

		<!-- BEGIN switch_login_popup -->
            var logInPopUpLeft, logInPopUpTop, logInPopUpWidth = {LOGIN_POPUP_WIDTH}, logInPopUpHeight = {LOGIN_POPUP_HEIGHT}, logInBackgroundResize = true, logInBackgroundClass = false;

            $(document).ready( function() {
                $(window).resize(function() {
                    var windowWidth = document.documentElement.clientWidth;
                    var popupWidth = $("#login_popup").width();
                    var mypopup = $("#login_popup");

                    $("#login_popup").css({
                        "left": windowWidth/2 - popupWidth/2
                    });
                });
            });
		<!-- END switch_login_popup -->
		//]]>
	</script>

	{GREETING_POPUP}

	<style type="text/css">
		#page-footer, div.navbar, div.navbar ul.linklist {
			display: block !important;
		}

		ul.linklist li.rightside, ul.linklist li.rightside a.copyright {
			display: inline !important;
		}

		<!-- BEGIN switch_ticker_new -->
		.jcarousel-skin-tango .jcarousel-item {
			text-align:center;
			width: 10px;
		}

		.jcarousel-skin-tango .jcarousel-item-horizontal {
			margin-right: {switch_ticker.SPACING}px;
		}

		.jcarousel-skin-tango .jcarousel-item-vertical {
			margin-bottom: {switch_ticker.SPACING}px;
		}
		<!-- END switch_ticker_new -->
	</style>

	{HOSTING_JS}

	<!-- BEGIN google_analytics_code -->
	<script type="text/javascript">
		//<![CDATA[
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', '{G_ANALYTICS_ID}', 'auto');
		ga('send', 'pageview');
		ga('set', 'anonymizeIp', true);

		<!-- BEGIN google_analytics_code_bis -->
		ga('create', '{G_ANALYTICS_ID_BIS}', 'auto', 'bis');
		ga('bis.send', 'pageview');
		ga('bis.set', 'anonymizeIp', true);
		<!-- END google_analytics_code_bis -->
		//]]>
	</script>
	<!-- END google_analytics_code -->

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet" />
	<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" />
    <link href="https://kit-pro.fontawesome.com/releases/v6.0.0/css/pro.min.css" rel="stylesheet">
    <link href="https://use.fontawesome.com/releases/v6.0.0/css/all.css" rel="stylesheet" />
  	<!-- BEGIN switch_user_logged_out -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css" integrity="sha256-RdH19s+RN0bEXdaXsajztxnALYs/Z43H/Cdm1U4ar24=" crossorigin="anonymous" />
  	<!-- END switch_user_logged_out -->
</head>

<body id="modernbb">
	<!-- BEGIN hitskin_preview -->
		<div id="hitskin_preview" style="display: block;">
			<h1><img src="{hitskin_preview.PATH_IMG_FA}hitskin/hitskin_logo.png" alt="" /> <em>Hit</em>skin.com</h1>
			<div class="content">
				<p>
					{hitskin_preview.L_THEME_SITE_PREVIEW}
					<br />
					<span>{hitskin_preview.U_INSTALL_THEME}<a href="https://{hitskin_preview.U_RETURN_THEME}">{hitskin_preview.L_RETURN_THEME}</a></span>
				</p>

			</div>
		</div>
	<!-- END hitskin_preview -->

	<!-- BEGIN switch_login_popup -->
		<div id="login_popup" style="z-index: 10000 !important;">
			<div class="h3">{SITENAME}</div>
            <div id="login_popup_message">
                {LOGIN_POPUP_MSG}
            </div>
			<div id="login_popup_buttons">
				<form action="{S_LOGIN_ACTION}" method="get">
					<input type="submit" class="button1" value="{L_LOGIN}" />
					<input type="button" class="button1" value="{L_REGISTER}" onclick="parent.location='{U_REGISTER}';" />
					<input id="login_popup_close" type="button" class="button2" value="{L_DONT_DISPLAY_AGAIN}" />
				</form>
			</div>
		</div>
	<!-- END switch_login_popup -->

	<a id="top" name="top" accesskey="t"></a>
	{JAVASCRIPT}

	<div id="page-header">
          
                    	<div class="navbar">
                  <div class="division">
                    <a href="/forum"><i class="fa fa-home"></i></a>
                  </div>
                  
                  <div class="division">
                    <a href="/groups"><i class="fas fa-user-friends"></i></a>
                  </div>
                  
                  <div class="division">
                    <a href="/memberlist"><i class="fas fa-users"></i></a>
                  </div>
                  
                  <div class="dropdown">
                    <div class="division">
                      <a><i class="fa fa-gavel"></i></a>
                      <div class="dropdown-content">
                        <a href="/t2-">Estatuto Militar</a>
                        <a href="/t40-">Anexo I -Regulamento de Identidade Visual</a>
                        <a href="/t41-">Anexo II - Normas de Identificação</a>
                        <a href="/t43-">Código Penal Militar</a>
                        <a href="/t44-">Política de Processo Penal Militar</a>
                        <a href="/t45-">Plano de Gerenciamento Emergencial</a>
                      </div>
                    </div>
                  </div>
                  
                  <div class="dropdown">
                    <div class="division">
                      <a><i class="far fa-folder"></i></a>
                      <div class="dropdown-content">
                        <a href="/t3-">Listagem: Exonerados</a>
                        <a href="/t4-">Listagem: Soldados</a>
                        <a href="/t5-">Listagem: Corpo de Praças</a>
                        <a href="/t7-">Listagem: Corpo de Oficiais</a>
                        <a href="/t6-">Listagem: Corpo Executivo</a>
                        <a href="/t8-">Listagem: TAGs Militares</a>
                        <a href="/t9-">Listagem: Oficiais Reformados</a>
                        <a href="/t10-">Listagem: Desligados</a>
                        <a href="/t12-">Listagem: Controle de Companhias</a>
                      </div>
                    </div>
                  </div>
                  
                  <div class="dropdown">
                    <div class="division">
                      <a><i class="fas fa-file-alt"></i></a>
                      <div class="dropdown-content">
                        <a href="/t34-">Requerimentos: Exoneração</a>
                        <a href="/t26-">Requerimentos: Instrução Inicial</a>
                        <a href="/t28-">Requerimentos: Corpo de Praças</a>
                        <a href="/t27-">Requerimentos: Corpo de Oficiais</a>
                        <a href="/t128-">Requerimentos:Corpo Executivo</a>
                        <a href="/t32-">Requerimentos: Cadastro de TAGs Militares</a>
                        <a href="/t31-">Requerimentos: Reformas</a>
                        <a href="/t29-">Requerimentos: Desligamentos</a>
                        <a href="/t30-">Requerimentos: Controle de Companhias</a>
                      </div>
                    </div>
                  </div>
                  
                  <div class="dropdown">
                    <div class="division">
                      <a><i class="fas fa-bookmark"></i></a>
                      <div class="dropdown-content">
                        <a href="/">Batalhão: Abertura</a>
                        <a href="/">Batalhão: Fechamento</a>
                      </div>
                    </div>
                  </div>
                </div>

          <div class="setanavbardop"><i class="fa fa-chevron-down fa-2x" id="dopclick"></i></div>
          
		<div class="headerbar"></div>
          	<!-- BEGIN switch_user_logged_out -->
          	<div id="login-dialog" class="login-popup zoom-anim-dialog mfp-hide">
                  <h3 class="aside-title">LOGAR NO FÓRUM</h3>
                  <form action="{S_LOGIN_ACTION}" method="post" class="login-form" name="form_login">
                    <label for="login-username-input-target" class="username-input">
                    <input type="text" name="username" class="rounded-input blue-active" id="login-username-input-target" placeholder="{L_USERNAME}" required/>
                    <i class="fas fa-user"></i>
                    </label>
                    <label for="login-password-input-target" class="password-input">
                    <input type="password" name="password" class="rounded-input blue-active" id="login-password-input-target" placeholder="{L_PASSWORD}" required/>
                    <i class="fas fa-key"></i>
                    </label>
                    <div style="font-size: 15px; margin-bottom: 5%;">
                    	<input class="radio" id="autologin-check" type="checkbox" name="autologin" {AUTOLOGIN_CHECKED}/>
                      	<label for="autologin-check">Manter-me conectado.</label>
                    </div>
                    <button type="submit" class="rounded-button" id="doLogin" name="login">Vamos lá!</button>
                  </form>
                </div>
          	<!-- END switch_user_logged_out -->

		<!-- BEGIN switch_ticker_new -->
		<div id="fa_ticker_blockD" style="margin-top:4px;">
			<div class="module">
				<div class="inner">
					<div id="fa_ticker_container">
						<ul id="fa_ticker_content" class="jcarousel-skin-tango" style="display:none">
							<!-- BEGIN ticker_row -->
							<li>{switch_ticker.ticker_row.ELEMENT}</li>
							<!-- END ticker_row -->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- END switch_ticker_new -->
	</div>

	<div class="conteneur_minwidth_IE">
	<div class="conteneur_layout_IE">
	<div class="conteneur_container_IE">
	<div id="wrap">
		<div id="page-body">

			<!-- BEGIN switch_ticker -->
			<div id="fa_ticker_block" style="margin-top:4px;">
				<div class="module">
					<div class="inner">
						<div id="fa_ticker_container">
							<div id="fa_ticker" style="height:{switch_ticker.HEIGHT}px;">
								<div class="fa_ticker_content">
									<!-- BEGIN ticker_row -->
									<div>{switch_ticker.ticker_row.ELEMENT}</div>
									<!-- END ticker_row -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END switch_ticker -->

			<div id="{ID_CONTENT_CONTAINER}"{CLASS_CONTENT_CONTAINER}>
				<div id="outer-wrapper">
					<div id="wrapper">
						<div id="{ID_LEFT}">
							<!-- BEGIN giefmod_index1 -->
								{giefmod_index1.MODVAR}
								<!-- BEGIN saut -->
									<div style="height:{SPACE_ROW}px"></div>
								<!-- END saut -->
							<!-- END giefmod_index1 -->
						</div>

						<div id="container">
							<div id="content-main">
								<div id="main">
									<div id="main-content">