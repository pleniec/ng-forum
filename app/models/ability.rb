class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(role: Roles::Anonymous::ID)

    {Roles::Anonymous::ID => Roles::Anonymous,
     Roles::Regular::ID => Roles::Regular,
     Roles::Moderator::ID => Roles::Moderator,
     Roles::Admin::ID => Roles::Admin}[user.role].new.initialize_ability(self)
  end
end
