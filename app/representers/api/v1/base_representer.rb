module Api::V1
  class BaseRepresenter
    attr_reader :resource, :current_user

    def initialize(resource, current_user = nil)
      @resource = resource
      @current_user = current_user
    end

    def basic
      return unless resource.present?
      {
        id: resource.id,
        # creator_id: current_user.id,
      }
    end
  end
end

