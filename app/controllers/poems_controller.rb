class PoemsController < ApplicationController
  def show
    @poem = TedPoem.new.author
  end
end
