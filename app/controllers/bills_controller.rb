class BillsController < ApplicationController

  def new
    @bill = Bill.new
    @users = User.all    
  end

  def create_bill
    @bill = Bill.new(:user_id => params[:user_id], :name => params[:name])
    @bill.description = params[:description]
    @bill.date = params[:date]
    @bill.value = params[:value]
    if @bill.save
      redirect_to @bill.user 
    else
      @users = User.all
      render :new
    end
  end

  def create
    @bill = Bill.new(params[:bill])
    if @bill.save
      flash[:notice] = t('saved_successfully') 
    else
      flash[:error] = t('error_while_saving')
    end
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    flash[:notice] = (@bill.update_attributes(params[:bill]) ? t('updated_successfully') : t('error_while_updating'))
  end

end