module Spree::OrderNote::CheckoutsController
  def self.included(controller)
    controller.class_eval do
      controller.append_before_filter :save_order_note
    end
  end

  def save_order_note
    if params && params[:order_note]
      object.order.order_note = params[:order_note]
      object.order.save
    end
  end
end
