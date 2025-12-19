Rodauth::Rails.configure do |config|
  config.app = "RodauthApp"

  # secret = Rails.application.credentials.secret_key_base
  # config.only_json? false
  # config.jwt_secret secret

  # config.middleware = false # disable auto-insertion of Rodauth middleware
  # config.tilt = false # skip loading Tilt gem for rendering built-in templates
end
