class LoggingSubscriber
  def call(*args)
    event = ActiveSupport::Notifications::Event.new(*args)
    Rails.logger.info "[#{self.class.name}] #{event.name} #{event.payload.keys} [#{event.payload.class.name}] (#{event.duration})"
  end
end