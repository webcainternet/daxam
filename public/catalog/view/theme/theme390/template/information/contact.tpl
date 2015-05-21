<?php echo $header; ?>
<?php echo $column_left; ?>
		<div class="<?php if ($column_left or $column_right) { ?>col-sm-9<?php } ?> <?php if (!$column_left & !$column_left) { ?>col-sm-12  <?php } ?> <?php if ($column_left & $column_right) { ?>col-sm-6<?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact" class="form-horizontal">
	<h2 style="display:none"><?php echo $text_location; ?></h2>
	<div class="contact-info">
		<div class="content row">
			<div class="map-left col-sm-6">      
				<div class="contact-box"><i class="fa fa-home"></i><b><?php echo $text_address; ?></b>
					<br><?php echo $address; ?>
				</div>
				<div class="contact-box">
					<?php if ($telephone) { ?>
					<i class="fa fa-phone"></i><b><?php echo $text_telephone; ?></b>
					<?php echo $telephone; ?>
					<?php } ?>
				</div>
				<div class="contact-box">
					<?php if ($fax) { ?>
					<i class="fa fa-phone"></i><b><?php echo $text_fax; ?></b>
					<?php echo $fax; ?>
					<?php } ?>
				</div>
			</div>
			<div class="map-content col-sm-6">         
				<figure>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3655.612466279217!2d-46.67146100000003!3d-23.61822750000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce50a01f12d4b7%3A0xcb96ee6d1ddbb2b2!2sR.+Dem%C3%B3stenes%2C+890+-+Campo+Belo%2C+S%C3%A3o+Paulo+-+SP%2C+04614-014!5e0!3m2!1spt-BR!2sbr!4v1432225229351" width="100%" height="300" frameborder="0" style="border:0"></iframe>

			</div>
		</div>
	</div>
	<div class="content contact-f form-horizontal">
		<!--<h2><?php echo $text_contact; ?></h2>-->
		<div class="form-group">
			<label class="control-label col-sm-5" for="name"><?php echo $entry_name; ?></label>
			<div class="col-sm-7">
				<input  type="text" name="name" value="<?php echo $name; ?>" />
				<?php if ($error_name) { ?>
				<span class="error help-block"><?php echo $error_name; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-5" for="email"><?php echo $entry_email; ?></label>
			<div class="controls col-sm-7">
				<input  type="text" name="email" value="<?php echo $email; ?>" />
				<?php if ($error_email) { ?>
				<span class="error help-block"><?php echo $error_email; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-5" for="enquiry"><?php echo $entry_enquiry; ?></label>
			<div class="controls col-sm-7">
				<textarea  name="enquiry" cols="40" rows="10" ><?php echo $enquiry; ?></textarea>
				<?php if ($error_enquiry) { ?>
				<span class="error help-block"><?php echo $error_enquiry; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-5" for="captcha"><?php echo $entry_captcha; ?></label>
			<div class="controls col-sm-7">
				<input type="text" class="capcha" name="captcha" value="<?php echo $captcha; ?>" />
				<div class="captcha"><img src="index.php?route=information/contact/captcha" alt="" /></div>
				<?php if ($error_captcha) { ?>
				<span class="error help-block"><?php echo $error_captcha; ?></span>
				<?php } ?>
				<div class="buttons"><a onclick="$('#contact').submit();" class="button"><span><?php echo $button_continue; ?></span></a></div>
			</div>
		</div>
	</div>
</form>
	<?php echo $content_bottom; ?></div>

<?php echo $column_right; ?>

<?php echo $footer; ?>