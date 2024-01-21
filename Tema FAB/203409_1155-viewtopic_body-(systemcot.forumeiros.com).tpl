<!-- BEGIN switch_plus_menu -->
<script type="text/javascript">
    //<![CDATA[
    var multiquote_img_off = '{JS_MULTIQUOTE_IMG_OFF}', multiquote_img_on = '{JS_MULTIQUOTE_IMG_ON}';
</script>
<!-- END switch_plus_menu -->
<script type="text/javascript">
    var hiddenMsgLabel = { visible:'{JS_HIDE_HIDDEN_MESSAGE}', hidden:'{JS_SHOW_HIDDEN_MESSAGE}' };
    showHiddenMessage = function(id)
    {
        try
        {
            var regId = parseInt(id, 10);
            if( isNaN(regId) ) { regId = 0; }

            if( regId > 0)
            {
                $('.post--' + id).parent().toggle(0, function()
                {
                    if( $(this).is(":visible") )
                    {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.visible);
                    }
                    else
                    {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.hidden);
                    }
                });
            }
        }
        catch(e) { }

        return false;
    };
    //]]>
</script>

<!-- BEGIN switch_push_direct_send -->
<div id="push-answer" class="jqmWindow"></div>
<script src="{JQUERY_DIR}jqmodal/jqmodal.js" type="text/javascript"></script>
<!-- END switch_push_direct_send -->

<main id="topic">
    <div class="topic-header">
        <h1><a href="{TOPIC_URL}">{TOPIC_TITLE}</a><!-- BEGIN switch_push_direct_send -->&nbsp;<span id="push-bell" style="color:goldenrod;" title="{switch_push_direct_send.L_PUSH_SEND}"><i class="material-icons">notifications</i></span><!-- END switch_push_direct_send --></h1>
        <div id="breadcrumbs" class="breadcrumbs-topic">
            <a href="{U_INDEX}"><i class="material-icons">home</i> <span>{L_INDEX}</span></a>
            {NAV_CAT_DESC}
        </div>  
      
        <!-- BEGIN switch_user_authreply -->
        <a href="{U_POST_REPLY_TOPIC}" title="{T_POST_REPLY_TOPIC}" {S_POST_REPLY_TOPIC} class="btn btn-default">
            <i class="material-icons">{I_POST_REPLY_TOPIC}</i>
            <span>{L_POST_REPLY_TOPIC}</span>
        </a>
        <!-- END switch_user_authreply -->
        
        <!-- BEGIN topicpagination -->
        <div class="pagination">
            {PAGINATION}
        </div>
        <!-- END topicpagination -->
    </div>

  
    <!-- BEGIN switch_isconnect -->
    <div class="quick-nav-topics">
        <a href="{U_VIEW_OLDER_TOPIC}" title="{L_VIEW_PREVIOUS_TOPIC}"><i class="material-icons">chevron_left</i><span>{L_PREVIOUS}</span></a>
        <a href="{U_VIEW_NEWER_TOPIC}" title="{L_VIEW_NEXT_TOPIC}" style="float: right;"><span>{L_NEXT}</span><i class="material-icons">chevron_right</i></a>
    </div>
    <!-- END switch_isconnect -->

    {POLL_DISPLAY}

    <!-- BEGIN postrow -->
    <!-- BEGIN hidden -->
    <div class="post-wrap {postrow.hidden.ROW_CLASS} post-hidden">
        <div class="block">
            <div class="block-content">
                {postrow.hidden.MESSAGE}
                <div class="block-footer" style="display: none;">
                    <!-- END hidden -->

                    <!-- BEGIN displayed -->
                    <div id="post-{postrow.U_POST_ID}" class="post-wrap {postrow.displayed.ROW_COUNT}{postrow.displayed.ONLINE_IMG_NEW} post--{postrow.displayed.U_POST_ID}">
                        <div id="{postrow.U_POST_ID}" class="post-header">
                            <h2>
                                <i class="material-icons">description</i>
                                {postrow.displayed.ICON}
                                <span class="post-heading-wrap">
                                    <a href="{postrow.displayed.POST_URL}">{postrow.displayed.POST_SUBJECT}</a>
                                    <span class="post-date">{postrow.displayed.POST_DATE_NEW}</span>
                                </span>
                            </h2>
                            <div class="mobile-hide post-buttons">
                                <ul>
                                    <li class="btn-thank">
                                        {postrow.displayed.THANK_IMG}
                                    </li>
                                    <li class="btn-quote-multi">
                                        {postrow.displayed.MULTIQUOTE_IMG}
                                    </li>
                                    <li class="btn-quote">
                                        {postrow.displayed.QUOTE_IMG}
                                    </li>
                                    <li class="btn-edit">
                                        {postrow.displayed.EDIT_IMG}
                                    </li>
                                    <li class="btn-delete">
                                        {postrow.displayed.DELETE_IMG}
                                    </li>
                                    <li class="btn-ip">
                                        {postrow.displayed.IP_IMG}
                                    </li>
                                    <li class="btn-report">
                                        {postrow.displayed.REPORT_IMG_NEW}
                                    </li>
                                </ul>
                            </div>
                            <div class="mobile-show dropdown post-buttons-mobile">
                                <i class="material-icons">more_horiz</i>
                                <ul class="dropdown-box">
                                    <li class="btn-thank">
                                        {postrow.displayed.THANK_IMG}
                                    </li>
                                    <li class="btn-quote-multi">
                                        {postrow.displayed.MULTIQUOTE_IMG}
                                    </li>
                                    <li class="btn-quote">
                                        {postrow.displayed.QUOTE_IMG}
                                    </li>
                                    <li class="btn-edit">
                                        {postrow.displayed.EDIT_IMG}
                                    </li>
                                    <li class="btn-delete">
                                        {postrow.displayed.DELETE_IMG}
                                    </li>
                                    <li class="btn-ip">
                                        {postrow.displayed.IP_IMG}
                                    </li>
                                    <li class="btn-report">
                                        {postrow.displayed.REPORT_IMG_NEW}
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="post-body">
                            <div class="post">
                                <div class="post-content">
                                    {postrow.displayed.MESSAGE}

                                    {postrow.displayed.EDITED_MESSAGE}

                                    <!-- BEGIN switch_attachments -->
                                    <div class="attachbox">
                                        <b>{postrow.displayed.switch_attachments.L_ATTACHMENTS}</b>
                                        <dl class="attachments">
                                            <!-- BEGIN switch_post_attachments -->
                                            <dt>
                                                <!-- BEGIN switch_dl_att -->
                                                <a class="postlink btn btn-flat" href="{postrow.displayed.switch_attachments.switch_post_attachments.switch_dl_att.U_ATTACHMENT}"><i class="material-icons">attach_file</i>{postrow.displayed.switch_attachments.switch_post_attachments.switch_dl_att.ATTACHMENT}</a> {postrow.displayed.switch_attachments.switch_post_attachments.switch_dl_att.ATTACHMENT_DEL}
                                                <!-- END switch_dl_att -->
                                                <!-- BEGIN switch_no_dl_att -->
                                                <div class="postlink btn btn-flat" style="cursor: not-allowed"><i class="material-icons">attach_file</i>{postrow.displayed.switch_attachments.switch_post_attachments.switch_no_dl_att.ATTACHMENT}</div> {postrow.displayed.switch_attachments.switch_post_attachments.switch_no_dl_att.ATTACHMENT_DEL}
                                                <!-- END switch_no_dl_att -->
                                            </dt>
                                            <dd>
                                                <!-- BEGIN switch_no_comment -->
                                                <p>
                                                    {postrow.displayed.switch_attachments.switch_post_attachments.switch_no_comment.ATTACHMENT_COMMENT}
                                                </p>
                                                <!-- END switch_no_comment -->
                                                <!-- BEGIN switch_no_dl_att -->
                                                <p><strong>{postrow.displayed.switch_attachments.switch_post_attachments.switch_no_dl_att.TEXT_NO_DL}</strong></p>
                                                <!-- END switch_no_dl_att -->
                                                <p>(<span class="ltr">{postrow.displayed.switch_attachments.switch_post_attachments.FILE_SIZE}</span>) {postrow.displayed.switch_attachments.switch_post_attachments.NB_DL}</p>
                                            </dd>
                                            <!-- END switch_post_attachments -->
                                        </dl>
                                    </div>
                                    <!-- END switch_attachments -->
                                    <!-- BEGIN switch_signature -->
                                    <div class="post-signature" id="sig{postrow.displayed.U_POST_ID}">{postrow.displayed.SIGNATURE_NEW}</div>
                                    <!-- END switch_signature -->
                                </div>
                                <div class="post-footer<!-- BEGIN switch_likes_active --> likes-active<!-- END switch_likes_active --><!-- BEGIN switch_vote_active --> vote-active<!-- END switch_vote_active -->">
                                    <!-- BEGIN switch_likes_active -->
                                    <div class="fa_like_div">
                                        <button class="rep-button {postrow.displayed.switch_likes_active.C_VOTE_LIKE}"  data-href="{postrow.displayed.switch_likes_active.U_VOTE_LIKE}" data-href-rm="{postrow.displayed.switch_likes_active.U_VOTE_RM_LIKE}">
                                            <span class="rep-cat">
                                                <i class="material-icons">thumb_up</i>
                                                {postrow.displayed.switch_likes_active.COUNT_VOTE_LIKE}
                                            </span>
                                            <span>{postrow.displayed.switch_likes_active.L_LIKE}</span>
                                        </button>
                                        <!-- BEGIN switch_dislike_button -->
                                        <button class="rep-button {postrow.displayed.switch_likes_active.switch_dislike_button.C_VOTE_DISLIKE}" data-href="{postrow.displayed.switch_likes_active.switch_dislike_button.U_VOTE_DISLIKE}" data-href-rm="{postrow.displayed.switch_likes_active.switch_dislike_button.U_VOTE_RM_LIKE}">
                                            <span class="rep-cat">
                                                <i class="material-icons">thumb_down</i>
                                                {postrow.displayed.switch_likes_active.switch_dislike_button.COUNT_VOTE_DISLIKE}
                                            </span>
                                            <span>{postrow.displayed.switch_likes_active.switch_dislike_button.L_DISLIKE}</span>
                                        </button>
                                        <!-- END switch_dislike_button -->
                                        <!-- BEGIN switch_like_list -->
                                        {postrow.displayed.switch_likes_active.switch_like_list.D_LIKE_LIST}
                                        <!-- END switch_like_list -->
                                        <!-- BEGIN switch_dislike_list -->
                                        {postrow.displayed.switch_likes_active.switch_dislike_list.D_DISLIKE_LIST}
                                        <!-- END switch_dislike_list -->
                                    </div>
                                    <!-- END switch_likes_active -->
                                    <!-- BEGIN switch_vote_active -->
                                    <div class="vote">
                                        <!-- BEGIN switch_vote -->
                                        <a href="{postrow.displayed.switch_vote_active.switch_vote.U_VOTE_PLUS}" class="vote-up">
                                            <i class="material-icons">add_circle_outline</i>
                                        </a>
                                        <!-- END switch_vote -->

                                        <!-- BEGIN switch_vote -->
                                        <a href="{postrow.displayed.switch_vote_active.switch_vote.U_VOTE_MINUS}" class="vote-down">
                                            <i class="material-icons">remove_circle_outline</i>
                                        </a>
                                        <!-- END switch_vote -->

                                        <!-- BEGIN switch_bar -->
                                        <div class="vote-bar" title="{postrow.displayed.switch_vote_active.L_VOTE_TITLE}">
                                            <div class="vote-bar-desc">
                                                {postrow.displayed.switch_vote_active.L_VOTE_TITLE}
                                            </div>

                                            <div class="vote-bars">
                                                <!-- BEGIN switch_vote_plus -->
                                                <div class="vote-bar-plus" style="width:{postrow.displayed.switch_vote_active.switch_bar.switch_vote_plus.HEIGHT_PLUS}px;"></div>
                                                <!-- END switch_vote_plus -->

                                                <!-- BEGIN switch_vote_minus -->
                                                <div class="vote-bar-minus" style="width:{postrow.displayed.switch_vote_active.switch_bar.switch_vote_minus.HEIGHT_MINUS}px;"></div>
                                                <!-- END switch_vote_minus -->
                                            </div>
                                        </div>
                                        <!-- END switch_bar -->

                                        <!-- BEGIN switch_no_bar -->
                                        <div title="{postrow.displayed.switch_vote_active.L_VOTE_TITLE}" class="vote-bar-empty"></div>
                                        <!-- END switch_no_bar -->
                                    </div>
                                    <!-- END switch_vote_active -->
                                </div>
                            </div>
                            <aside class="post-aside">
                                <div class="post-author-status"></div>
                                <div class="post-author">
                            <span class="post-author-name">
                                {postrow.displayed.POSTER_NAME}
                            </span>
                                </div>

                                <div class="post-author-avatar">
                                    <div class="avatar-big">
                                        {postrow.displayed.POSTER_AVATAR}
                                    </div>
                                </div>
                                                               <span class="post-author-title">
                                {postrow.displayed.POSTER_RANK_NEW}{postrow.displayed.RANK_IMAGE}
                            </span>
                                
                                <dl class="post-author-details">
                                    <!-- BEGIN profile_field -->
                                    <dt>{postrow.displayed.profile_field.LABEL}</dt>
                                    <dd>{postrow.displayed.profile_field.CONTENT}</dd>
                                    <!-- END profile_field -->
                                </dl>
                                <div class="post-author-rpg">
                                    {postrow.displayed.POSTER_RPG}
                                </div>
           
               <div class="conquistas-fab"><div {postrow.displayed.AWARDS_SHOW} class="dd_award {postrow.displayed.PROFILE_POSITION} box-body">
                                    {postrow.displayed.AWARDS}</div>
                                                          <div class="award_more box-body"></div><br/></div>
                                                                  
                            </aside>
                        </div>
                    </div>
                    <!-- END displayed -->

                    <!-- BEGIN hidden -->
                </div>
            </div>
        </div>
    </div>
    <!-- END hidden -->
    <!-- END postrow -->

    <!-- BEGIN promot_trafic -->
    <div class="block block-ptrafic" id="ptrafic_close" style="display: none;">
        <div class="block-header">
            <a href="javascript:ShowHideLayer('ptrafic_open','ptrafic_close');">
                <i class="material-icons">add_circle</i>
            </a>
            <span>{PROMOT_TRAFIC_TITLE}</span>
        </div>
    </div>
    <div class="block block-ptrafic" id="ptrafic_open" style="display:'';">
        <div class="block-header">
            <a href="javascript:ShowHideLayer('ptrafic_open','ptrafic_close');">
                <i class="material-icons">remove_circle</i>
            </a>
            <span>{PROMOT_TRAFIC_TITLE}</span>
        </div>
        <div class="block-content ptrafic">
            <!-- BEGIN link -->
            <a href="{promot_trafic.link.U_HREF}" title="{promot_trafic.link.TITLE}" >
                <i class="material-icons">chat_bubble</i>
                {promot_trafic.link.TITLE}
            </a><br />
            <!-- END link -->
        </div>
    </div>
    <!-- END promot_trafic -->

    <!-- BEGIN switch_forum_rules -->
    <div class="block" id="forum_rules">
        <div class="block-header">
            {L_FORUM_RULES}
        </div>
        <div class="block-content">
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
    </div>
    <!-- END switch_forum_rules -->

    {INLINE_MESSAGE}

    {QUICK_REPLY_FORM}
  <!-- BEGIN switch_user_authreply -->
<link rel="stylesheet" href="https://illiweb.com/rs3/71/frm/SCEditor/src/themes/fa.default.min.css" type="text/css" media="all" />
<style type="text/css">
   .sceditor-button-flash div      { background-position: 0 -628px; }
   .sceditor-button-servimg div    { background-position: 0 -644px; }
   .sceditor-button-dailymotion div{ background-position: 0 -660px; }
   .sceditor-button-faspoiler div  { background-position: 0 -676px; }
   .sceditor-button-fahide div     { background-position: 0 -692px; }
   .sceditor-button-fascroll div   { background-position: 0 -708px; }
   .sceditor-button-faupdown div   { background-position: 0 -724px; }
   .sceditor-button-farand div     { background-position: 0 -756px; }
   .sceditor-button-faroll div     { background-position: 0 -772px; }
   .sceditor-button-more div       { background-position: 0 -788px; }
   .sceditor-button-emoticon div   { background-position: 0 -804px; }
   .sceditor-button-headers div    { background-position: 0 -820px; }
   .sceditor-button-staff div      { background-position: 0 -834px; }
</style>
<script>
   $('#quick-reply-textarea').replaceWith('<textarea id="text_editor_textarea" name="message" style="min-height: 450px!important;"></textarea>');
</script>
<script type="text/javascript" src="https://illiweb.com/rs3/18/frm/SCEditor/src/jquery.sceditor.js"></script>
<script type="text/javascript" src="https://illiweb.com/rs3/71/frm/jquery/cookie/jquery.cookie.js"></script>
<script type="text/javascript" src="https://illiweb.com/rs3/71/frm/SCEditor/src/plugins/bbcode.js"></script>
<script type="text/javascript" src="https://illiweb.com/rs3/71/frm/SCEditor/src/sceditor-commands.js"></script>
<script type="text/javascript" src="https://illiweb.com/rs3/71/frm/SCEditor/src/sceditor-commands-bbcode.js"></script>
<script type="text/javascript" src="https://illiweb.com/rs3/71/frm/SCEditor/src/sceditor-custom-bbcode.js"></script>
<script type="text/javascript" charset="UTF-8">
   (function ($) {
       'use strict';
  
       $.sceditor.locale["pt"] = {
           "Bold"                       : "Negrito",
           "Italic"                     : "It+íl.",
           "Underline"                  : "Sublinhar",
           "Strikethrough"              : "Riscado",
  
           "Align left"                 : "Alinhar +á esquerda",
           "Center"                     : "Centrado",
           "Align right"                : "Alinhar +á direita",
           "Justify"                    : "Justificado",
  
           "Bullet list"                : "-Lista",
           "Numbered list"              : "Lista ordenada",
           "Insert a horizontal rule"   : "Inserir uma linha",
  
           "Insert a Quote"             : "'Citar'",
           "Code"                       : "Code",
           "Spoiler"                    : "Spoiler",
           "Hidden"                     : "Escondido",
           "Insert a table"             : "Inserir uma tabela",
  
           "Host an image"              : "Hospedar uma imagem",
           "Insert an image"            : "Inserir uma imagem",
           "Insert an email"             : "Inserir um email",
           "Insert a link"              : "Inserir um link",
           "Unlink"                     : "Excluir um link",
           "Insert a YouTube video"     : "Inserir um video do Youtube",
           "Insert a Dailymotion Video" : "Insira um video Dailymotion",
           "Flash"                      : "Flash",
  
           "Format Headers"             : "Formato dos t+¡tulos",
           "Font Size"                  : "Tamanho da fonte",
           "Font Color"                 : "Cor",
           "Font Name"                  : "Fonte",
           "Remove Formatting"          : "Excluir a formata+º+úo do texto",
  
           "Subscript"                  : "+ìndice",
           "Superscript"                : "Exposi+º+úo",
  
           "Horizontal scrolling"       : "Desfilamento horizontal",
           "Vertical scrolling"         : "Desfilamento vertical",
           "Random"                     : "Aleat+¦rio",
           "Dices roll"                 : "Lan+ºar dados",
  
           "Insert an emoticon"         : "Smileys",
           "Insert current date"        : "Data atual",
           "Insert current time"        : "Hora atual",
           "Paste Text"                 : "Inserir um texto n+úo formatado",
           "Switch Editor Mode"         : "Transferir o modo de edi+º+úo",
  
           "color_dark_red"    : "Vermelho Escuro",
           "color_red"         : "Vermelho",
           "color_orange"      : "Laranja",
           "color_brown"       : "Marrom",
           "color_yellow"      : "Amarelo",
           "color_green"       : "Verde",
           "color_olive"       : "Azeitona",
           "color_cyan"        : "Ciano",
           "color_blue"        : "Azul",
           "color_dark_blue"   : "Azul escuro",
           "color_indigo"      : "+ìndigo",
           "color_violet"      : "Violeta",
           "color_grey"        : "Cinza",
           "color_white"       : "Branco",
           "color_black"       : "Preto",
  
           "More"                       : "Mais bot+Áes",
           "Insert"                                    : "Inserir",
           "URL:"                                      : "URL",
           "Invalid YouTube video"                     : "V+¡deo inv+ílido",
           "Author (optional)"                         : "Autor (Opcional)",
           "Title (optional)"                          : "T+¡tulo (Opcional)",
           "Cols:"                                     : "Colunas",
           "Rows:"                                     : "linhas",
           "Width (optional):"                         : "Largura (Opcional)",
           "Height (optional):"                        : "Altura (Opcional)",
           "Description (optional):"                   : "Descri+º+úo (Opcional)",
           "Paste your text inside the following box:" : "Colar texto",
           "Border"                                    : "Borda (px)",
  
           "dateFormat": "day.month.year"
       };
   })(jQuery);
</script>
<script type="text/javascript">
   var plugins = '';
   var palette = 1;
   var illiweb = 'https://illiweb.com/';
   var locale = 'pt';
   var height = '200';
   var width = '500';
   var plugin = 'bbcode';
   var toolbar = 'bold,italic,underline,strike|left,center,right,justify|quote,code,faspoiler,fahide|image,link,youtube|headers,size,color,font,removeformat|emoticon,date,time,source';
   var cssFile = 'https://illiweb.com/rs3/71/frm/SCEditor/minified/jquery.sceditor.default.min.css';
   var isRtl = 0;
   var dice = new Array();
   var bSourceMode = true;
   var emoticonsEnabled = 1;
   var smileys = {":D": "https://2img.net/i/fa//i/smiles/icon_biggrin.png",":)": "https://2img.net/i/fa//i/smiles/icon_smile.gif",":(": "https://2img.net/i/fa//i/smiles/icon_sad.gif",":o": "https://2img.net/i/fa//i/smiles/icon_surprised.gif",":shock:": "https://2img.net/i/fa//i/smiles/icon_eek.gif","8)": "https://2img.net/i/fa//i/smiles/icon_cool.gif",":lol:": "https://2img.net/i/fa//i/smiles/icon_lol.gif",":x": "https://2img.net/i/fa//i/smiles/icon_mad.gif",":P": "https://2img.net/i/fa//i/smiles/icon_razz.gif",":oops:": "https://2img.net/i/fa//i/smiles/icon_redface.gif",":cry:": "https://2img.net/i/fa//i/smiles/icon_cry.gif",":evil:": "https://2img.net/i/fa//i/smiles/icon_evil.gif",":twisted:": "https://2img.net/i/fa//i/smiles/icon_twisted.gif",":roll:": "https://2img.net/i/fa//i/smiles/icon_rolleyes.gif",";)": "https://2img.net/i/fa//i/smiles/icon_wink.gif",":!:": "https://2img.net/i/fa//i/smiles/icon_exclaim.gif",":?:": "https://2img.net/i/fa//i/smiles/icon_question.gif",":idea:": "https://2img.net/i/fa//i/smiles/icon_idea.png",":arrow:": "https://2img.net/i/fa//i/smiles/icon_arrow.gif",":face:": "https://2img.net/i/fa//i/smiles/fresse.png",":star:": "https://2img.net/i/fa//i/smiles/star3.png",":suspect:": "https://2img.net/i/fa//i/smiles/suspect.gif",":heart:": "https://2img.net/i/fa//i/smiles/herz.png",":no:": "https://2img.net/i/fa//i/smiles/kopfschuettel.gif",":@:": "https://2img.net/i/fa//i/smiles/at.png",":cyclops:": "https://2img.net/i/fa//i/smiles/icon_cyclops.gif",":clown:": "https://2img.net/i/fa//i/smiles/icon_clown.png",":pirat:": "https://2img.net/i/fa//i/smiles/icon_pirat.png",":tongue:": "https://2img.net/i/fa//i/smiles/icon_tongue.png",":silent:": "https://2img.net/i/fa//i/smiles/icon_silent.png",":pale:": "https://2img.net/i/fa//i/smiles/icon_pale.gif",":alien:": "https://2img.net/i/fa//i/smiles/alien.png",":cat:": "https://2img.net/i/fa//i/smiles/icon_cat.png",":monkey:": "https://2img.net/i/fa//i/smiles/icon_monkey.png",":pig:": "https://2img.net/i/fa//i/smiles/icon_porc.png",":rabbit:": "https://2img.net/i/fa//i/smiles/icon_rabbit.png",":bounce:": "https://2img.net/i/fa//i/smiles/icon_bounce.gif",":confused:": "https://2img.net/i/fa//i/smiles/confused.png",":affraid:": "https://2img.net/i/fa//i/smiles/affraid.gif",":bball:": "https://2img.net/i/fa//i/smiles/icon_basketball.gif",":cheers:": "https://2img.net/i/fa//i/smiles/icon_cheers.png",":bom:": "https://2img.net/i/fa//i/smiles/bom.png",":drunken:": "https://2img.net/i/fa//i/smiles/drunken_smilie.png",":sleep:": "https://2img.net/i/fa//i/smiles/sleep.gif",":sunny:": "https://2img.net/i/fa//i/smiles/icon_sunny.png",":albino:": "https://2img.net/i/fa//i/smiles/icon_albino.png",":cherry:": "https://2img.net/i/fa//i/smiles/icon_cherry.png",":santa:": "https://2img.net/i/fa//i/smiles/icon_santa.png",":rendeer:": "https://2img.net/i/fa//i/smiles/icon_rendeer.png",":farao:": "https://2img.net/i/fa//i/smiles/icon_farao.png",":king:": "https://2img.net/i/fa//i/smiles/icon_king.png",":queen:": "https://2img.net/i/fa//i/smiles/icon_queen.png",":joker:": "https://2img.net/i/fa//i/smiles/icon_jokercolor.png",":geek:": "https://2img.net/i/fa//i/smiles/icon_geek.png",":scratch:": "https://2img.net/i/fa//i/smiles/icon_scratch.png",":study:": "https://2img.net/i/fa//i/smiles/icon_study.png",":elephant:": "https://2img.net/i/fa//i/smiles/icon_elephant.png",":flower:": "https://2img.net/i/fa//i/smiles/icon_flower.png",":afro:": "https://2img.net/i/fa//i/smiles/icon_rr.png",":lol!:": "https://2img.net/i/fa//i/smiles/lol.gif",":|": "https://2img.net/i/fa//i/smiles/icon_neutral.gif"};
   var iframeSrc = '/smilies?f={FORUM_ID}&mode=smilies_frame&t=1410370588';
   var illiwebDomain = 'https://illiweb.com/';
   var servimgDomain = 'www.servimg.com';
   var INTRANET = 0;
</script>
<script type="text/javascript" src="https://illiweb.com/rs3/71/frm/SCEditor/src/instance-sceditor.js"></script>
<!-- END switch_user_authreply -->

    <div class="topic-actions bottom">
        <div class="topic-actions-buttons">
            <!-- BEGIN switch_user_logged_in -->
            <!-- BEGIN watchtopic -->
            {S_WATCH_TOPIC}
            <!-- END watchtopic -->
            <!-- END switch_user_logged_in -->
        </div>
    </div>

    <!-- BEGIN topicpagination -->
    <div class="pagination">
        {PAGINATION}
    </div>
    <!-- END topicpagination -->
    <!-- BEGIN viewtopic_bottom -->
    <form class="quickmod" method="get" action="{S_FORM_MOD_ACTION}">
        <input type="hidden" name="t" value="{TOPIC_ID}" />
        <!-- <input type="hidden" name="sid" value="{S_SID}" /> -->
        <input type="hidden" name="{SECURE_ID_NAME}" value="{SECURE_ID_VALUE}" />
    </form>

    <div class="topic-admin">{S_TOPIC_ADMIN}</div>
    <!-- END viewtopic_bottom -->

    <!-- BEGIN show_permissions -->
    <div class="block">
        <div class="block-header">
            <i class="material-icons">privacy_tip</i> {L_TABS_PERMISSIONS}
        </div>
        <div class="block-content">
            {S_AUTH_LIST}
        </div>
    </div>
    <!-- END show_permissions -->

</main>

<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {
        $('.post-author-contact').each(function () {
            $(this).find('a:nth-child(5n)').each(function () {
                $(this).after('<br />');
            });
        });
    });
    //]]>
</script>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.9.0/styles/railscasts.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.9.0/highlight.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.9.0/languages/go.min.js"></script>
<script>
    $(document).ready(function() {
        $('pre, code').each(function(i, block) {
            hljs.highlightBlock(block);
        });

        $('.post-author-contact').on('click', function() {
            if ($(this).parents('.post-body').css('flex-direction') == 'row') {
                $(this).children('.dropdown-box').css({
                    'left': 'auto',
                    'right': '0'
                });
            } else {
                $(this).children('.dropdown-box').css({
                    'left': '0',
                    'right': 'auto'
                });
            }
        });

        <!-- BEGIN switch_push_direct_send -->
        $('#push-answer').jqm({toTop: true});

        $('#push-bell').click(function(){
            return sendWebPush({TOPIC_ID});
        });

        function sendWebPush(tId){
            $.get("/ajax_push.php?topicID=" + tId ).done(showPushAnswer);
        }

        function showPushAnswer(data) {
            $('#push-answer').html(data).jqmShow();
            $('.jqmOverlay').bgiframe();
            $('#push-answer').bgiframe();
        }
        <!-- END switch_push_direct_send -->
    });
</script>