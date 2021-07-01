# https://stackoverflow.com/questions/27912985/how-to-send-confirmation-email-using-rails
# <%= edit_confirmation_url(@user.confirmation_token) %>
class ConfirmationsController < ApplicationController
    def new
    end
    def edit
        @subscriber = Subscription.find_by_confirmation_token!(params[:id])
        update
    end
    def update
        # @subscriber = subscriber.find_by_confirmation_token!(params[:id])
        if @subscriber.confirmation_sent_at < 2.hours.ago
            redirect_to new_confirmation_path, :alert => "Confirmation has expired."
        # elseif @subscriber.update_attributes(params[:subscriber])
        elsif @subscriber.update_attributes(confirmed: true)
            redirect_to root_url, :notice => "Your subscription has been confirmed."
        else
            render :new
        end
    end
end
