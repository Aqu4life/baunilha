<!-- BEGIN catrow -->
	<!-- BEGIN tablehead -->
		<div class="forabg">
			<ul class="topiclist">
				<li class="header">
					<dl class="icon">
						<dd class="dterm"><div class="table-title">{catrow.tablehead.L_FORUM}</div></dd>
					</dl>
				</li>
			</ul>
			<ul class="topiclist forums">
	<!-- END tablehead -->

	<!-- BEGIN forumrow -->
				<li class="row">
					<dl class="icon">
						<dd class="dterm">
							<div style="display: block; margin : 0 {catrow.forumrow.INC_LEVEL_RIGHT} 0 {catrow.forumrow.INC_LEVEL_LEFT};">
								<h{catrow.forumrow.LEVEL} class="hierarchy">
								<a href="{catrow.forumrow.U_VIEWFORUM}" class="forumtitle">{catrow.forumrow.FORUM_NAME}</a>
								</h{catrow.forumrow.LEVEL}>
                                                          	<div class="forum-desc">{catrow.forumrow.FORUM_DESC}</div>
                                                                                                                                                                      	<div class="topics"><span>{catrow.forumrow.TOPICS}</span> {L_TOPICS} e <span>{catrow.forumrow.POSTS}</span> {L_POSTS}</div>
							</div>

						</dd>
						<dd class="lastpost">
							
                            <!-- BEGIN avatar -->
                            <span class="lastpost-avatar">{catrow.forumrow.avatar.LAST_POST_AVATAR}</span>
                            <!-- END avatar -->

							<span>
							<!-- BEGIN switch_topic_title -->
							<a href="{catrow.forumrow.U_LATEST_TOPIC}" title="{catrow.forumrow.LATEST_TOPIC_TITLE}">{catrow.forumrow.LATEST_TOPIC_NAME}</a><br />
							<!-- END switch_topic_title -->
							{catrow.forumrow.USER_LAST_POST}
							</span>
						</dd>
					</dl>
				</li>
	<!-- END forumrow -->

	<!-- BEGIN tablefoot -->
				</ul>
		</div>
	<!-- END tablefoot -->
<!-- END catrow -->

<script type="text/javascript">
//<![CDATA[
$(document).ready(function() {
	var btn_collapse = $('<div></div>', {
		class: 'btn-collapse'
	});

	var btn_collapse_show = $('<i></i>', {
		class: 'ion-android-add hidden',
		'data-tooltip': '{L_EXPEND_CAT}'
	}).appendTo(btn_collapse);

	var btn_collapse_hide = $('<i></i>', {
		class: 'ion-android-remove',
		'data-tooltip': '{L_HIDE_CAT}'
	}).appendTo(btn_collapse);

	var collapsed = [];

	if (readCookie('collapsed') != null && readCookie('collapsed') != '') {
		collapsed = readCookie('collapsed').split(',');
	}

	$(document).on('click', '.btn-collapse', function() {
		$(this).children('.ion-android-add').toggleClass('hidden');
		$(this).children('.ion-android-remove').toggleClass('hidden');
		$(this).parents('.forabg').toggleClass('hidden');

		if (readCookie('collapsed') != null && readCookie('collapsed') != '') {
			collapsed = readCookie('collapsed').split(',');
		}

		if (!$(this).parents('.forabg').hasClass('hidden')) {
			removeFromArray('' + $(this).parents('.forabg').data('cindex'), collapsed);

			createCookie('collapsed', collapsed);
		} else {
			collapsed.push('' + $(this).parents('.forabg').data('cindex'));

			createCookie('collapsed', collapsed);
		}
	});

	$('.forabg').each(function(i) {
		$(this).data('cindex', '' + i);

		$(btn_collapse)
			.clone()
			.attr('id', 'forabg' + i)
			.appendTo($(this).find('.header'));

		if ($.inArray('' + i, collapsed) > -1) {
			$(this).toggleClass('hidden');
			$('#forabg' + i).children('.ion-android-add').toggleClass('hidden');
			$('#forabg' + i).children('.ion-android-remove').toggleClass('hidden');
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