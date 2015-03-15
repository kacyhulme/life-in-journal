class PagesController < ApplicationController
  def home
    @journals = Journal.all

  end

  def index
  end
end
