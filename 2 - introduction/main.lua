-- variable
-- création du tableau personnage
personnage = {}

personnage.vie = 5
personnage.nom = "player 1"


function love.draw()
    love.graphics.print(personnage.nom,25,25)
    love.graphics.print("vie " .. personnage.vie,25,50)
end

