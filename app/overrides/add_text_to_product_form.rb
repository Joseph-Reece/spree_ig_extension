Deface::Override.new(
    virtual_path: 'spree/admin/products/_form',
    name: 'add_sale_price_to_product_edit',
    insert_after: 'erb[loud]:contains("text_field :price")',
    text: 'Wonderful things are happening in the world of Ruby on Rails'
)