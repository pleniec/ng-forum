class GroupsController < APIController
  def index
    authorize! :index, Group
    render json: Group.eager_load(:categories).all, root: false,
      serializer: ActiveModel::ArraySerializer, each_serializer: GroupSerializer
  end

  def create
  end
end
