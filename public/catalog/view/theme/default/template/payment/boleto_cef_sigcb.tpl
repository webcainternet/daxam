<h2><?php echo $text_instruction; ?></h2><br />
<h3><?php echo $text_payment; ?></h3><br />
</div>
<div class="buttons">
<div class="right"><a id="button-confirm" class="button" href="<a href="'.HTTPS_SERVER.'index.php?route=payment/boleto_cef_sigcb/callback&order_id=%s" target="_blank">Gerar Segunda Via do Boleto</a>" target="_blank"><span><?php echo $button_continue; ?></span></a></div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
  $.ajax({
    type: 'GET',
    url: 'index.php?route=payment/boleto_cef_sigcb/confirm',
    success: function() {
      location = '<?php echo $continue; ?>';
    }
  });
});
--></script>