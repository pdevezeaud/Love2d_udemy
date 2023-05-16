-- variable
-- création du tableau personnage
personnage = {}

personnage.vie = 2
personnage.nom = "player 1"


function love.draw()
    if personnage.vie < 2 then
        love.graphics.print("Le personnage a très peu de vie "..personnage.vie,25,50)
    elseif personnage.vie < 5 then
        love.graphics.print("Le personnage a perdu de la vie",25,50)
    else
        love.graphics.print("Le personnage a toute sa vie",25,50)
    end
end

