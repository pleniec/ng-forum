class GroupsController < APIController
  def index
    authorize! :index, Group
    render json: Group.eager_load(:categories).all, root: false,
      serializer: ActiveModel::ArraySerializer, each_serializer: GroupSerializer
  end

  def create
    authorize! :create, Group
    render json: Group.create!(create_params), status: 201
  end

  private

  def create_params
    params.require(:group).permit(:name, :glyphicon)
  end
end
