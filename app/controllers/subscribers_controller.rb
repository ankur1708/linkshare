class SubscribersController < ApplicationController
  def create
     @subscriber = Subscriber.new
    @subscriber.email = params[:email]

    respond_to do |format|
      if @subscriber.save
        format.html { redirect_to root_url, notice: 'Invitation Accepted. We will contact you soon' }
        #format.json { render json: @subscriber, status: :created, location: @subscriber }
      else
        format.html { redirect_to root_url }
        #format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end
end
