<link href="https://kit-pro.fontawesome.com/releases/v5.15.1/css/pro.min.css" rel="stylesheet"><link href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" rel="stylesheet"><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<div class="wrap">
<input class="myClass" id="q" name="q" type="text" value="" placeholder="Pesquisar policial">
<script>$('.myClass').keypress(function(e) {if (e.keyCode === 13) {myFunction($('.myClass').val());return false;}return true;});myFunction = function(term) {window.location.href = '/search?search_keywords=' + term + '&sid=&q=&domains=pmarm.forumeiros.com&sitesearch=pmarm.forumeiros.com&client=&forid=1&ie=utf-8&oe=utf-8&hl=pt&cof=GALT%3A%23263238%3BGL%3A1%3BDIV%3A%23%3BVLC%3A%23263238%3BAH%3Acenter%3BBGC%3A%23263238%3BLBGC%3A%23%3BALC%3A%231e88e5%3BLC%3A%23263238%3BT%3A%23263238%3BGFNT%3A%23263238%3BGIMP%3A%23263238%3BFORID%3A11&search_terms=any&search_author=&search_where=-1&search_time=0&show_results=posts&sort_by=0&sort_dir=DESC&google=';}</script>
  </div>
  <iframe src="h20-" style="width: 100%;height: 240px;"></iframe>

<ul class="action-bar action-bar-top">
	<!-- BEGIN switch_user_logged_in -->
	<li>
		<a href="{U_SEARCH_NEW}">
			<i class="material-icons">new_releases</i>&nbsp;{L_SEARCH_NEW}
		</a>
	</li>
	<li>
		<a href="{U_SEARCH_SELF}">
			<i class="material-icons">account_box</i>&nbsp;{L_SEARCH_SELF}
		</a>
	</li>
	<!-- END switch_user_logged_in -->
	<li>
		<a href="{U_SEARCH_UNANSWERED}">
			<i class="material-icons">chat_bubble_outline</i>&nbsp;{L_SEARCH_UNANSWERED}
		</a>
	</li>
	<!-- BEGIN switch_user_logged_in -->
	<li class="rightside">
		<a href="{U_MARK_READ}" accesskey="m">
			<i class="material-icons">done_all</i>&nbsp;{L_MARK_FORUMS_READ}
		</a>
	</li>
	<!-- END switch_user_logged_in -->
</ul>

<!-- BEGIN catrow -->
<!-- BEGIN tablehead -->
<div class="forum {catrow.tablehead.TYPE_TABLE_SECTION}">
	<div class="forum-header">
		<div class="category-title">
			<span>{catrow.tablehead.L_FORUM}</span>
		</div>
		<div class="forum-statistics-header">
					<span class="forum-statistics-header-topics">
						<i class="material-icons" data-tooltip="{L_TOPICS}">chat_bubble</i>
					</span>
			<span class="forum-statistics-header-posts">
						<i class="material-icons" data-tooltip="{L_POSTS}">forum</i>
					</span>
		</div>
		<div class="forum-lastpost-header">
			<i class="material-icons" data-tooltip="{L_LASTPOST}">watch_later</i>
			<span>{L_LASTPOST}</span>
		</div>
	</div>
	<!-- END tablehead -->

	<!-- BEGIN forumrow -->
	<div class="forum-section {catrow.forumrow.FOLDER_CLASSNAME} {catrow.forumrow.TYPE_SECTION}">
		<div class="forum-content">
			<div class="forum-description">
				<h3><a href="{catrow.forumrow.U_VIEWFORUM}">{catrow.forumrow.FORUM_NAME}</a></h3>
				<p>{catrow.forumrow.FORUM_DESC}</p>
				{catrow.forumrow.L_LINKS}{catrow.forumrow.LINKS}
			</div>
			<div class="forum-statistics">
				<span class="forum-statistics-topics">{catrow.forumrow.TOPICS} <span>{L_TOPICS}</span></span>
				<span class="forum-statistics-posts">{catrow.forumrow.POSTS} <span>{L_POSTS}</span></span>
			</div>
			<div class="forum-lastpost">
				<div class="avatar-default">
					<!-- BEGIN avatar -->
					{catrow.forumrow.avatar.LAST_POST_AVATAR}
					<!-- END avatar -->
					<!-- BEGIN ads -->
					<img src="{catrow.forumrow.ads.IMG}" alt="{catrow.forumrow.ads.TITLE}"/>
					<!-- END ads -->
				</div>
				<div class="forum-lastpost-inner">
					<!-- BEGIN switch_topic_title -->
					<a class="topic-title" href="{catrow.forumrow.U_LATEST_TOPIC}"
					   title="{catrow.forumrow.LATEST_TOPIC_TITLE}">{catrow.forumrow.LATEST_TOPIC_NAME}</a>
					<!-- END switch_topic_title -->
					<!-- BEGIN ads -->
					<a class="topic-title" href="{catrow.forumrow.ads.LINK}"
					   title="{catrow.forumrow.ads.TITLE}">{catrow.forumrow.ads.TITLE}</a>
					<!-- END ads -->
					<span>
							<!-- BEGIN ads -->
								<span class="forum-lastpost-location">
									<i class="material-icons">place</i>{catrow.forumrow.ads.LOCATION}
								</span>
						<!-- END ads -->
							<span class="forum-lastpost-author">
								<i class="material-icons">person</i>{catrow.forumrow.USER_LAST_POST}
                                <!-- BEGIN ads -->
                                {catrow.forumrow.ads.ALIAS}
                                <!-- END ads -->
							</span>
							<span class="forum-lastpost-time">
								<i class="material-icons">access_time</i><a href="{catrow.forumrow.U_LATEST_TOPIC_POST}">{catrow.forumrow.LAST_POST_HOUR}</a>
								<!-- BEGIN ads -->
                                {catrow.forumrow.ads.DATE}
                                <!-- END ads -->
							</span>
						</span>
				</div>
			</div>
		</div>
	</div>
	<!-- END forumrow -->

	<!-- BEGIN tablefoot -->
</div><!-- <div class="forum" ></div> -->
<!-- END tablefoot -->
<!-- END catrow -->

<!-- BEGIN switch_on_index -->
<ul class="action-bar action-bar-bottom">
	<li>
		<a href="{U_TODAY_ACTIVE}">{L_TODAY_ACTIVE}</a>
	</li>
	<li>
		<a href="{U_TODAY_POSTERS}">{L_TODAY_POSTERS}</a>
	</li>
	<li class="last">
		<a href="{U_OVERALL_POSTERS}">{L_OVERALL_POSTERS}</a>
	</li>
	<!-- BEGIN switch_delete_cookies -->
	<li class="rightside">
		<a href="{switch_on_index.switch_delete_cookies.U_DELETE_COOKIES}" rel="nofollow">
			<i class="material-icons">delete</i>&nbsp;{switch_on_index.switch_delete_cookies.L_DELETE_COOKIES}
		</a>
	</li>
	<!-- END switch_delete_cookies -->
</ul>
<!-- END switch_on_index -->

<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function () {
		var curid = '{CUR_ID}';

		var btn_collapse = $('<div></div>', {
			class: 'forum-hide',
			html: '<div class="forum-hide-icon-a"></div><div class="forum-hide-icon-b"></div>',
		});

		var collapsed = [];

		if (readCookie('collapsed') != null && readCookie('collapsed') != '') {
			collapsed = readCookie('collapsed').split(',');
		}

		$(document).on('click', '.forum-hide', function () {
			$(this).toggleClass('forum-show');
			$(this).parents('.forum').toggleClass('forum-hidden');

			if (readCookie('collapsed') != null && readCookie('collapsed') != '') {
				collapsed = readCookie('collapsed').split(',');
			}

			if (!$(this).parents('.forum').hasClass('forum-hidden')) {
				removeFromArray(curid + '.' + $(this).parents('.forum').data('cindex'), collapsed);

				createCookie('collapsed', collapsed);
			} else {
				collapsed.push(curid + '.' + $(this).parents('.forum').data('cindex'));

				createCookie('collapsed', collapsed);
			}
		});

		$('.forum').each(function (i) {
			$(this).data('cindex', '' + i);

			$(btn_collapse)
				.clone()
				.attr('id', 'forum' + i)
				.appendTo($(this).find('.forum-header'));

			if ($.inArray(curid + '.' + i, collapsed) > -1) {
				$(this).find('.forum-hide').toggleClass('forum-show');
				$(this).toggleClass('forum-hidden');
			}

			if ($(this).find('.type-classified').length) {
				$(this)
					.addClass('type-table-classified')
					.find('.type-classified')
					.find('.forum-statistics-posts').remove();
			}
		});
	});

	function removeFromArray(item, array) {
		var i = array.indexOf(item);

		if (i > -1) {
			array = array.splice(i, 1);
		}
	}

	function createCookie(name, value, days) {
		var expires;

		if (days) {
			var date = new Date();
			date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
			expires = "; expires=" + date.toGMTString();
		} else {
			expires = "";
		}
		document.cookie = encodeURIComponent(name) + "=" + encodeURIComponent(value) + expires + "; path=/";
	}

	function readCookie(name) {
		var nameEQ = encodeURIComponent(name) + "=";
		var ca = document.cookie.split(';');
		for (var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0) === ' ') c = c.substring(1, c.length);
			if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length, c.length));
		}
		return null;
	}

	//]]>
</script>
