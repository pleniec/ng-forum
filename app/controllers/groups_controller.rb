class GroupsController < APIController
  def index
    render json: Group.all, serializer: ActiveModel::ArraySerializer, each_serializer: GroupSerializer, root: false
  end

  def create
  end
end
