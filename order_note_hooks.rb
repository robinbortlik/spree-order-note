class OrderNoteHooks < Spree::ThemeSupport::HookListener
  insert_after :checkout_form, 'shared/order_note'
end
