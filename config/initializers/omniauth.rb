OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :google_oauth2, ENV['GOOGLE_APP_ID'], ENV['GOOGLE_APP_SECRET'],

 {
   scope: 'email, profile, userinfo.profile', #ask for user information from google
   prompt: 'select_account', #ask for certain prompts everytime the user logs in: [none, consent, select_account] from google's oauth documentation
   image_aspect_ratio: 'square', #extract the image, and size
   image_size: 50
  }
end

# Facebook Rack middleware for OmniAuth

# Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'],
#
#  {
#    scope: 'public_profile',
#    info_fields: 'id,name,link'
#  }

# Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :facebook, Rails.application.secrets.facebook_app_id,
#  Rails.application.secrets.facebook_app_secret, scope: ‘public_profile’, info_fields: ‘id,name,link’
# end
# end
