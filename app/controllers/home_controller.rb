class HomeController < ApplicationController
  def welcome
    @bookmarklet = Bookmarklet.new
  end
end
