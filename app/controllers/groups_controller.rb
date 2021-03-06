class GroupsController < APIController
  def index
    authorize! :index, Group
    render json: Group.eager_load(:categories).all,
      serializer: ActiveModel::ArraySerializer, each_serializer: GroupSerializer
  end

  def create
    authorize! :create, Group
    render json: Group.create!(create_params), status: 201
  end

  private

  def create_params
    params.permit(:name, :glyphicon)
  end
end
