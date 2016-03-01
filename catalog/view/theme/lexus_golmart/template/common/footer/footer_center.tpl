<div class="<?php echo str_replace('_','-',$blockid); ?> <?php echo $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
  <div class="container">
    <div class="inside space-padding-tb-40">
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-8 column">
          <?php if( $content=$helper->getLangConfig('widget_about_us') ) {?>
          <?php echo $content; ?>            
          <?php } ?> 
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4 column">
          <?php if( $content=$helper->getLangConfig('widget_logo') ) {?>
              <?php echo $content; ?>
          <?php } ?> 
        </div>
   
      </div>
    </div>
  </div>
</div>

