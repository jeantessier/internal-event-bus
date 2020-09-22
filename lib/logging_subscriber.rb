class LoggingSubscriber
  def call(name, started, finished, unique_id, payload)
    Rails.logger.info ['notification:', name, started, finished, unique_id, payload].join(' ')
  end
end