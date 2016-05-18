{* Форма обратного звонка *}
<div class="hidden">
	<form id="fn-callback" class="popup" method="post">
		{* Заголовок формы *}
		<div class="popup_heading">
			<span data-language="{$translate_id['callback_header']}">{$lang->callback_header}</span>
		</div>

		{* Имя клиента *}
		<div class="form_group">
			<input class="form_input" type="text" name="name" data-format=".+" data-notice="{$lang->form_enter_name}" value="{$name|escape}" data-language="{$translate_id['form_name']}" placeholder="{$lang->form_name}*"/>
		</div>

		{* Телефон клиента *}
		<div class="form_group">
			<input class="form_input" type="text" name="phone" data-format=".+" data-notice="{$lang->form_enter_phone}" value="{$phone|escape}" data-language="{$translate_id['form_phone']}" placeholder="{$lang->form_phone}*"/>
		</div>

		{* Кнопка отправки формы *}
		<div class="align_center">
			<input class="button" type="submit" name="callback" data-language="{$translate_id['callback_order']}" value="{$lang->callback_order}"/>
		</div>

	</form>
</div>

{* Модальное окно после отправки заявки *}
{if $call_sent}
	<div class="hidden">
		<div id="fn-callback-sent" class="popup">
			<div class="popup_heading">
				<span data-language="{$translate_id['callback_sent_header']}">{$lang->callback_sent_header}</span>
			</div>
			<div class="align_center">
				<span data-language="{$translate_id['callback_sent_text']}">{$lang->callback_sent_text}</span>
			</div>
		</div>
	</div>
{/if}
