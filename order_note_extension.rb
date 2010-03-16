class OrderNoteExtension < Spree::Extension
  version "1.0"
  description "Adds an order note to the checkout process."
  url "http://www.spinlocksolutions.com/"
  
  def activate
    CheckoutsController.class_eval do
      before_filter :save_order_note
      def save_order_note
        if params && params[:order] && params[:order][:order_note] && params[:order][:order_note] != ''
          object.order.order_note = params[:order][:order_note]
          object.order.save
        end
      end
    end
  end
end
