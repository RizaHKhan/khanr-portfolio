class PagesController < ApplicationController
  def home
    # @posts is an instance variable that stores all the Blog.all information
    # When a model is called, the database is called with the requestion informatoin (.all in this case)
    @blogPosts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end
end
