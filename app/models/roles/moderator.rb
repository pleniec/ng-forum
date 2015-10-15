module Roles
  class Moderator < Roles::Regular
    ID = 2
    
    def initialize_ability(ability)
      super
    end
  end
end
