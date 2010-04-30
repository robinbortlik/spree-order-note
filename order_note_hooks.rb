class OrderNoteHooks < Spree::ThemeSupport::HookListener
  insert_before :checkout_summary_box, 'shared/pre_order_note'
  insert_after :checkout_summary_box, 'shared/order_note'
  insert_before :admin_order_show_details, 'shared/order_note_detail'
end
