class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)
    if @journal.save
      redirect_to @journal,
      notice: "Your project was created"
    else
      render :new
    end
  end

  def edit
    @journal = Journal.find(params[:id])
  end

  def update
    @journal = Journal.find(params[:id])
    @journal.update(journal_params)
  end

  def destroy
    @journal.destroy
    redirect_to journals_url, alert: "Journal was deleted"
  end

  private
  def journal_params
    params.require(:journal).permit(:journal_title)
  end
end
