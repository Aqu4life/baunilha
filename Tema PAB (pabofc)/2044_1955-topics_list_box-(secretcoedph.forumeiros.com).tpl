<!-- BEGIN topics_list_box -->
<!-- BEGIN row -->
<!-- BEGIN header_table -->
	<!-- BEGIN multi_selection -->
		<script type="text/javascript">

		function check_uncheck_main_{topics_list_box.row.header_table.BOX_ID}()
		{
			alert('MAIN');

			var all_checked = true;

			for (i = 0; (i < document.{topics_list_box.FORMNAME}.elements.length) && all_checked; i++)
			{
				if (document.{topics_list_box.FORMNAME}.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}')
				{
					all_checked = document.{topics_list_box.FORMNAME}.elements[i].checked;
				}
			}

			document.{topics_list_box.FORMNAME}.all_mark_{topics_list_box.row.header_table.BOX_ID}.checked = all_checked;
		}

		function check_uncheck_all_{topics_list_box.row.header_table.BOX_ID}()
		{
			alert('ALL');

			for (i = 0; i < document.{topics_list_box.FORMNAME}.length; i++)
			{
				if (document.{topics_list_box.FORMNAME}.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}')
				{
					document.{topics_list_box.FORMNAME}.elements[i].checked = document.{topics_list_box.FORMNAME}.all_mark_{topics_list_box.row.header_table.BOX_ID}.checked;
				}
			}
		}

		</script>
	<!-- END multi_selection -->

	<div class="forumbg announcement">
		<ul class="topiclist topics bg_none">
<!-- END header_table -->

<!-- BEGIN header_row -->
		<strong>{topics_list_box.row.L_TITLE}</strong>
<!-- END header_row -->

<!-- BEGIN topic -->

	<!-- BEGIN table_sticky -->
			</ul>
		</div>
		<div class="forumbg">
		<ul class="topiclist topics bg_none">
	<!-- END table_sticky -->

		<li class="row {topics_list_box.row.ROW_ALT_CLASS}"<!-- BEGIN line_sticky --> style="margin-top:5px;"<!-- END line_sticky --> >
			<dl class="icon">
				<dd class="dterm" title="{topicrow.TOPIC_FOLDER_IMG_ALT}" {topics_list_box.row.ICON}>
					<!-- BEGIN single_selection -->
						<input type="radio" name="{topics_list_box.FIELDNAME}" value="{topics_list_box.row.FID}" {topics_list_box.row.L_SELECT} />
					<!-- END single_selection -->
					<div class="topic-title-container">
						{topics_list_box.row.TOPIC_TYPE}
						<h2 class="topic-title hierarchy">
							<a class="topictitle" href="{topics_list_box.row.U_VIEW_TOPIC}">
								{topics_list_box.row.TOPIC_TITLE}
							</a>
						</h2>
					</div>
					<div class="topics"><span>{topics_list_box.row.REPLIES}</span> {L_REPLIES} e <span>{topics_list_box.row.VIEWS}</span> {L_VIEWS}</div>
					<!-- BEGIN switch_description -->
						<div class="topic-description">
							{topics_list_box.row.topic.switch_description.TOPIC_DESCRIPTION}
						</div>
					<!-- END switch_description -->
				</dd>
				<dd class="lastpost">
					<!-- BEGIN avatar -->
						<span class="lastpost-avatar">{topics_list_box.row.topic.avatar.LAST_POST_AVATAR}</span>
					<!-- END avatar -->

					<span class="lastpost-info">
						{topics_list_box.row.LAST_POST_TIME} por {topics_list_box.row.LAST_POST_AUTHOR}<br />
						{L_LASTPOST}: {topics_list_box.row.LAST_POST_IMG}
					</span>
				</dd>
				<!-- BEGIN multi_selection -->
					<input onclick="javascript:check_uncheck_main_{topics_list_box.row.BOX_ID}();" type="checkbox" name="{topics_list_box.FIELDNAME}[]{topics_list_box.row.BOX_ID}" value="{topics_list_box.row.FID}" {topics_list_box.row.L_SELECT} />
				<!-- END multi_selection -->
			</dl>
		</li>
<!-- END topic -->
<!-- BEGIN no_topics -->
<li class="row row1">
	<dl>
		<dt><strong>{topics_list_box.row.L_NO_TOPICS}</strong></dt>
	</dl>
</li>
<!-- END no_topics -->

<!-- BEGIN bottom -->
</ul>
</div>
<!-- END bottom -->
<!-- BEGIN spacer --><br /><!-- END spacer -->
<!-- END row -->
<!-- END topics_list_box -->