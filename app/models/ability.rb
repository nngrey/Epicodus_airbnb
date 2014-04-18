class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :create, :all
      can :edit, Property, :user_id => user.id
      can :delete, Property, :user_id => user.id
      can :edit, Reservation, :user_id => user.id
      can :delete, Reservation, :user_id => user.id
      can :edit, Review, :user_id => user.id
      can :delete, Review, :user_id => user.id
    else
      can :read, :all
    end
  end
end


