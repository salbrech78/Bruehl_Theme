{extends file='parent:widgets/checkout/info.tpl'}

{* Notepad entry *}
{block name="frontend_index_checkout_actions_notepad"}
    <li class="navigation--entry entry--notepad" role="menuitem">
        <a href="{url controller='note'}" title="{"{s namespace='frontend/index/checkout_actions' name='IndexLinkNotepad'}{/s}"|escape}" class="btn">
            <i class="icon--heart"></i>
            {if $sNotesQuantity > 0}
                <span class="badge notes--quantity">
                    {$sNotesQuantity}
                </span>
            {/if}
        </a>
    </li>
{/block}

{* My account entry *}
{block name="frontend_index_checkout_actions_my_options"}
    <li class="navigation--entry entry--account{if {config name=useSltCookie}} with-slt{/if}"
        role="menuitem"
        data-offcanvas="true"
        data-offCanvasSelector=".account--dropdown-navigation">
        {block name="frontend_index_checkout_actions_account"}
            <a href="{url controller='account'}"
               title="{"{if $userInfo}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
               class="btn entry--link account--link{if $userInfo} account--user-loggedin{/if}">
                <i class="icon--account"></i>
            </a>
        {/block}
      </li>
  {/block}

{* Cart entry *}
{block name="frontend_index_checkout_actions_cart"}
    <li class="navigation--entry entry--cart" role="menuitem">
        <a class="btn cart--link" href="{url controller='checkout' action='cart'}" title="{"{s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}"|escape}">
            <span class="badge is--primary is--minimal cart--quantity{if $sBasketQuantity < 1} is--hidden{/if}">{$sBasketQuantity}
            </span>
            <i class="icon--basket"></i>
        </a>
        <div class="ajax-loader">&nbsp;</div>
    </li>
{/block}

{block name="frontend_index_checkout_actions_inner"}{/block}
