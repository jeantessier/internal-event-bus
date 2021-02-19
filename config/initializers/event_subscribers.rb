require 'echo_subscriber'
require 'logging_subscriber'

# Log all events
ActiveSupport::Notifications.subscribe(/.*/, LoggingSubscriber.new)

# Subscribe to 'echo' events
ActiveSupport::Notifications.subscribe('echo', EchoSubscriber.new)
