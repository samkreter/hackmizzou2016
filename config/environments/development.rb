Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.



  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  unless Rails.env.production?
    ENV['TEMPLATE_PASS'] = "secret"
  end

  config.paperclip_defaults = {
    storage: :s3,
    s3_credentials: {
      path: "/resumess/:filename",
      bucket: 'resumes16',
      access_key_id: 'AKIAJSFCV66627WSDHBQ',
      secret_access_key: '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',
      s3_region: 'Oregon',
    }
  }

  config.active_record.raise_in_transactional_callbacks = true
  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end




# heroku setup
# heroku config:set S3_BUCKET_NAME=resume16
# heroku config:set AWS_ACCESS_KEY_ID=AKIAJSFCV66627WSDHBQ
# heroku config:set AWS_SECRET_ACCESS_KEY=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
# heroku config:set AWS_REGION=Oregon
