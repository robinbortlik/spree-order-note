class OrderNoteExtension < Spree::Extension
  version "1.0"
  description "Adds an order note to the checkout process."
  url "http://www.spinlocksolutions.com/"
  
  def activate
    CheckoutsController.send(:include, Spree::OrderNote::CheckoutsController)
  end
end
