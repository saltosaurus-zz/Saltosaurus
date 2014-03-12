class WelcomeController < ApplicationController
  def index
    @archives = {}
    Story.all.order('published_on').reverse.group_by{|x| x.published_on.beginning_of_month}.each do |date, stories|
      @archives[date.strftime('%B %Y')] = stories.count
    end
    @stories = Story.page(params[:page]).per(3).order(published_on: :desc)
  end
end
