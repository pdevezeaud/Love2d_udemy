-- variable
--ui = {}
--ui.title = "L'utilisateur a appuyé sur la touche espace :"
--ui.touche = ""

-- petit bout de code pour tirer pour aleatoire
-- math.randomseed(os.time())

--Possibilité d'inclure les variables dans une fichier séparé afin d'aerer le code
require "includes/settings"

-- Fonction Love2d

function love.load() -- initialisation, ce charge au lancement
    

end


function love.update(dt) -- tourne en boucle, x fois / seconde
    -- dt (delta time)

 input_utilisateur()   
end


function love.draw() -- dessine ou affiche à l'ecran
    love.graphics.print(ui.title,25,25)
    love.graphics.print(ui.touche,25,50)

end

-- function custom
function input_utilisateur(dt)
    -- verification entrée clavier
    if love.keyboard.isDown("space") then
        -- si on appue sur espace
        ui.touche = "Espace"
    elseif love.keyboard.isDown("escape") then
        ui.touche = "Echappe"
        --sinon pour fermer la fenetre  love.event.qui()
    end

end
