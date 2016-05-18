{* Список записей блога *}
{* Канонический адрес страницы *}
{$canonical="/blog" scope=parent}

{* Заголовок страницы *}
<h1 class="h1"><span data-page="{$page->id}">{$page->name}</span></h1>

<div class="blog">
    {foreach $posts as $post}
		{* Запись блога *}
        <div class="blog_item">

            {* Изображение записи *}
            {if $post->image}
                <div class="blog_img">
                    <a href="{$lang_link}blog/{$post->url}">
                        <img src="{$post->image|resize:200:200:false:$config->resized_blog_dir}" alt="{$post->name|escape}" title="{$post->name|escape}"/>
                    </a>
                </div>
            {/if}

            <div class="blog_content">

                {* Название записи *}
                <div class="blog_name">
                    <a href="{$lang_link}blog/{$post->url}" data-post="{$post->id}">{$post->name|escape}</a>
                </div>

                {* Дата создания записи *}
                <div class="blog_date">
                    <time>{$post->date|date}</time>
                </div>

                {* Краткое содержание записи *}
                {if $post->annotation}
                    <div class="blog_text">
                        {$post->annotation}
                    </div>
                {/if}

            </div>

        </div>
    {/foreach}
</div>

{include file='pagination.tpl'}
