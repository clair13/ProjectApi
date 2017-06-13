class V2::ProjectsController < ApplicationController
  def index
    json_response ({ message: 'Hello there'})
  end
end
