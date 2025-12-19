class HomeController < ApplicationController
  def index
    @account = rodauth.account
  end

  def update_profile
    @account = rodauth.account
    if @account.update(account_params)
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Profile updated successfully." }
        format.json { render json: { message: "Profile updated successfully." }, status: :ok }
      end
    else
      respond_to do |format|
        format.html { render :index }
        format.json { render json: { error: "Update failed", details: @account.errors.full_messages }, status: :unprocessable_entity }
      end
    end
  end

  private

  def account_params
    params.require(:account).permit(:status)
  end
end
