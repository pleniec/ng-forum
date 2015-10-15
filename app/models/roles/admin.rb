module Roles
  class Admin < Roles::Moderator
    ID = 3

    def initialize_ability(ability)
      super

      can :create, Group
    end
  end
end
