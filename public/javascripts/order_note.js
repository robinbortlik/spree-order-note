jQuery(document).ready(function($){
	var input_node = $(document.createElement('input')).attr('type', 'hidden').attr('name', 'order_note').attr('id', 'order_note').val($('textarea#order_order_note').html());
	$('form.edit_checkout').append(input_node).submit(function() { $('input#order_note').val($('textarea#order_order_note').val()); });
});
