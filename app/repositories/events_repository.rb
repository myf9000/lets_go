class EventsRepository
  attr_reader :adapter
  UnknownResultError = Class.new(StandardError)
  EventNotFound = Class.new(StandardError)
  RecordInvalid = Class.new(StandardError)

  def initialize
    @adapter = Event
  end

  def all_events
    adapter.all.map do |event|
      EventEntity.build(event)
    end
  end

  def find(id)
    EventEntity.build(adapter.find(id))
  rescue ActiveRecord::RecordNotFound => error
    raise EventNotFound, error.message
  end
end
