class EntriesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def entry_params
    params.require(:entry).permit(:entry_title, :entry_date)
  end
end
