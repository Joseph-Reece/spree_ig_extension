Deface::Override.new(
    virtual_path: 'spree/admin/shared/sub_menu/_integrations',
    # name: 'startup_wizard_main_menu_tabs',
    insert_bottom: 'ul',
    text: <<~HTML
        <%= tab :facebook_catalog, match_path: '/facebook_catalog', label: 'Facebook Catalog' if can? :manage, Spree::Webhooks::Subscriber %>
    HTML
)