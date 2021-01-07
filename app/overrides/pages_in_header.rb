Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "pages_in_header",
                     :insert_before => "#main-nav-bar-contact",
                     :partial => "spree/static_content/static_content_header",
                     :disabled => false)
