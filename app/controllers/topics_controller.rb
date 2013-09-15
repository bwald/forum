class TopicsController < ApplicationController

  def index 
    @topics = Topic.order("updated_at desc").all
  end

  def show
    @topic = Topic.find params[:id]
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

  def destroy
    @topic =  Topic.find params[:id]
    @topic.destroy

    redirect_to topics_path
  end

end
