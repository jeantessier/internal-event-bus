class EchoSubscriber
  def call(name, started, finished, unique_id, payload)
    Rails.logger.info <<~MSG
      [#{self.class.name}] #{name} event (#{unique_id}):
      [#{self.class.name}]     started: #{started}
      [#{self.class.name}]     finished: #{finished}
      [#{self.class.name}]     payload: #{payload}
    MSG
  end
end