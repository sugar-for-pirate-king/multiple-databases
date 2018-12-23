class Api::V1::UsersController < ApplicationController
  def index
    render_json(User.all)
  end

  def create
    user = User.new(user_params)
    if user.save
      render_json(user)
    else
      render_json({error: "saving user invalid"})
    end
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end
end
