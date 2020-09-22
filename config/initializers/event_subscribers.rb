require 'logging_subscriber'

# Log all events
ActiveSupport::Notifications.subscribe('/.*/', LoggingSubscriber.new)
