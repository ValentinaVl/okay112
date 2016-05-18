{* Список брендов *}
{* Канонический адрес страницы *}
{$canonical="/brands" scope=parent}

{* Заголовок страницы *}
<h1 class="h1"><span data-page="{$page->id}">{$page->name}</span></h1>

{if $brands}
	<div class="brands row">
		{foreach $brands as $b}
			<div class="brands_item">
				<a href="{$lang_link}brands/{$b->url}">
					{* Изображение бренда *}
					{if $b->image}
						<img src="{$b->image|resize:200:100:false:$config->resized_brands_dir}" alt="{$b->name|escape}" title="{$b->name|escape}">
					{/if}

					{* Название бренда *}
					<span data-brand="{$b->id}">{$b->name}</span>
				</a>
			</div>
		{/foreach}
	</div>
{/if}
