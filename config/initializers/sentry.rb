# frozen_string_literal: true

Sentry.init do |config|
  config.enabled_environments = %w[production staging]
  config.dsn = ENV.fetch('SENTRY_DSN', nil)
  config.breadcrumbs_logger = %i[sentry_logger active_support_logger http_logger]
end
