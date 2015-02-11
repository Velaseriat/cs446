class Soldier < ActiveRecord::Base
	belongs_to :brigade
	PARADIGMS = ['Assassin', 'Healer', 'Saboteur', 'Sorcerer', 'Templar', 'Warrior', 'Juggernaut', 'Sniper', 'Synergist', 'Analyst']
	validates :first_name, :last_name, presence: true
	validates :atk, :def, numericality: { greater_than: 0 }
	validates :paradigm, inclusion: { in: PARADIGMS }
end
