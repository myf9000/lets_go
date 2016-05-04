module Api::V1
  class EventRepresenter < BaseRepresenter

    def details
      basic.merge(
        {
          name:           resource.name,
          max_members:    resource.max_members,
          min_members:    resource.min_members,
          description:    resource.description
        }
      )
    end
  end
end
