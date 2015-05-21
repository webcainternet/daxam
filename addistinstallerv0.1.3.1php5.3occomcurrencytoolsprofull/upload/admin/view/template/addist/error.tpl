<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>

    </div>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h3>
                <div class="pull-right btn-group">
                    <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i> <?php echo $button_cancel; ?></a>
                </div>
                <div style="clear: both;"></div>
            </div>
            <div class="panel-body">
                <div id="message">
                    <?php if ($errors) { ?>
                    <?php foreach($errors as $error) { ?>
                    <div class="alert alert-danger">
                        <i class="fa fa-exclamation-circle"></i>
                        <div><?php echo $error; ?></div>
                    </div>
                    <?php } ?>
                    <?php } ?>
                </div>
                <?php echo $content; ?>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>