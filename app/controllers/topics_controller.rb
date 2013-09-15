class TopicsController < ApplicationController

  def index 
    @topics = Topic.order("updated_at desc").all
  end

  def new 
    @topic = Topic.new
  end

  def create
    @topic = Topic.new params[:topic].permit(:subject)

    if @topic.save
      redirect_to topics_path
    else
      render :new
    end
  end

end
