class OrderNoteHooks < Spree::ThemeSupport::HookListener
  insert_after :checkout_summary_box, 'shared/order_note'
end
