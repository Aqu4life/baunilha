<script type="text/javascript">
//<![CDATA[
var multiquote_img_off = '{JS_MULTIQUOTE_IMG_OFF}', multiquote_img_on = '{JS_MULTIQUOTE_IMG_ON}', _atr = '{JS_DIR}addthis/', _ati = '{PATH_IMG_FA}addthis/'{ADDTHIS_LANG}, addthis_localize = { share_caption: "{L_SHARE_CAPTION}", email: "{L_EMAIL}", email_caption: "{L_EMAIL_CAPTION}", favorites: "{L_SHARE_BOOKMARKS}", print: "{L_PRINT}", more: "{L_MORE}" };

$(function(){
    if(typeof(_atc) == "undefined") {
        _atc = {  };
    }
});

var hiddenMsgLabel = { visible:'{JS_HIDE_HIDDEN_MESSAGE}', hidden:'{JS_SHOW_HIDDEN_MESSAGE}' };
showHiddenMessage = function(id) {
    try {
        var regId = parseInt(id, 10);
        if( isNaN(regId) ) { regId = 0; }

        if( regId > 0) {
            $('.post--' + id).toggle(0, function() {
				if( $(this).is(":visible") ) {
					$('#hidden-title--' + id).html(hiddenMsgLabel.visible);
				} else {
					$('#hidden-title--' + id).html(hiddenMsgLabel.hidden);
				}
			});
        }
    } catch(e) { }

	return false;
};

//]]>
</script>

<!-- BEGIN postrow -->
	<!-- BEGIN hidden -->
		<div class="post {postrow.hidden.ROW_COUNT}">
			<p style="text-align:center">{postrow.hidden.MESSAGE}</p>
		</div>
	<!-- END hidden -->
	<!-- BEGIN displayed -->
		<div id="p{postrow.displayed.U_POST_ID}" class="post row1{postrow.displayed.ONLINE_IMG_NEW} post--{postrow.displayed.U_POST_ID}"{postrow.displayed.THANK_BGCOLOR} style="{postrow.displayed.DISPLAYABLE_STATE}">
            		<div style="position: relative; top: -30px; width: 1px;" id="{postrow.displayed.U_POST_ID}"></div>
                  	<div class="postprofile" id="profile{postrow.displayed.U_POST_ID}">
				<!-- div class="online2"></div-->
				<dl>
					<dt>
                                            <div class="postprofile-name">
							{postrow.displayed.POSTER_NAME}
						</div>
                                          
						<div class="postprofile-avatar">
							{postrow.displayed.POSTER_AVATAR}
						</div>
                                          
						<div class="postprofile-rank">
							{postrow.displayed.POSTER_RANK_NEW}{postrow.displayed.RANK_IMAGE}
						</div>
      
					</dt>
				
				
				</dl>
			</div>

			<div class="postbody">
                          	<div class="topic-date">
                                  	<ul class="profile-icons">
                                                <li class="btn-quote">
                                                        <a href="{postrow.displayed.QUOTE_URL}">
                                                                <i class="ion-quote"></i>
                                                        </a>
                                                </li>
                                                <li class="btn-edit">
                                                        <a href="{postrow.displayed.EDIT_URL}">
                                                                <i class="ion-edit"></i>
                                                        </a>
                                                </li>
                                                <li class="btn-delete">
                                                        <a href="{postrow.displayed.DELETE_URL}">
                                                                <i class="ion-trash-a"></i>
                                                        </a>
                                                </li>
                                                <li class="btn-ip">
                                                        <a href="{postrow.displayed.IP_URL}">
                                                                <i class="ion-ios-information"></i>
                                                        </a>
                                                </li>
                                                <li class="btn-report">
                                                        {postrow.displayed.REPORT_IMG}
                                                </li>
                                        </ul>
                                  	<span>{postrow.displayed.POST_DATE_NEW}</span>
				</div>
				<div class="content">
					<div>{postrow.displayed.MESSAGE}</div>
					<!-- BEGIN switch_attachments -->
						<dl class="attachbox">
							<dt>{postrow.displayed.switch_attachments.L_ATTACHMENTS}</dt>
							<dd class="attachments">
								<!-- BEGIN switch_post_attachments -->
								<dl class="file">
									<dt>
										<img src="{postrow.displayed.switch_attachments.switch_post_attachments.U_IMG}" alt=""/>
									</dt>
									<dd>
										<!-- BEGIN switch_dl_att -->
										<span><a class="postlink" href="{postrow.displayed.switch_attachments.switch_post_attachments.switch_dl_att.U_ATTACHMENT}">{postrow.displayed.switch_attachments.switch_post_attachments.switch_dl_att.ATTACHMENT}</a> {postrow.displayed.switch_attachments.switch_post_attachments.switch_dl_att.ATTACHMENT_DEL}</span>
										<!-- END switch_dl_att -->

										<!-- BEGIN switch_no_dl_att -->
										<span>{postrow.displayed.switch_attachments.switch_post_attachments.switch_no_dl_att.ATTACHMENT} {postrow.displayed.switch_attachments.switch_post_attachments.switch_no_dl_att.ATTACHMENT_DEL}</span>
										<!-- END switch_no_dl_att -->

										<!-- BEGIN switch_no_comment -->
										<span>{postrow.displayed.switch_attachments.switch_post_attachments.switch_no_comment.ATTACHMENT_COMMENT}</span>
										<!-- END switch_no_comment -->

										<!-- BEGIN switch_no_dl_att -->
										<span><strong>{postrow.displayed.switch_attachments.switch_post_attachments.switch_no_dl_att.TEXT_NO_DL}</strong></span>
										<!-- END switch_no_dl_att -->

										<span>({postrow.displayed.switch_attachments.switch_post_attachments.FILE_SIZE}) {postrow.displayed.switch_attachments.switch_post_attachments.NB_DL}</span>
									</dd>
								</dl>
								<!-- END switch_post_attachments -->
							</dd>
						</dl>
					<!-- END switch_attachments -->
				</div>
				<div class="edited-message">
					{postrow.displayed.EDITED_MESSAGE}
				</div>
				<!-- BEGIN switch_signature -->
					<div class="signature_div" id="sig{postrow.displayed.U_POST_ID}">{postrow.displayed.SIGNATURE_NEW}</div>
				<!-- END switch_signature -->
			</div>
		</div>
		<!-- BEGIN first_post_br -->
		<hr id="first-post-br" />
		<!-- END first_post_br -->
	<!-- END displayed -->
<!-- END postrow -->

<a name="bottomtitle"></a>

<div class="topic-actions bottom">
	<!-- BEGIN topicpagination -->
		<div class="pagination">
			{PAGINATION}
		</div>
	<!-- END topicpagination -->
  
  	<!-- BEGIN viewtopic_bottom -->
        	<p class="right">{S_TOPIC_ADMIN}</p>
        <!-- END viewtopic_bottom -->

	<div class="topic-actions-buttons">
		<!-- BEGIN switch_user_authreply -->
          		<a href="{U_POST_REPLY_TOPIC}" class="ion-reply button1" title="{L_POST_REPLY_TOPIC}"><span>{L_POST_REPLY_TOPIC}</span></a>
		<!-- END switch_user_authreply -->
	</div>
</div>

<!-- BEGIN promot_trafic -->
	<div class="block" id="ptrafic_close" style="display: none;">
		<div class="h3"><a href="javascript:ShowHideLayer('ptrafic_open','ptrafic_close');"><i class="ion-ios-plus-outline"></i></a>{PROMOT_TRAFIC_TITLE}</div>
	</div>
	<div class="block" id="ptrafic_open" style="display:'';">
		<div class="h3"><a href="javascript:ShowHideLayer('ptrafic_open','ptrafic_close');"><i class="ion-ios-minus-outline"></i></a>{PROMOT_TRAFIC_TITLE}</div>
		<ul class="ptrafic">
			<!-- BEGIN link -->
				<li>
					<a href="{promot_trafic.link.U_HREF}" title="{promot_trafic.link.TITLE}" rel="nofollow">
						<i class="ion-ios-chatbubble-outline"></i>{promot_trafic.link.TITLE}
					</a>
				</li>
			<!-- END link -->
		</ul>
	</div>
<!-- END promot_trafic -->

<!-- BEGIN switch_forum_rules -->
<div class="post row1" id="forum_rules">
	<div class="h3">{L_FORUM_RULES}</div>
	<div class="clear"></div>
	<table class="postbody">
		<tr>
			<!-- BEGIN switch_forum_rule_image -->
			<td class="logo">
				<img src="{RULE_IMG_URL}" alt="" />
			</td>
			<!-- END switch_forum_rule_image -->
			<td class="rules content">
				{RULE_MSG}
			</td>
		</tr>
	</table>
</div>
<!-- END switch_forum_rules -->

<!-- BEGIN switch_user_logged_in -->
	<a name="quickreply"></a>
	<div class="quickreply">{QUICK_REPLY_FORM}</div>
<!-- END switch_user_logged_in -->

<!-- BEGIN switch_image_resize -->
<script type="text/javascript">
//<![CDATA[
$(resize_images({ 'selector' : '.postbody .content', 'max_width' : {switch_image_resize.IMG_RESIZE_WIDTH}, 'max_height' : {switch_image_resize.IMG_RESIZE_HEIGHT} }));
//]]>
</script>
<!-- END switch_image_resize -->

<script src="//s7.addthis.com/js/300/addthis_widget.js#pubid=forumotion" type="text/javascript"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.9.0/styles/github-gist.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.9.0/highlight.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.9.0/languages/go.min.js"></script>
<script>
$(document).ready(function() {
	$('pre, code').each(function(i, block) {
		hljs.highlightBlock(block);
	});

	$('.post').each(function() {
		if (!$(this).find('.postprofile-avatar').html().length) {
			$(this).find('.postprofile-rank').css('border-bottom', 'none');
			$(this).find('.postprofile > dl > dt').css('min-height', $(this).find('.post-head').innerHeight());
		}
	});
});
</script>