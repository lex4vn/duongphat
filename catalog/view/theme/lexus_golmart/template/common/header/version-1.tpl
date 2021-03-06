<?php
  $this->language( 'module/themecontrol' );
  $objlang = $this->registry->get('language');
  $megamenu = $helper->renderModule('pavmegamenu');
  $autosearch = $helper->renderModule('pavautosearch');
  $verticalmenu = $helper->renderModule('pavverticalmenu');
  if( isset($_COOKIE[$themeName .'_skin']) && $_COOKIE[$themeName .'_skin'] ){
    $skin = trim($_COOKIE[$themeName .'_skin']);
  }
?>

<header id="header-layout"  class="header-v1">
<nav id="topbar">
  <div class="container">
    <div class="topbar-wrap clearfix">
      <div class="pull-right">
       <?php echo $language; ?>
      </div>
    </div>
 
  </div>
</nav>
<div class="header-top">
  <div class="container">
    <div class="inside">
      <div class="row">
        <div class="col-xs-12 col-sm-2 col-md-2 text-center">
          <!-- logo -->
          <?php if( $logoType=='logo-theme'){ ?>
          <div  id="logo-theme" class="logo-store"><a href="<?php echo $home; ?>" class="img-responsive"><span><?php echo $name; ?></span></a></div>
          <?php } elseif ($logo) { ?>
          <div id="logo" class="logo-store"><a href="<?php echo $home; ?>" class="img-responsive"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
          <?php } ?>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 hidden-xs line">
          <?php if( $content=$helper->getLangConfig('widget_contact') ) {?>
            <div class="box-support">
              <?php echo $content; ?>
            </div>
          <?php } ?> 
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 text-center hidden-xs">
          <?php if( $content=$helper->getLangConfig('widget_support') ) {?>
            <div class="box-support">
              <?php echo $content; ?>
            </div>
          <?php } ?> 
        </div>
      </div>
    </div>
  </div>
</div>
  
  <div class="header-bottom">
    <div class="container">
      <div class="row no-margin">
        <div class="main-menu col-xs-2  col-md-6 col-sm-6  col-lg-6 no-padding">
          <!-- menu -->
          <div id="pav-mainnav" class="pav-mainnav"><div class="pav-megamenu">
          <button data-toggle="offcanvas" class="btn btn-primary canvas-menu hidden-lg hidden-md" type="button"><span class="fa fa-bars"></span> Menu</button>
                
          <?php
          /**
          * Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
          */
          if (count($megamenu) && !empty($megamenu)) { echo $megamenu;?>
          <?php } elseif ($categories) { ?>
          <nav id="menu" class="navbar">
          <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                <ul class="list-unstyled">
                  <?php foreach ($children as $child) { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
              <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
            </li>
            <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          </div>
          </nav>
          <?php } ?>
          </div></div> 
        <!-- menu -->  
        </div>

               <div class="col-xs-10 col-md-6 col-sm-6 col-lg-6 line">
         <?php
          if (count($autosearch) && !empty($autosearch)) {
          echo $autosearch;
          } else {
          echo $search;
          }
          ?>
      </div>
      </div>
    </div>
  </div>
</header>