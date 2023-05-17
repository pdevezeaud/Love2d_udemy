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

    baseX = 300
    baseY = 400
    radius = 100
    offsetY = radius * .5 * math.sqrt( 3 )
    love.graphics.setBackgroundColor(1,1,1)

end


function love.update(dt) -- tourne en boucle, x fois / seconde
    -- dt (delta time)

    input_utilisateur(dt)
  
end



function love.draw() -- dessine ou affiche à l'ecran
    love.graphics.setColor(0,0,1)
    love.graphics.rectangle("fill",tile.posX,tile.posY,tile.tileSize,tile.tileSize)
    love.graphics.setColor(1,0,0)
    love.graphics.rectangle("line",enemy.x,enemy.y,tile.tileSize,tile.tileSize)
    love.graphics.setColor(0,1,0,0.5)
    love.graphics.circle("fill",512,512,50)
    super_dessin()

end

function super_dessin()
    love.graphics.setColor(1,0,0,0.4)
    love.graphics.circle('fill',baseX,baseY,radius)
    love.graphics.setColor(0,1,0,0.4)
    love.graphics.circle('fill',baseX,radius / 2,baseY * offsetY,radius)
    love.graphics.setColor(0,1,0,0.4)
    love.graphics.circle('fill',baseX * radius,baseY,radius)

end





-- function custom
function input_utilisateur(dt)
    -- verification entrée clavier
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
   
end
