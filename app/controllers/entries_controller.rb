class EntriesController < ApplicationController

  def index
    @journal = Journal.find(params[:journal_id])
    @entries = @journal.entries.all
  end

  def show
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.find(params[:id])
  end

  def edit
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.find(params[:id])
  end

  def new
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.new
  end

  def create
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.new(entry_params)
    if @entry.save
      redirect_to journal_entries_path(@journal),
      notice: "Your entry was created"
    else
      render :new
    end
  end

  def update
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.find(params[:id])
    if @entry.update(entry_params)
      redirect_to @journal, notice: "Your updates have been saved"
    else
      render :edit
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to journals_url, alert: "Entry was deleted"
  end

  private
  def entry_params
    params.require(:entry).permit(:entry_title, :entry_date, :tag_list)
  end
end
