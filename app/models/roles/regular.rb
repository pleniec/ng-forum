module Roles
  class Regular < Roles::Anonymous
    ID = 1

    def initialize_ability(ability)
      super
    end
  end
end
