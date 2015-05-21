<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="left"></div>
  <div class="right"></div>
<div class="heading">
   <h1 style=""><?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location='<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
</div>
 <div class="content">
 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
  <div id="tab_general" class="page">
    <table class="form">
         <tr>
        <td><?php echo $enable_fixed_prices; ?></td>
        <td><input type="checkbox" name="fixed_prices" value="1" <?php echo $fixed_prices?'checked="checked"':'' ; ?> />
	
	</td>
      </tr>
  
 
      
    </table>
  </div>
</form>
  </div>
</div>
<script type="text/javascript"><!--
$.tabs('.tabs a');
//--></script>
