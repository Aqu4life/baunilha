<!-- BEGIN html_validation -->
<!DOCTYPE HTML>
<!-- END html_validation -->
<html>
<body>
<div class="fsociais">
   <div class="fsociaisesq"><p>Veja as nossas redes sociais:</p></div>
    <div class="fsociaisdir">
      <a href="https://chat.whatsapp.com/LDdbM1AePMID8StTbq15c8"><i class="fab fa-instagram"></i></a>
      <a href="https://chat.whatsapp.com/LDdbM1AePMID8StTbq15c8"><i class="fab fa-facebook"></i></a>
      <a href="https://chat.whatsapp.com/LDdbM1AePMID8StTbq15c8"><i class="fab fa-whatsapp"></i></a>
    </div>
</div>
<div class="fab_footer">
        <div class="fab_flogo">
          <img src="https://i.servimg.com/u/f28/20/46/64/58/whatsa11.jpg" />
          <h3>Agência Revolucionária • 2022</h3>
          <p>Desenvolvendo novos sucessores!</p>
    </div>
    <div class="fab_finfos">
        <div class="fab_ftitulo">INSTITUCIONAL</div>
                <div class="fab_flinks">
                  <a href="">História</a>
                  <a href="">Missão</a>
                  <a href="">Princípios</a>
            </div>
    </div>
    <div class="fab_finfos">
        <div class="fab_ftitulo">COMANDO</div>
                <div class="fab_flinks">
                  <a href="">Composição</a>
                  <a href="">Decretos</a>
                  <a href="">Projetos aprovados</a>
            </div>
    </div>
    <div class="fab_finfos">
        <div class="fab_ftitulo">CONTATE-NOS</div>
                <div class="fab_flinks">
                  <a href=""><i class="fa-duotone fa-comments"></i> Webchat</a>
                  <a href=""><i class="fa-duotone fa-square-info" style="margin-left: 4px;margin-right: 3px;"></i> FAQ</a>
                  <a href=""><i class="fa-duotone fa-envelopes-bulk"></i> comandodasfab@gmail.com</a>
            </div>
    </div>
</div>
<div class="fab_fcreditos">
    <p>© 2022 Copyright: Agência Revolucionaria Militar. Tema <i class="fa-solid fa-code"></i> por Bodesu e MrThiiagoM.</p>
</div>

<div id="dimmer" class="hidden"></div>
<div style="display: none;">
    <div id="fa_hide"></div>
    <div id="fa_show"></div>
</div>

<script type="text/javascript">
    //<![CDATA[
    fa_endpage();
    //]]>
</script>

<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {
        function headerAdjust() {
            var banner_headline = $('#header-banner h1, #header-banner h2'),
                banner_headline_height = banner_headline.height();

            if (banner_headline_height > 90) {
                banner_headline.css('font-size', parseInt(banner_headline.css('font-size')) - 1 + 'px');

                requestAnimationFrame(headerAdjust);
            } else {
                banner_headline.css('opacity', 1);
            }
        }

        requestAnimationFrame(headerAdjust);

        if(_userdata['session_logged_in']) {
            if (!FA.Notification.registered()) {
                FA.Notification.register();
            }

            Toolbar.init;
            var timeout = setInterval(reloadNotif, 1000);
        };

        function reloadNotif() {
            if (_toolbar.notifications.unread > 0) {
                if (!$("#unread_notif").length) {
                    $("#header-notif > i").before('<span id="unread_notif">' + _toolbar.notifications.unread + '</span>');
                    $('#menu_notifications > span').before('<span id="unread_notif_menu">' + _toolbar.notifications.unread + '</span>');
                }

                var unread_notif = $("#unread_notif");
                var unread_notif_menu = $("#unread_notif_menu");

                unread_notif.html(_toolbar.notifications.unread);
                unread_notif_menu.html(_toolbar.notifications.unread);
                if(! unread_notif.hasClass("notification-new")) {
                    unread_notif.addClass('notification-new');
                    unread_notif_menu.addClass('notification-new');
                    $("#mNotificationBtn").addClass('notification-new');
                }
            } else if ($("#unread_notif").length) {
                $("#unread_notif, #unread_notif_menu").remove();
            }
        };

        var scroll_top = $('html').scrollTop();

    });
    //]]>
</script>

<!-- BEGIN switch_facebook_login -->
<div id="fb-root"></div>
<script type="text/javascript">
    window.fbAsyncInit = function() {
        FB.init({
            appId   : "{switch_facebook_login.FB_APP_ID}",
            cookie  : {switch_facebook_login.FB_COOKIE},
            xfbml   : {switch_facebook_login.FB_XFBML},
            oauth   : {switch_facebook_login.FB_OAUTH},
            version : '{switch_facebook_login.FB_VERSION}'
        });
    };

    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
            js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/{switch_facebook_login.FB_LOCAL}/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    $(document).ready( function() {
        $('div.fb-login-button, span.fb-login-button').attr({
            "data-scope": "{switch_facebook_login.FB_SCOPE}",
            "data-max-rows": "{switch_facebook_login.FB_MAX_ROWS}",
            "data-size": "{switch_facebook_login.FB_BUTTON_SIZE}",
            "data-show-faces": "{switch_facebook_login.FB_SHOW_FACES}",
            "data-auto-logout-link": "{switch_facebook_login.FB_AUTO_LOGOUT}"
        });
        $('div.fb-login-button, span.fb-login-button').each(function() {
            if(typeof $(this).attr('onlogin') == typeof undefined || $(this).attr('onlogin') === false) {
                $(this).attr('onlogin', '{switch_facebook_login.FB_ONLOGIN}');
            }
            if($(this).html() == '') {
                $(this).html('{switch_facebook_login.FB_LABEL}');
            }
        });
    });

    function onLoginFB() {
        window.location.replace('{switch_facebook_login.FB_ONLOGIN_URL}')
    }
</script>
<!-- END switch_facebook_login -->

<!-- BEGIN switch_topicit_connect -->
<script>
    $(document).ready( function() {
        $('div.ti-connect').attr({
            'data-loc' : '{switch_topicit_connect.TOPICIT_URL}',
            'data-login' : '{switch_topicit_connect.BOARD_LOGIN}',
            'data-version' : '{switch_topicit_connect.TOPICIT_VERSION}',
            'data-lang' : '{switch_topicit_connect.BOARD_LANG}'

        });
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "{switch_topicit_connect.TOPICIT_ENDPOINT}";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'topicit-connect'));
    });
</script>
<!-- END switch_topicit_connect -->

</body>
</html>
