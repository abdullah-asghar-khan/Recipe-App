# frozen_string_literal: true

Devise.setup do |config|
  # config.secret_key = '84eaabe58d1b5bbc0e3364d0127820bad9cb012ab0ff8ccf4546bd7483d6279765cfe6520a3a53ec9a50ddd6c26dbd979c85f1def43e9aabe8ae790757516d8a'

  # ==> Controller configuration
  # config.parent_controller = 'DeviseController'

  # ==> Mailer Configuration
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # config.mailer = 'Devise::Mailer'

  # config.parent_mailer = 'ActionMailer::Base'

  # ==> ORM configuration
  # Load and configure the ORM. Supports :active_record (default) and
  # :mongoid (bson_ext recommended) by default. Other ORMs may be
  # available as additional gems.
  require 'devise/orm/active_record'

  # ==> Configuration for any authentication mechanism
  # config.authentication_keys = [:email]

  # config.request_keys = []

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]
  # config.params_authenticatable = true
  # :database      = Support basic authentication with authentication key + password
  # config.http_authenticatable = false
  # config.http_authenticatable_on_xhr = true
  # config.http_authentication_realm = 'Application'
  # config.paranoid = true
  config.skip_session_storage = [:http_auth]
  # config.clean_up_csrf_token_on_authentication = true
  # config.reload_routes = true
  config.stretches = Rails.env.test? ? 1 : 12

  # config.pepper = '327912b3156fb910f5c986a482969f5416500c170668ad5879d0235cf30eed295b18dc3939dc5a0bfc26b2f7248623602b6823b1ba432655a9bc4fc32cfc47c5'

  # config.send_email_changed_notification = false

  # config.send_password_change_notification = false

  # config.allow_unconfirmed_access_for = 2.days
  # config.confirm_within = 3.days
  config.reconfirmable = true

  # config.confirmation_keys = [:email]
  # config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true

  # config.extend_remember_period = false
  # config.rememberable_options = {}
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  # config.timeout_in = 30.minutes
  # config.lock_strategy = :failed_attempts
  # config.unlock_keys = [:email]
  # config.unlock_strategy = :both
  # config.maximum_attempts = 20
  # config.unlock_in = 1.hour
  # config.last_attempt_warning = true

  # config.reset_password_keys = [:email]
  config.reset_password_within = 6.hours
  # config.sign_in_after_reset_password = true
  # config.encryptor = :sha512
  # config.scoped_views = false

  # config.default_scope = :user
  # config.sign_out_all_scopes = true

  config.navigational_formats = ['*/*', :html]

  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :delete

  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'

  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end
  #     mount MyEngine, at: '/my_engine'
  # config.router_name = :my_engine
  # config.omniauth_path_prefix = '/my_engine/users/auth'

  # ActiveSupport.on_load(:devise_failure_app) do
  #   include Turbolinks::Controller
  # end
  # config.sign_in_after_change_password = true
end
