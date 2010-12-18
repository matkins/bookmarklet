class HomeController < ApplicationController
  def welcome
    @bookmarklet = Bookmarklet.new(:name => "Hello world!", :code => "javascript: alert('Hello world!');")
  end
end
