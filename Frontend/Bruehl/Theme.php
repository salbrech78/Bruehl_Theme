<?php

namespace Shopware\Themes\Bruehl;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
Bruehl
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'
Bruehl
SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
salbrech
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'

SHOPWARE_EOD;

protected $css = [
  'src/css/font-awesome.min.css'
];

  public function createConfig(Form\Container\TabContainer $container)
  {
  $navigationLineHeightMobileField = $this->createTextField(
    'svn-navigation-line-height-mobile',
    'Line height Mobile',
    '63'
  );

  $navigationLineHeightField = $this->createTextField(
    'svn-navigation-line-height',
    'Line height',
    '72'
  );

  $navigationLogoHeightField = $this->createTextField(
    'svn-navigation-logo-height',
    'Logo height',
    '50'
  );

  $headerFieldSet = $this->createFieldSet(
    'svn_bruehl_theme_fieldset',
    'Header'
  );

  $BruehlThemeTab = $this->createTab(
    'svn_Bruehl_Theme',
    'Bruehl Theme'
  );

  $headerFieldSet->addElement($navigationLineHeightMobileField);
  $headerFieldSet->addElement($navigationLineHeightField);
  $headerFieldSet->addElement($navigationLogoHeightField);

  $BruehlThemeTab->addElement($headerFieldSet);

  $container->addTab($BruehlThemeTab);

  }
}
