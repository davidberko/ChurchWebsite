class Ability
	include CanCan::Ability

	def initialize(admin)
		can :manage, :all
		can :read, :all
	end
end