class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:entry_params])
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
    params.require(:entry).permit(:entry_title, :entry_date, :journal_id)
  end
end
