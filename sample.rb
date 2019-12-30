class Player
    def hand
        puts "Enter a number"
        i = gets.to_i
        if(i > 2 || i < 0)
            p "Please enter a number from 0 to 2"
        else
            return i
        end
    end
end

class Enemy
    def hand
        e = rand(0..2)
        e
    end
end

class Game
    def pon(player_hand, enemy_hand)
        if(player_hand != "Please enter a number from 0 to 2")
            p "players hand: " + player_hand.to_s
            p "enemy hand: " + enemy_hand.to_s
            result = ((player_hand - enemy_hand) + 3) % 3
            if (result == 0)
                p "its draw, please continue to play"
            elsif (result == 1)
                p "You Lose"
            elsif (result == 2)
                p "You Win"
            else
                p "Not Possible"
            end
        else
            p "Restart the game"
        end
        # Create a method in it that will cause the player to hit the value you typed in and the one that Enemy randomly gave out, and output the result on the console
        # At that time, when you enter values other than draw or rock, scissors, paper, do another game.
        # Show what the other party gave out of rock, scissors, paper
    end
end
   
player = Player.new
enemy = Enemy.new
game = Game.new
   
   # The Game method is invoked by the following description
game.pon(player.hand, enemy.hand)