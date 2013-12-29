class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
    @entries = Entry.find(:all)
  end

  def create
    @entry = Entry.new(entry_params)
      if @entry.save
        redirect_to entries_path
    else
      binding.pry
      flash.now[:alert] = 'Error while sending message!'
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes!(entry_params)
    redirect_to entries_path
  end

  def destroy
    @entry = Entry.find_by_id(params[:id])
      if @entry.destroy
        redirect_to entries_path
      end
  end

  def show
    @entry = Entry.find(params[:id])
  end

private

  def entry_params
    params.require(:entry).permit(:title, :post, :category_id)
  end


end
