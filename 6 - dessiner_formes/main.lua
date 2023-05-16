-- includes
--require "includes/settings"

--variables
tile = {}
tile.tileSize = 64
tile.posX = 128
tile.posY = 128

enemy = {}
enemy.x = 512
enemy.y = 192

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
    love.graphics.rectangle("fill",tile.posX,tile.posY,tile.tileSize,tile.tileSize)
    love.graphics.rectangle("line",enemy.x,enemy.y,tile.tileSize,tile.tileSize)

end



-- function custom
function input_utilisateur(dt)
    -- verification entrée clavier
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
   
end
