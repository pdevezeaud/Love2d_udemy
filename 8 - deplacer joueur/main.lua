-- includes
--require "includes/settings"

-- Police ecriture --
font = love.graphics.newFont("assets/fonts/bebas.ttf",26)

--variables
player = {}
player.size = 64
player.posX = 128
player.posY = 128
player.speed = 200

enemy = {}
enemy.x = 512
enemy.y = 192

score = 0

-- Fonction Love2d

function love.load() -- initialisation, ce charge au lancement
    -- Pour avoir un random aléatoire
    math.randomseed(os.time())
   
   

    


end


function love.update(dt) -- tourne en boucle, x fois / seconde
    -- dt (delta time)

    input_utilisateur(dt)
  
end



function love.draw() -- dessine ou affiche à l'ecran
    
    love.graphics.rectangle("fill",player.posX,player.posY,player.size,player.size)
    
    love.graphics.rectangle("line",enemy.x,enemy.y,player.size,player.size)
    
   

   
    

end

-- function custom
function input_utilisateur(dt)
    -- verification entrée clavier
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end

    -- possibilité de rendre plus fluide en ajoutant un elseif et sans le end.

    if love.keyboard.isDown("up") then
        player.posY = player.posY - player.speed * dt
    end

    if love.keyboard.isDown("down") then
        player.posY = player.posY + player.speed * dt
    end

    if love.keyboard.isDown("left") then
        player.posX= player.posX - player.speed * dt
    end

    if love.keyboard.isDown("right") then
        player.posX = player.posX + player.speed * dt
    end
   
end
