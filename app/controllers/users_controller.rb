class UsersController < APIController
  def create
    render json: User.create!(create_params)
  end

  private

  def create_params
    params.require(:user).permit(:email, :password, :name)
  end
end
