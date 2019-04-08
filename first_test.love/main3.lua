function love.load( )
	-- body
	x = 10
	y = 10
	x_lim, y_lim = love.graphics.getDimensions( ) 
	tx = 0
	ty = 0
end 

function love.update(dt)
	-- body
	if love.keyboard.isDown("right") then
		x = x + 5
	elseif love.keyboard.isDown("left") then 
		x = x - 5
	end 

	if love.keyboard.isDown("up") then 
		y = y - 5
	elseif love.keyboard.isDown("down") then
		y = y + 5 
	end 

	if x > x_lim then 
		x = 0 - 100 
	end 

	if y > y_lim then 
		y = 0 - 100 
	end 

	if y + 100 < 0 then 
		y = y_lim 
	end 

	if x + 100 < 0 then 
		x = x_lim
	end 



end


function love.draw()
	local touches = love.touch.getTouches()
 
    for i, id in ipairs(touches) do
        local tx, ty = love.touch.getPosition(id)
        love.graphics.circle("fill", tx, ty, 20)
    end
	love.graphics.print(tx,0,20)
	love.graphics.print(ty,0,30)
	love.graphics.setColor(1,0,1)
	love.graphics.rectangle("fill", x,y,100,100)
    love.graphics.setColor(158, 158, 158)
    love.graphics.rectangle("fill", 410, 150, 40, 350) --Left Wall
    love.graphics.setColor(158, 158, 158)
    love.graphics.rectangle("fill", 490, 150, 40, 350) --Right Wall
    love.graphics.setColor(158, 158, 158)
   	love.graphics.rectangle("fill", 410, 150, 120, 40) --Top Wall
   	love.graphics.setColor(158, 158, 158)
   	love.graphics.rectangle("fill", 410, 500, 120, 40) --Bottom Wall

end


