class ApplicationController < ActionController::Base
# I18n code 2018-02-25:
before_action :set_locale

  protect_from_forgery with: :exception

# beginning of I18n code

def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end

def extract_locale_from_tld
  parsed_locale = request.host.split('.').last
  I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
end

def default_url_options(options={})
  { :locale => I18n.locale }
end


# end of I18n code

private
def save_my_previous_url
  #  built-in variable to save last url.
  session[:my_previous_url] = URI(request.referer || '').path
  @back_url = session[:my_previous_url]
end

end
