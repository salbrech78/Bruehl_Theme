{extends file='parent:frontend/index/index.tpl'}

{* Shop header *}
{block name='frontend_index_navigation'}
{* Maincategories navigation top *}
{block name='frontend_index_navigation_categories_top'}
	<nav class="navigation-main">
   <ul>
		 <dif class='svn-header-icons is-svn-header-icon-left'>
		{* Menu (Off canvas left) trigger *}
		{block name='frontend_index_offcanvas_left_trigger'}
				<li class="navigation--entry entry--menu-left" role="menuitem">
						<a class="entry--link entry--trigger btn" href="#offcanvas--left" data-offcanvas="true" data-offCanvasSelector=".sidebar-main">
								<i class="icon--menu"></i>
						</a>
				</li>
		{/block}
	</ul>
	 </dif>
		<dif class='svn-header-logo'>
			{* Logo container *}
			{block name='frontend_index_logo_container'}
					{include file="frontend/index/logo-container.tpl"}
			{/block}
	</dif>
	 <dif class='svn-header-categories'>
		 {block name="frontend_index_navigation_categories_top_include"}
								{include file='frontend/index/main-navigation.tpl'}
						{/block}
  </dif>
      <dif class='svn-header-icons'>
				<ul>
					{* Search form *}
	        {block name='frontend_index_search'}
	            <li class="navigation--entry entry--search" role="menuitem" data-search="true" aria-haspopup="true"{if $theme.focusSearch && {controllerName|lower} == 'index'} data-activeOnStart="true"{/if}>
	                <a class="btn entry--link entry--trigger" href="#show-hide--search" title="{"{s namespace='frontend/index/search' name="IndexTitleSearchToggle"}{/s}"|escape}">
	                    <i class="icon--search"></i>
	                </a>
	            </li>
	        {/block}

					{* Cart entry *}
				{block name='frontend_index_checkout_actions'}
						{* Include of the cart *}
						{block name='frontend_index_checkout_actions_include'}
								{action module=widgets controller=checkout action=info}
						{/block}
				{/block}
			</ul>
     </dif>
   </nav>
 {/block}

 {block name='frontend_index_container_ajax_cart'}
		 <div class="container--ajax-cart" data-collapse-cart="true"{if $theme.offcanvasCart} data-displayMode="offcanvas"{/if}></div>
 {/block}

{/block}
