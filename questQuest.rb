require 'pry'

puts "Welcome to Questquest! I wonder what kind of hero you will be?"




module Killable
  def alive?
    self.health > 0
  end

  def dead?
    not self.alive?
  end
end


class Adventurer
  attr_reader :name
  attr_accessor :health, :level
  include Killable

  def initialize(name, level=1)
    @health_per_level ||= 10
    @damage_per_level ||= 2
    @armor ||= 5
    @level = level
    @name = name
    @health = level * @health_per_level
    @karma = 0
  end


  def karma
    karma = 0
    if karma = -200
      self.health = 1
    end
  end

  def armor(self, other)
    armor = self.armor
  end



  def max_damage
    @level * @damage_per_level
  end

  def damage
    rand(1..max_damage)
  end

  def attack(other)
    damage = self.damage
    self.damage - other.armor = damage
    other.health -= damage
    if damage > 20
      descriptor = "wallops"
    elsif damage > 5
      descriptor = "hits"
    else
      descriptor = "barley makes a mark on"
    end
    puts "#{self} #{descriptor} #{other} for #{damage} points of damage."
  else
    "You can't attck #{other}!"
  end

  def max_healing
    @level + @health_per_level % 2
end

  def healing
  rand(1..max_healing)
end

  def heal(self)
    self.health += healing
end

    def to_s
    @name
     puts self.health
  end
end

class Slime
  attr_reader :level, :name
  attr_accessor :health

  include Killable

  def initialize(level)
    @level = level
    @name = "Slime (#{level})"
    @health = 0
    @armor = 2
    level.times { @health += rand(1..6) }
  end

  def attack(other)
    if other.health < 0
      attack.other.rand
    damage = rand(1..4) * @level
    puts "#{self} viciously assaults #{other} for #{damage} damage."
    self.damage - other.armor = damage
    other.health -= damage
  end



  def armor(self, other)
    armor = self.armor
  end

  def to_s
    @name
  end
end



class Villager
  attr_reader :level, :name
  attr_accessor :health

  include Killable

  def initialize(level,other)
    @level = level
    @name = "Villager (#{level})"
    @health = 0
    @armor = 3
    level.times { @health += rand(1..2) }
    if self.health < 0
      other.karma - 50
    end

  end




  def armor(self, other)
    armor = self.armor
  end

  def attack(other)
    damage = rand(1..1) * @level
    puts "#{self} attempts to protect their family and whacks #{other} for #{damage} damage."
    self.damage - other.armor = damage
    other.health -= damage

  end

  def to_s
    @name
  end
end







class Demon_Lord < Adventurer
  def initialize(name, weapon, level=1)
    @weapon = weapon
    @armor = 7.65
    @damage_per_level = 9
    @health_per_level = 18
    super(name, level, karma)
  end

  def Demon_form(self)
    puts "#{self} unleashed his inner demon!"
    @armor + 20
    self.health + @level * 5
  end
end

class Rogue < Adventurer
  def initialize(name, weapon, level=1)
    @weapon = weapon
    @armor = 6.25
    @damage_per_level = 14
    @health_per_level = 14
    @energy = 100
    super(name, level, karma)
  end

  def attack(other)
    super
    @energy += 25
  end

  def Ambush(other)
    if energy -25
      other.rand.health = 0
    puts "#{self} dissappears and reappears behind #{other} killing it instantly!"
    #I play a rogue, we need to be op
end
end

  def Unrelenting_assault(other)
  self.damage = damage
  #here I tried to get it to attack again if another attack was higher than 30
  self.damage - other.armor = damage
  other.health -= damage
  until damage > 30
    Unrelenting_assault
  end
  puts "#{self} is not letting up on #{other} the attack continues!"
else

  end


    class Paladin < Adventurer
      def initialize(name, weapon, level=1)
        @weapon = weapon
        @armor = 15
        @damage_per_level = 7
        @health_per_level = 22
        @holy_power = 0
        super(name, level, karma)
      end

      def attack(other)
        super
        @holy_power += 1
      end

      def Holy_light(self)
        if holy_power %3
          heal.self
          puts "A light begins to glow from #{self}'s hands. #{self}'s wounds slowly heal."
          #I tried and get it to only use Holy_light if Holy_power is % by 3.


end


binding.pry
