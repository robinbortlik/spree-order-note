class OrderNoteExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://www.spinlocksolutions.com/"
  
  def activate
    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
