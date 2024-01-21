	<div class="sub-header-info">
		<h1 class="page-title">
			<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>
		</h1>
          	<div class="sub-header-buttons">
                        <!-- BEGIN switch_user_authpost -->
                                <a href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow" class="ion-edit button1" title="{L_POST_NEW_TOPIC}"><span>{L_POST_NEW_TOPIC}</span></a>
                        <!-- END switch_user_authpost -->
                </div>
		<div class="sub-header-path">
			<a class="nav" href="{U_INDEX}"><span>{L_INDEX}</span></a>
			{NAV_CAT_DESC}
		</div>
	</div>
</div>

<div class="topic-actions">
	<div class="pagination">
		{PAGINATION}
	</div>

	<div class="topic-actions-buttons">
		<!-- BEGIN show_plus_menu -->
                <div class="plus-menu-wrap">
                    <script type="text/javascript">//<![CDATA[
                        var url_newposts = '{U_NEWPOSTS_JS_PLUS_MENU}';
                        var url_egosearch = '{U_EGOSEARCH_JS_PLUS_MENU}';
                        var url_unanswered = '{U_UNANSWERED_JS_PLUS_MENU}';
                        var url_watchsearch = '{U_WATCHSEARCH_JS_PLUS_MENU}';
                        insert_plus_menu_new('f{FORUM_ID}&amp;f={FORUM_ID}','{JS_SESSION_ID}', {JS_AUTH_FAVOURITES});
                        //]]>
                    </script>
                </div>
                <!-- END show_plus_menu -->
                <!-- BEGIN switch_user_logged_in -->
                {S_WATCH_FORUM}<a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a>
                <!-- END switch_user_logged_in -->
	</div>
</div>

{BOARD_INDEX}
{TOPICS_LIST_BOX}

<div class="topic-actions bottom">
	<div class="pagination">
		{PAGINATION}
	</div>

	<div class="topic-actions-buttons">
		<!-- BEGIN switch_user_authpost -->
          	<a href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow" class="ion-edit button1" title="{L_POST_NEW_TOPIC}"><span>{L_POST_NEW_TOPIC}</span></a>
		<!-- END switch_user_authpost -->
	</div>
</div>

<div id="info_open" style="display: block; clear: both;">
        <div class="block user-in-forum">
              <p>{LOGGED_IN_USER_LIST}</p>
        </div>
  
	<div class="block">
		<div class="h3"><i class="ion-locked"></i>{L_MODERATOR}</div>
		<p>{MODERATORS}</p>
	</div>

	<div class="block">
		<div class="h3"><i class="ion-lock-combination"></i>{L_TABS_PERMISSIONS}</div>
		<p>{S_AUTH_LIST}</p>
	</div>
</div>