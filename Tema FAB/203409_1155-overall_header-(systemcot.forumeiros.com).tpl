<!DOCTYPE HTML>
<html lang="{L_LANG_HTML}">
<head>
    <meta charset="{S_CONTENT_ENCODING}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html; charset={S_CONTENT_ENCODING}" />

    <!-- BEGIN switch_canonical_url -->
    <link rel="canonical" href="{switch_canonical_url.CANONICAL_URL}" />
    <!-- END switch_canonical_url -->

    {META_FAVICO}
    {META}
    {META_FB_LIKE}

    <title>{SITENAME_TITLE}{PAGE_TITLE}</title>

    {T_HEAD_STYLESHEET}
    {CSS}

    <meta name="theme-color" content="{GG_THEME_COLOR}" />
      <link href="https://kit-pro.fontawesome.com/releases/v6.2.1/css/pro.min.css" rel="stylesheet" />
      <link href="https://use.fontawesome.com/releases/v6.2.1/css/all.css" rel="stylesheet" />
      <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Permanent+Marker&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="search" type="application/opensearchdescription+xml" href="/improvedsearch.xml" title="{SITENAME}" />
    <link rel="search" type="application/opensearchdescription+xml" href="{URL_BOARD_DIRECTORY}/search/improvedsearch.xml" title="{SEARCH_FORUMS}" />

    <script src="{JQUERY_PATH}" type="text/javascript"></script>
    <!-- BEGIN switch_recent_jquery -->
    <script src="{JS_DIR}jquery1.9/jquery-migrate-1.4.1.js" type="text/javascript"></script>
    <script src="{JQUERY_DIR}browser/v1.0/jquery.browser.min.js" type="text/javascript"></script>
    <script src="{JQUERY_DIR}support/jquery.support.js" type="text/javascript"></script>
    <!-- END switch_recent_jquery -->

    <script src="{JS_DIR}{L_LANG}.js" type="text/javascript"></script>

    <!-- BEGIN switch_fb_login -->
    <script src="{switch_fb_login.JS_FB_LOGIN}" type="text/javascript"></script>
    <!-- END switch_fb_login -->

    <!-- BEGIN switch_ticker -->
    <link type="text/css" rel="stylesheet" href="{JS_DIR}jquery/ticker/ticker.css" />
    <script src="{JS_DIR}jquery/ticker/ticker.js" type="text/javascript"></script>
    <!-- END switch_ticker -->

    <!-- BEGIN switch_ticker -->
    <script type="text/javascript">
        //<![CDATA[
        $(document).ready(function () {
            Ticker.start({
                height : {switch_ticker.HEIGHT},
                spacing : {switch_ticker.SPACING},
                speed : {switch_ticker.SPEED},
                direction : '{switch_ticker.DIRECTION}',
                pause : {switch_ticker.STOP_TIME}
            });
        });
        //]]>
    </script>
    <!-- END switch_ticker -->
    <script type="text/javascript">
        $(document).scroll(function() {
            var y = $(this).scrollTop();
            if (y > 164) {
                if($('.btn-fixed').find('.btn-fixed-txt').length !== 0){
                    $('.btn-fixed').addClass('btn-scrolled');
                }
            } else {
                if($('.btn-fixed').find('.btn-fixed-txt').length !== 0) {
                    $('.btn-fixed').removeClass('btn-scrolled');
                }
            }
        });
    </script>
    <!-- BEGIN switch_report_popup -->
    <script type="text/javascript">
        //<![CDATA[
        $(document).ready(function () {
            report = window.open('{switch_report_popup.U_REPORT_POPUP}', '_phpbbreport', 'HEIGHT={switch_report_popup.S_HEIGHT},resizable=yes,scrollbars=no,WIDTH={switch_report_popup.S_WIDTH}');
            if (report != null) {
                report.focus();
            }
        });//]]>
    </script>
    <!-- END switch_report_popup -->
    <!-- BEGIN switch_enable_pm_popup -->
    <script type="text/javascript">
        //<![CDATA[
        $(document).ready(function () {
            pm = window.open('{U_PRIVATEMSGS_POPUP}', '_faprivmsg', 'HEIGHT=225,resizable=yes,WIDTH=400');
            if (pm != null) {
                pm.focus();
            }
        });
        //]]>
    </script>
    <!-- END switch_enable_pm_popup -->
    <!-- BEGIN switch_login_popup -->
    <script type="text/javascript">
        //<![CDATA[
    var logInPopUpLeft, logInPopUpTop, logInPopUpWidth = {LOGIN_POPUP_WIDTH},
    logInPopUpHeight = {LOGIN_POPUP_HEIGHT}, logInBackgroundResize = true, logInBackgroundClass = false;

    $(document).ready(function () {
        $(window).resize(function () {
            var windowWidth = document.documentElement.clientWidth;
            var popupWidth = $("#login_popup").width();
            var mypopup = $("#login_popup");

            $("#login_popup").css({
                "left": windowWidth / 2 - popupWidth / 2
            });
        });
    });
        //]]>
    </script>
    <!-- END switch_login_popup -->

    {RICH_SNIPPET_GOOGLE}
    {HOSTING_JS}

    <!-- BEGIN google_analytics_code -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={G_ANALYTICS_ID}"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', '{G_ANALYTICS_ID}', {'anonymize_ip': true, 'store_gac': false, 'cookie_expires': 13 * 30 * 24 * 60 * 60});
        <!-- BEGIN google_analytics_code_bis -->
        gtag('config', '{G_ANALYTICS_ID_BIS}', {'anonymize_ip': true, 'store_gac': false, 'cookie_expires': 13 * 30 * 24 * 60 * 60});
        <!-- END google_analytics_code_bis -->
    </script>
    <!-- END google_analytics_code -->
    <!-- Desenvolvido por MrThiiagoM/@:!thiago!:@ & Bodesu - Não retirar os creditos -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <style>
        #logo-text {
            max-width: calc(100% - 150px);
        }

        .forum-description img {
            max-width: calc(100% - 15px);
        }
    </style>
</head>

<body id="top">
<!-- BEGIN switch_login_popup -->
<div id="login_popup" class="block-subtle" style="z-index: 10001 !important;">
    <div class="headline">
        {SITENAME}
        <button title="{L_LOGIN_CLOSE}" id="login_popup_close"><i class="material-icons">close</i></button>
    </div>
    <div id="login_popup_content">
        <div id="login_popup_message">
            {LOGIN_POPUP_MSG}
        </div>
        <br />
        <div id="login_popup_buttons">
            <!-- BEGIN switch_quick_login -->
            <div class="mt10">
                <div class="social_btn">
                    <!-- BEGIN fb_quick_connect -->
                    <div class="fb-login-button"></div>
                    <!-- END fb_quick_connect -->
                    &nbsp;
                    <!-- BEGIN topicit_quick_connect -->
                    <div class="ti-connect"></div>
                    <!-- END topicit_quick_connect -->
                </div>
            </div>
            <br/>
            <!-- END switch_quick_login -->
            <form action="{S_LOGIN_ACTION}" method="get">
                <input type="submit" value="{L_LOGIN}" class="btn btn-default" />
                <input type="button" value="{L_REGISTER}" onclick="parent.location='{U_REGISTER}';" class="btn btn-default" />
            </form>
        </div>
    </div>
</div>
<!-- END switch_login_popup -->

{GREETING_POPUP}

<!-- BEGIN inactive_users_modal -->
<div id="inactive_popup" class="block-subtle" style="z-index: 10000 !important;">
    <div class="headline">
        {inactive_users_modal.L_MODAL_TITLE}
        <button title="{inactive_users_modal.L_CLOSE}" id="inactive_popup_close"><i class="material-icons">close</i></button>
    </div>
    <div id="inactive_popup_message">
        {inactive_users_modal.L_MODAL_BODY}
    </div>
    <br />
    <div id="inactive_popup_buttons">
        <button id="inactive_popup_url" class="button1">{inactive_users_modal.L_MODAL_BUTTON}</button>
    </div>
</div>
<script type="text/javascript">
    $('#inactive_popup #inactive_popup_close').on('mouseup', function () {
        document.cookie = "modal_require_activation_closed=1; max-age=86400*15; path=/;";
        $('#inactive_popup').hide(50);
    });
    $('#inactive_popup #inactive_popup_url').on('mouseup', function () {
        document.cookie = "modal_require_activation_closed=1; max-age=86400*15; path=/;";
        location.href = '{inactive_users_modal.U_MODAL}'
    })
</script>
<!-- END inactive_users_modal -->

<!-- BEGIN switch_like_popup -->
<div id="like_popup" class="block-subtle" style="z-index: 10001 !important;">
    <div class="headline">
        {SITENAME}
        <button title="{L_LIKE_CLOSE}" id="like_popup_close"><i class="material-icons">close</i></button>
    </div>
    <div id="like_popup_message">
        {LIKE_POPUP_MSG}
    </div>
    <br />
    <div id="like_popup_buttons">
        <form action="{S_LOGIN_ACTION}" method="get">
            <input type="submit" value="{L_LOGIN}" class="btn btn-default" />
            <input type="button" value="{L_REGISTER}" onclick="parent.location='{U_REGISTER}';" class="btn btn-default" />
        </form>
    </div>
</div>
<!-- END switch_like_popup -->
<header>
    <div id="main-menu-btn">
        <i class="material-icons">menu</i>
    </div>
    <a id="logo-link">
        <div id="logo">
            <!-- BEGIN switch_logo_mob -->
            <img src="{switch_logo_mob.LOGO_MOB}" alt="{L_INDEX}" loading="lazy" />
            <!-- END switch_logo_mob -->
        </div>
        <!-- BEGIN switch_h1 -->
        <span id="logo-text">{switch_h1.MAIN_SITENAME}</span>
        <!-- END switch_h1 -->
    </a>
    <!-- BEGIN switch_user_logged_out -->
    <a href="{S_LOGIN_ACTION}" class="button">{L_LOGIN}</a>
    <!-- END switch_user_logged_out -->
    <!-- BEGIN switch_user_logged_in -->
    <a href="javascript:void(0)" id="header-user"></a>
    <a href="javascript:void(0)" id="header-notif"><i class="material-icons">notifications</i></a>
    <!-- END switch_user_logged_in -->
    <form method="get" action="{ACTION_SEARCH}" id="search-main">
        <input type="text" name="search_keywords" maxlength="128" placeholder="{L_SEARCH}" />
        <button type="submit"><i class="material-icons">search</i></button>
    </form>
    <ul id="header-navigation">
        <li><a href="/forum" class="link"><i class="fa fa-home"></i> Inicio</a></li>
       <li><a href="/memberlist" class="link"><i class="fa fa-list"></i> Membros</a></li>
       <li><a href="/groups" class="link"><i class="fa fa-users"></i> Grupos</a></li>
       <li><a href="/f1-" class="link"><i class="fa fa-book"></i> Nossa história</a></li>
    </ul>
</header>

<div id="main-user-menu" class="hidden">
</div>

<div id="notif-menu" class="hidden">
    <div class="main-menu-headline" data-text="_lang['Notifications']"></div>
    <ul id="notif_list">
        <li id="notif-view-all"><a href="/profile?mode=editprofile&page_profil=notifications" data-text="_lang['Notif_see_all']"></a></li>
    </ul>
</div>
<div id="live_notif">
</div>

<div id="header-banner">
    <div class="wrap">
    </div>
</div>
<div id="wrap">

    <!-- BEGIN html_validation -->
</div><!-- <div id="wrap" ></div> -->
</body>
</html>
<!-- END html_validation -->
