-- includes
--require "includes/settings"

-- Police ecriture --
font = love.graphics.newFont("assets/fonts/bebas.ttf",26)
bg = love.graphics.newImage("assets/images/bg.png")

require "collision"

--variables
player = {}
player.size = 64
player.posX = 128
player.posY = 128
player.speed = 200
player.rotate = math.rad(0)
player.img = love.graphics.newImage("assets/images/cow.png")

enemy = {}
enemy.size = 64
enemy.x = 512
enemy.y = 192
enemy.rotate = math.rad(0)
enemy.img = love.graphics.newImage("assets/images/rhino.png")

score = 0

-- Fonction Love2d

function love.load() -- initialisation, ce charge au lancement

    -- on affiche l'image à l'ecran
    
    -- charge la police
    love.graphics.setBackgroundColor(1,1,1)
    
    love.graphics.setFont(font)
    
    
end


function love.update(dt) -- tourne en boucle, x fois / seconde
    -- dt (delta time)
    
   -- on check l'action des touches
    input_utilisateur(dt)

   -- on check les collisions
    if checkCollision(player.posX - (player.size/2), player.posY - (player.size/2), player.size, player.size, enemy.x-32, enemy.y-32, enemy.size, enemy.size) then
        love.graphics.setColor(1,0,0)
    else
        love.graphics.setColor(1,1,1)
    end

    
end



function love.draw() -- dessine ou affiche à l'ecran
    
    love.graphics.draw(bg, 0,0,0,1,1)
    
   -- on dessine l'ennemi
   love.graphics.draw(enemy.img,enemy.x,enemy.y,enemy.rotate,0.5,0.5,enemy.size /2,enemy.size / 2)
    --on dessine le joueur
    -- list des parametres image, position x et position y, rotation en rad, echelle en x et en y, offset en x, offset en y
    love.graphics.draw(player.img,player.posX,player.posY,player.rotate,0.5,0.5,player.size /2,player.size / 2)

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
        player.rotate = math.rad(180)
    end

    if love.keyboard.isDown("down") then
        player.posY = player.posY + player.speed * dt
        player.rotate = math.rad(0)
    end

    if love.keyboard.isDown("left") then
        player.posX= player.posX - player.speed * dt
        player.rotate = math.rad(90)
    end

    if love.keyboard.isDown("right") then
        player.posX = player.posX + player.speed * dt
        player.rotate = math.rad(-90)
    end
   
end
