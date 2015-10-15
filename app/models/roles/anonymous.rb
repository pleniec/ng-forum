module Roles
  class Anonymous
    ID = 0

    def initialize_ability(ability)
      ability.can :index, Group
    end
  end
end
