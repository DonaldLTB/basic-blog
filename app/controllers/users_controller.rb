class UsersController < ApplicationController
    before_action :find_user, only: [ :update, :edit ]

    def edit; end

    def update
        @user.update(user_params)
        redirect_to root_path
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name)
    end
  end