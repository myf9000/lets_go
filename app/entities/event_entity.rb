class EventEntity
  include Virtus.model

  attribute :id, Integer
  attribute :name, String
  attribute :place, String
  attribute :description, String
  attribute :min_members, Integer
  attribute :max_members, Integer

  def self.build(event)
    new(
      id: event.id,
      name: event.name,
      place: event.place,
      description: event.description,
      min_members: event.min_members,
      max_members: event.max_members,
    )
  end
end
