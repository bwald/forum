class TopicsController < ApplicationController

  def index 
    @topics = Topic.order("updated_at desc").all
  end

end
