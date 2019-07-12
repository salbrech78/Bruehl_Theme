{extends file='parent:frontend/index/index.tpl'}

{* Shop header *}
{block name='frontend_index_navigation'}

{* Logo container *}
{block name='frontend_index_logo_container'}
		{include file="frontend/index/logo-container.tpl"}
{/block}

		{* Maincategories navigation top *}
		{block name='frontend_index_navigation_categories_top'}
				<nav class="navigation-main">
						<div class="container" data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
								{block name="frontend_index_navigation_categories_top_include"}
										{include file='frontend/index/main-navigation.tpl'}
								{/block}
						</div>
				</nav>
		{/block}
{/block}
