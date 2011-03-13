ActionController::Base.class_eval do 
  has_scope :page,  :default => 1
  has_scope :per,   :default => 10
end

Rails::Application.config.generators do |g|
  g.template_engine  false
end


