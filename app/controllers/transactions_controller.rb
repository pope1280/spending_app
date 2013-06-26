class TransactionsController < ApplicationController
  
  include TransactionsHelper
  include UsersHelper
  
  def index
    @user = User.find_by_username(current_user.username)
    
    @start_date = Date.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i).strftime("%m-%d-%Y")
    @end_date = Date.new(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i).strftime("%m-%d-%Y")
    
    @days_between = days_between(params[:start_date], params[:end_date])
    @transactions = transactions_between_dates(params[:start_date], params[:end_date])
    @trans_total_amount = category_sum(@transactions)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
  end

  def new
  end
end
