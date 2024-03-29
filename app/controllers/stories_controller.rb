class StoriesController < ApplicationController

def index
  @stories = Story.all
end

def show
    @story = Story.find(params[:id])
    @messages = @story.messages
end

def new
    @story = Story.new
end

def create
    @story = Story.new(story_params)
    if @story.save
        redirect_to stories_path
    else
        render 'new', alert: "Error Occured"
    end
end

def edit
    @story = Story.find(params[:id])
end

def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
        redirect_to stories_path
    else
        render 'edit'
    end
end

def destroy
    @story = Story.find params[:id]
    @story.destroy
    redirect_to stories_path
end



private
def story_params
    params.require(:story).permit(:title, :image, :description)
end


end
