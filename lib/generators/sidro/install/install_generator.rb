class Sidro::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  class_option :formtastic,     :default => :formtastic
  class_option :web_app_theme,  :default => :web_app_theme
  class_option :jquery,         :default => :jquery

  hook_for :formtastic
  hook_for :web_app_theme, :as => :theme
  hook_for :jquery

  def copy_views 
    directory "views",    "app/views/inherited_resources"
    copy_file "sidro.rb", "config/initializers/sidro.rb"
  end

  def modify_layout
    # Stylesheet
    gsub_file "app/views/layouts/application.html.erb", /<\/head>/ do
      "  <%= stylesheet_link_tag \"formtastic\", \"formtastic_changes\" %>\n</head>"
    end
    # Main menu
    gsub_file "app/views/layouts/application.html.erb", /<ul class="wat-cf"><\/ul>/ do
      '<%= render "main_menu" %>'
    end
    # Sub menu
    gsub_file "app/views/layouts/application.html.erb", /user-navigation">.*<\/ul>\s*<\/div>/m do
      'user-navigation">
        <%= render "user_menu" %>
      </div>'
    end
  end

end
