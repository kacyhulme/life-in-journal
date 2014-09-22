class JournalsController < ApplicationController
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
  def journal_params
    params.require(:journal).permit(:journal_title)
  end
end
