<<!-- BEGIN html_validation -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<div>
	<div>
        <ul>
            <li>
<!-- END html_validation -->
            </li>
        </ul>
    </div>
</div>
{PROTECT_FOOTER}
<div class="fa-footer">
  <div class="fa-footer-row">
    <div class="fa-footer-col fa-primary-footer-col">
      <div class="fa-footer-logo">
        <img src="https://i.ibb.co/wssyQHp/Emblema-TTE.png" class="logo" />
      </div>
    </div>
    <div class="fa-footer-col">
      <strong class="lead"><i class="fas fa-map-marked-alt"></i> Missão</strong>
      <p>er uma instituição militar no intuito de visar a diversidade, profissionalismo, ética, bem estar de todos os civis e educação constitucional aos seus funcionários e seguidores..</p>
    </div>
    <div class="fa-footer-col">
      <strong class="lead"><i class="fas fa-expand-arrows-alt"></i> Visão</strong>
      <p>Visamos a promoção ética por todo o hotel, na intuição de combate ao crime no servidor e na intenção de pacificar todo tipo de desigualdade social virutal.</p>
    </div>
    <div class="fa-footer-col">
      <strong class="lead"><i class="fas fa-history"></i> História</strong>
      <p>O Departamento Militar de Elite é uma força de segurança de natureza militar, constituída por militares organizados num corpo especial de tropas e dotada de autonomia administrativa, com jurisdição em todo o território habbletiano.</p>
    </div>
  </div>

<div class="admin-link">{ADMIN_LINK}</div>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function() {
	$(window).scroll(function() {
		var header_top = $('#headerbar-top');

		if (header_top.hasClass('w-toolbar')) {
			if ($(window).scrollTop() >= 42) {
				header_top.addClass('is-sticky');
			} else {
				header_top.removeClass('is-sticky');
			}
		} else {
			if ($(window).scrollTop() >= 1) {
				header_top.addClass('is-sticky');
			} else {
				header_top.removeClass('is-sticky');
			}
		}
	});
});
//]]>
</script>
<!-- BEGIN switch_facebook_login -->
<div id="fb-root"></div>
<script type="text/javascript">
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
        
        FB.init({
            "appId"   : "{switch_facebook_login.FB_APP_ID}",
            "cookie"  : {switch_facebook_login.FB_COOKIE},
            "xfbml"   : {switch_facebook_login.FB_XFBML},
            "oauth"   : {switch_facebook_login.FB_OAUTH},
            "version" : "{switch_facebook_login.FB_VERSION}"
        });
        
        (function(d, s, id){
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/{switch_facebook_login.FB_LOCAL}/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    });
    function onLoginFB() {
        window.location.replace('{switch_facebook_login.FB_ONLOGIN_URL}')
    }
</script>
<!-- END switch_facebook_login -->
<!-- BEGIN switch_topicit_connect -->
<script type="text/javascript">
    $(document).ready( function() {
        $('div.ti-connect, span.ti-connect').attr({
            "data-loc": "{switch_topicit_connect.TOPICIT_URL}",
            "data-login": "{switch_topicit_connect.BOARD_LOGIN}",
            "data-version": "{switch_topicit_connect.TOPICIT_VERSION}",
            "data-lang": "{switch_topicit_connect.BOARD_LANG}"
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
<script type="text/javascript">
//<![CDATA[
	fa_endpage();
//]]>
</script>