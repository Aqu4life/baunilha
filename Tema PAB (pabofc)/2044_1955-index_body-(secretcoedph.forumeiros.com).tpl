{JAVASCRIPT}

<!-- BEGIN switch_user_login_form_header -->
<div class="panel">
	<form action="{S_LOGIN_ACTION}" method="post" name="form_login">
		<div class="user_login_form center">
			<input placeholder="{L_USERNAME}" class="inputbox fl_username" type="text" size="10" name="username" />
			<input placeholder="{L_PASSWORD}" class="inputbox fl_password" type="password" size="10" name="password" />
			<br />
			<label>{L_AUTO_LOGIN}: <input class="radio" type="checkbox" name="autologin" {AUTOLOGIN_CHECKED} /></label>
			{S_HIDDEN_FIELDS}<input class="mainoption button1" type="submit" name="login" value="{L_LOGIN}" />
            <!-- BEGIN switch_social_login -->
            <div class="social_btn">
                <!-- BEGIN fb_connect -->
                <div class="fb-login-button"></div>
                <!-- END fb_connect -->
                <!-- BEGIN topicit_connect -->
                <div class="ti-connect"></div>
                <!-- END topicit_connect -->
            </div>
            <!-- END switch_social_login -->
		</div>
	</form>
</div>
<!-- END switch_user_login_form_header -->

<!-- BEGIN message_admin_index -->
	<div class="panel introduction">
		<!-- BEGIN message_admin_titre -->
			<div class="h3">{message_admin_index.message_admin_titre.MES_TITRE}</div>
		<!-- END message_admin_titre -->

		<!-- BEGIN message_admin_txt -->
			<div class="mes-txt">{message_admin_index.message_admin_txt.MES_TXT}</div>
		<!-- END message_admin_txt -->
	</div>
<!-- END message_admin_index -->

{CHATBOX_TOP}

{BOARD_INDEX}

<!-- BEGIN disable_viewonline -->
	<div class="block">
          	<div class="stats-tabs">
                  
                  <input id="tab1" type="radio" name="tabs" checked>
                  <label for="tab1">USUÁRIOS</label>
                
                  <input id="tab2" type="radio" name="tabs">
                  <label for="tab2">ANIVERSÁRIOS</label>
                
                  <input id="tab3" type="radio" name="tabs">
                  <label for="tab3">GRUPOS</label>
                
                  <section id="content1">
                    <p>
                      {TOTAL_USERS_ONLINE}
                    </p>
                    <p>
                      {RECORD_USERS}
                    </p>
                    <p>
                      {LOGGED_IN_USER_LIST}
                    </p>
                    <p>
                      {L_CONNECTED_MEMBERS}
                    </p>
                  </section>
                
                  <section id="content2">
                    <p>
		      {L_WHOSBIRTHDAY_TODAY}
                    </p>
                    <p>
                      {L_WHOSBIRTHDAY_WEEK}
                    </p>
                  </section>
                
                  <section id="content3">
                    <p>
                      <div class="legend">{GROUP_LEGEND}</div>
                    </p>
                  </section>  
          	</div>
	</div>

	<!-- BEGIN switch_chatbox_activate -->
		<div class="block">
			<div class="h3">
				<a href="{S_JOIN_CHAT}" target="ChatBox"><i class="ion-ios-chatboxes-outline"></i>{CHATBOX_NAME}</a>
				<!-- BEGIN switch_chatbox_popup -->
					<div id="chatbox_popup"></div>
					<script type="text/javascript">
						insertChatBoxPopup('{disable_viewonline.switch_chatbox_activate.switch_chatbox_popup.U_FRAME_CHATBOX}', '{L_CLICK_TO_JOIN_CHAT}');
					</script>
				<!-- END switch_chatbox_popup -->
			</div>
			{TOTAL_CHATTERS_ONLINE}:&nbsp;{CHATTERS_LIST}
		</div>
	<!-- END switch_chatbox_activate -->
<!-- END disable_viewonline -->

{CHATBOX_BOTTOM}

<!-- BEGIN switch_user_login_form_footer -->
<div class="panel">
	<form action="{S_LOGIN_ACTION}" method="post" name="form_login">
		<div class="user_login_form center">
			<input placeholder="{L_USERNAME}" class="inputbox fl_username" type="text" size="10" name="username" />
			<input placeholder="{L_PASSWORD}" class="inputbox fl_password" type="password" size="10" name="password" />
			<br />
			<label>{L_AUTO_LOGIN}: <input class="radio" type="checkbox" name="autologin" {AUTOLOGIN_CHECKED} /></label>
			{S_HIDDEN_FIELDS}<input class="mainoption button1" type="submit" name="login" value="{L_LOGIN}" />
			<!-- BEGIN switch_social_login -->
            <div class="social_btn">
                <!-- BEGIN fb_connect -->
                <div class="fb-login-button"></div>
                <!-- END fb_connect -->
                <!-- BEGIN topicit_connect -->
                <div class="ti-connect"></div>
                <!-- END topicit_connect -->
            </div>
            <!-- END switch_social_login -->
		</div>
	</form>
</div>
<!-- END switch_user_login_form_footer -->

{AUTO_DST}