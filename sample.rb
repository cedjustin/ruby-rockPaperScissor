class Player  
    def hand
        puts "Enter a number"
        puts "0 : Goo"
        puts "1 : Choki"
        puts "2 : Par"      

        player_input = gets.chomp            

        while player_input.to_i > 2 || player_input.to_i < 0 do
            puts "Enter a number between 0-2" 
            player_input = gets.chomp
        end
        
        return player_input   
    end
end
    
class Enemy
    def hand
        enemy_input = rand(0..2)
    end
end
    
class Janken
    def pon(player_hand, enemy_hand)
        if enemy_hand.to_i == 0
            rival_hand = "Goo"
        elsif enemy_hand.to_i == 1
            rival_hand = "Choki"
        else
            rival_hand = "Par"
        end
        
        result = ((player_hand.to_i - enemy_hand.to_i) + 3) % 3    

        if result == 0
            puts "The hand of the other party is #{rival_hand}.It is a draw Please try again"
            player = Player.new
            enemy = Enemy.new
            janken = Janken.new
            janken.pon(player.hand, enemy.hand)
        elsif result == 1
            puts "The hand of the other party is #{rival_hand}.You loose" 
        elsif result == 2
            puts "The hand of the other party is #{rival_hand}.you are the winner"      
        end   
    end
end
    
player = Player.new
enemy = Enemy.new
janken = Janken.new
     
janken.pon(player.hand, enemy.hand)