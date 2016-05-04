module Api::V1
  class EventsController < API::ApplicationController
    def index
      render_json(repository.all_events)
    end

    def show
      render_json(repository.find(params[:id]))
    end

    private

    def representer
      ::Api::V1::EventRepresenter
    end

    def repository
      @repository ||= EventsRepository.new
    end
  end
end
