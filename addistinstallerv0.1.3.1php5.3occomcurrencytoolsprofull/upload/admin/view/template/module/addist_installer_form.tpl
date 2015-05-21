<div class="modal fade" id="download-modal" tabindex="-1" role="dialog" aria-labelledby="download-modal-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="<?php echo $text_close; ?>"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="download-modal-label"><?php echo $heading; ?></h4>
            </div>
            <?php if (!empty($error)){ ?>
            <div style="padding: 10px 10px 0px;">
                <div class="alert alert-danger">
                    <i class="fa fa-exclamation-circle"></i>
                    <div><?php echo $error; ?></div>
                </div>
            </div>
            <?php } else { ?>
            <div id="modal-body" class="modal-body">
                <form action="<?echo $action; ?>" method="post" id="form-download" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="input-customer"><?php echo $entry_customer; ?></label>
                        <div class="col-sm-9"><input type="text" id="input-customer" value="<?php echo $customer; ?>" readonly="true" class="form-control" /></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="input-email"><?php echo $entry_email; ?></label>
                        <div class="col-sm-9"><input type="text" id="input-email" value="<?php echo $email; ?>" readonly="true" class="form-control" /></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="input-type"><?php echo $entry_type; ?></label>
                        <div class="col-sm-9">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-success active">
                                    <input type="radio" name="download[trial]" id="type-full" value="0" autocomplete="off" checked="true" /> <?php echo $text_full; ?>
                                </label>
                                <label class="btn btn-info">
                                    <input type="radio" name="download[trial]" id="type-trial" value="1" autocomplete="off" /> <?php echo $text_trial; ?>
                                </label>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="download[extension_id]" id="input-extension_id" value="<?php echo $extension_id; ?>" />
                    <input type="hidden" name="download[mail]" id="input-mail" value="0" />
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-close"></i>  <?php echo $text_close; ?></button>
                <button type="button" class="btn btn-primary" onclick="sendFile()"><i class="fa fa-send"></i>  <?php echo $text_send; ?></button>
                <button type="button" class="btn btn-primary" onclick="downloadFile()"><i class="fa fa-download"></i> <?php echo $text_download; ?></button>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<script type="text/javascript">
function sendFile()
{
    $('#input-mail').attr('value','1');
    $('#form-download').submit();
}

function downloadFile()
{
    $('#input-mail').attr('value','0');
    $('#form-download').submit();
}

$(function()
{
    function reposition()
    {
        var modal = $(this),
        dialog = modal.find('.modal-dialog');
        modal.css('display', 'block');
        dialog.css("margin-top", Math.max(0, ($(window).height() - dialog.height()) / 2));
    }
    $('.modal').on('show.bs.modal', reposition);
    $(window).on('resize', function() {
        $('.modal:visible').each(reposition);
    });
});
</script>