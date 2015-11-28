class MessagesController < ApplicationController

    def index
        @messages = Message.all
    end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
    @story = Story.find(params[:story])
  end

  def create
    @message = Message.new(message_params)
    if @message.save
        redirect_to controller: 'stories', action: 'show', id: @message.story
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    if @message.update(message_params)
        redirect_to controller: 'stories', action: 'show', id: @message.story
    else
      render 'edit'
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    if(@message.story)
        redirect_to controller: 'stories', action: 'show', id: @message.story
    else
        redirect_to '/stories'
    end
  end

  private
  def message_params
      params.require(:message).permit(:content, :story_id)
  end
end
