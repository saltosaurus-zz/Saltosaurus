class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
  before_action :set_author, only: [:create, :update]
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @archives = {}
    Story.where(type: params[:type]).order('published_on').reverse.group_by{|x| x.published_on.beginning_of_month}.each do |date, stories|
      @archives[date.strftime('%B %Y')] = stories.count
    end
    @stories = Story.page(params[:page]).per(3).where(type: params[:type])
    @type = params[:type]
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(@params)

    respond_to do |format|
      if current_user.try(:admin?) && @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render action: 'show', status: :created, location: @story }
      else
        format.html { render action: 'new' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      print @params
      if @story.update(@params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # When author is passed as user_id, find user and replace in params hash
    def set_author
      user = story_params[:author]
      if user.is_a? String
        user = User.find(user)
      end
      @params = {author: user, title: story_params[:title], content: story_params[:content], published_on: DateTime.now, type: story_params[:type]}
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:title, :content, :author, :published_on, :type, :bootsy_image_gallery_id)
    end
end
