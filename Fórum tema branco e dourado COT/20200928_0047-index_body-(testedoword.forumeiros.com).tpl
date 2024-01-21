{JAVASCRIPT}

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
        <div class="h3"><i class="ion-stats-bars"></i>{L_WHO_IS_ONLINE}</div>

        {TOTAL_USERS_ONLINE}<br />
        {RECORD_USERS}<br />

        {LOGGED_IN_USER_LIST}<br />

        {L_ONLINE_USERS}
        {L_CONNECTED_MEMBERS}<br />

        {L_WHOSBIRTHDAY_TODAY}{L_WHOSBIRTHDAY_WEEK}

        <br />
        <div class="legend">{GROUP_LEGEND}</div>
    </div>
<script type="text/javascript">//<![CDATA[
$(document).ready(function() {var btn_collapse = $('<div></div>', {class: 'btn-collapse'});var btn_collapse_show = $('<i></i>', {class: 'ion-toggle-filled hidden','data-tooltip': 'Expandir'}).appendTo(btn_collapse);var btn_collapse_hide = $('<i></i>', {class: 'ion-toggle','data-tooltip': 'Esconder'}).appendTo(btn_collapse);var collapsed = [];if (readCookie('collapsed') != null && readCookie('collapsed') != '') {collapsed = readCookie('collapsed').split(',');}$(document).on('click', '.btn-collapse', function() {$(this).children('.ion-toggle-filled').toggleClass('hidden');$(this).children('.ion-toggle').toggleClass('hidden');$(this).parents('.forabg').toggleClass('hidden');if (readCookie('collapsed') != null && readCookie('collapsed') != '') {collapsed = readCookie('collapsed').split(',');}if (!$(this).parents('.forabg').hasClass('hidden')) {removeFromArray('' + $(this).parents('.forabg').data('cindex'), collapsed);createCookie('collapsed', collapsed);} else {collapsed.push('' + $(this).parents('.forabg').data('cindex'));createCookie('collapsed', collapsed);}});$('.forabg').each(function(i) {$(this).data('cindex', '' + i);$(btn_collapse).clone().attr('id', 'forabg' + i).appendTo($(this).find('.header'));if ($.inArray('' + i, collapsed) > -1) {$(this).toggleClass('hidden');$('#forabg' + i).children('.ion-toggle-filled').toggleClass('hidden');$('#forabg' + i).children('.ion-toggle').toggleClass('hidden');}});});function removeFromArray(item, array) {var i = array.indexOf(item);if (i > -1) {array = array.splice(i, 1);}}function createCookie(name, value, days) {var expires;if (days) {var date = new Date();date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));expires = "; expires=" + date.toGMTString();} else {expires = "";}document.cookie = encodeURIComponent(name) + "=" + encodeURIComponent(value) + expires + "; path=/";}function readCookie(name) {var nameEQ = encodeURIComponent(name) + "=";var ca = document.cookie.split(';');for (var i = 0; i < ca.length; i++) {var c = ca[i];while (c.charAt(0) === ' ') c = c.substring(1, c.length);if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length, c.length));}return null;}//]]>
</script>

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

{AUTO_DST}