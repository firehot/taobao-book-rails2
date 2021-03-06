# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.



class ApplicationController < ActionController::Base
  include Taobao::Rails::Controller
  include DoubanHelper
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  acts_as_taobao_controller

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
