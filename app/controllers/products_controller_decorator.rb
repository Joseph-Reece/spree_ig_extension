# extend HomeController  to get all products
# module SpreeSimpleSales
#     module Spree
#       module HomeControllerDecorator
#         def sale
#           @products = ::Spree::Product.joins(:variants_including_master).where('spree_variants.sale_price is not null').distinct
#         end
#       end
#     end
#   end
  
#   Spree::HomeController.prepend SpreeSimpleSales::Spree::HomeControllerDecorator

# extend products_controller from spree backend

module Spree
    module SpreeSimpleIgPlugin
        module ProductsControllerDecorator
            def show
                # @products = @collection
                puts "productsAll"
            end

            def posted
                puts @collection
                puts "into posted"
            end

            def catalog
                @products = ["hello", "world"]
                
            end

            # Overrides the default spree method to include @collection in catalog action
            def collection_actions
                [:index, :catalog]
            end
        end
    end
end

Spree::Admin::ProductsController.prepend(::Spree::SpreeSimpleIgPlugin::ProductsControllerDecorator)

