class EntriesController < ApplicationController

  def index
    @journal = Journal.find(params[:journal_id])
    @entries = @journal.entries.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.new
  end

  def create
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.new(entry_params)
    if @entry.save
      redirect_to journal_entries_path(@entry),
      notice: "Your entry was created"
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(entry_params)
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to journals_url, alert: "Entry was deleted"
  end

  private
  def entry_params
    params.require(:entry).permit(:entry_title, :entry_date)
  end
end
