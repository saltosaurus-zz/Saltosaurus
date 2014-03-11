class WelcomeController < ApplicationController
  def index
    @stories = Story.all
    @archives = @stories.group_by{|x| x.published_on.beginning_of_month}
  end
end
