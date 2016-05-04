class API::ApplicationController < ApplicationController

  private

  def render_json(api)
    render json: api.respond_to?(:map) ? api.map { |item| show_json(item) } : show_json(api)
  end

  def show_json(element)
    representer.new(element).details
  end
end
