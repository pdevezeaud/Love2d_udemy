-- includes
--require "includes/settings"

-- Police ecriture --
font = love.graphics.newFont("assets/fonts/bebas.ttf",26)

--variables
player = {}
player.size = 64
player.posX = 128
player.posY = 128

enemy = {}
enemy.x = 512
enemy.y = 192

score = 0

-- Fonction Love2d

function love.load() -- initialisation, ce charge au lancement
    -- Pour avoir un random aléatoire
    math.randomseed(os.time())
    -- charge la police
    love.graphics.setBackgroundColor(1,1,1)

    love.graphics.setFont(font)


end


function love.update(dt) -- tourne en boucle, x fois / seconde
    -- dt (delta time)

    input_utilisateur(dt)
  
end



function love.draw() -- dessine ou affiche à l'ecran
    love.graphics.setColor(0,0,1,0.8)
    love.graphics.rectangle("fill",player.posX,player.posY,player.size,player.size)
    love.graphics.setColor(1,0,0,0.8)
    love.graphics.rectangle("line",enemy.x,enemy.y,player.size,player.size)
    
    love.graphics.setColor(0,0,0,1)

    love.graphics.printf("Pos Joueur = " ..player.posX..","..player.posY,15,15,1280,"center")
    -- Possibilité de changer le formatage du print avec printf
    -- love.graphics.printf("Score = " ..score.. "\nTimer = 180", 15,15, 1200,"center")
    

end

-- function custom
function input_utilisateur(dt)
    -- verification entrée clavier
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
   
end
