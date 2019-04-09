-- Class code 

Player = {
	health = 100,
	gold = 0,
	exp = 0, 
	id = 1, 
	level = 1, 
	alive = true, 
	dmg = 0.2, 
	name = "",
	maxHealth = 100,
	clickDmg = 1, 
	expGate = 5
} 

Player.__index = Player

-- Player construct 
function Player.new(self, name)
	-- body
	local self = setmetatable({}, Player)
	self.name = name 
	return self 
end



-- Player set_helpers 

function Player.setHealth(self, health)
	-- body
	self.health = health
end

function Player.setGold(self, gold)
	-- body
	self.gold = gold 
end

function Player.setExp(self, exp)
	-- body
	self.exp = exp 
end

function Player.setName(self, name)
	-- body
	self.name = name
end

function Player.setAlive( self, alive )
	-- body
	self.alive = alive 
end

function Player.setDmg( self, dmg )
	-- body
	self.dmg = dmg 
end

function Player.setClickDmg( self, dmg )
	-- body
	self.clickDmg = dmg 
end


-- Player get_helpers

function Player.getHealth(self)
	-- body
	return self.health
end

function Player.getGold(self)
	-- body
	return self.gold
end

function Player.getExp(self)
	-- body
	return self.exp
end

function Player.getName(self)
	-- body
	return self.name
end

function Player.getId(self)
	-- body
	return self.id 
end

function Player.getDmg( self )
	-- body
	return self.dmg
end

function Player.getAlive( self )
	-- body
	return self.alive
end

function Player.getMaxHealth( self )
	-- body
	return self.maxHealth
end

function Player.getClickDmg( self )
	-- body
	return self.clickDmg
end

function Player.getLevel( self )
	-- body
	return self.level
end

function Player.getExpGate(self)
	-- body
	return self.expGate
end

function Player.levelUp( self )
	-- body
	self.level = self.level + 1 
	self.maxHealth = 90 + 10 * (self.level)
	self.health = self.maxHealth
	self.dmg = self.dmg + 1 
	self.exp = 0 
	self.expGate = self.expGate + 1 
end

function Player.draw( self )
	-- body
	love.graphics.rectangle("line",wx*0.58, wy*0.6, wx*0.1, wy*0.2)
end

-- Monster Class 
Monster = {
	health = 100,
	level = 1,
	reward = 1, 
	alive = true,
	dmg = 0.1,
	giveExp = 5,
	maxHealth = 100,
	id = 1 
}

Monster.__index = Monster 

-- Monster Constructor 

function Monster.new( self )
	-- body
	local self = setmetatable({}, Monster)
	return self 
end

-- Monster set_helpers 

function Monster.setHealth( self, health)
	-- body
	self.health = health 
end

function Monster.setLevel (self, level)
	self.level = level
end

function Monster.setReward( self, reward )
	-- body
	self.reward = reward
end

function Monster.setAlive( self, alive )
	-- body
	self.alive = alive 
end

function Monster.setDmg( self, dmg )
	-- body
	self.dmg = dmg 
end

-- Monster get_helpers 

function Monster.getHealth( self )
	-- body
	return self.health
end

function Monster.getLevel( self )
	-- body
	return self.level
end

function Monster.getReward( self )
	-- body
	return self.reward 
end

function Monster.getDmg ( self )
	-- body
	return self.dmg
end

function Monster.getAlive( self )
	-- body
	return self.alive 
end

function Monster.getExp( self )
	-- body
	return self.giveExp
end

function Monster.getMaxHealth( self )
	-- body
	return self.maxHealth
end

function Monster.getId( self )
	-- body
	return self.id 
end

function Monster.levelUp( self )
	-- body
	self.maxHealth = 90 + 10 * (self.level)
	self.health = self.maxHealth
	self.level = self.level + 1 
	self.dmg = self.dmg + 0.5
	self.reward = self.reward + 1 
	self.giveExp = self.giveExp + 1
end

function Monster.draw( self )
	-- body
	love.graphics.rectangle("line",wx*0.80, wy*0.6, wx*0.1, wy*0.2)
end

-- ShopItem Class 

ShopItem = {
	id = 0
}

ShopItem.__index = ShopItem

-- ShopItem constructor 
function ShopItem.new(self, id)
	-- body
	local self = setmetatable({},ShopItem)
	self.id = id
	return self
end

-- ShopItem set_helpers


-- ShopItem get_helpers

function ShopItem.getId( self )
 	-- body
 	return self.id
 end 


-- Button Class 
Button = {
	x = 0,
	y = 0,
	height = 0,
	width = 0,
	clicked = false 
}

Button.__index = Button

-- Button Construct 
function Button.new(self, x, y, height, width)
	-- body
	local self = setmetatable({}, Button)
	self.x = x 
	self.y = y 
	self.height = height 
	self.width = width
	return self 
end

-- Button set_helpers 
function Button.setX(self, x)
	-- body
	self.x = x 
end

function Button.setY(self, y)
	-- body
	self.y = y
end

function Button.setHeight(self, height)
	-- body
	self.height = height
end

function Button.setWidth(self, width)
	-- body
	self.width = width 
end

function Button.setClickTrue(self)
	-- body
	self.clicked = true
end

function Button.setClickFalse(self)
	-- body
	self.clicked = false 
end

-- Button get_helpers 
function Button.getX(self)
	-- body
	return self.x 
end

function Button.getY(self)
	-- body
	return self.y
end

function Button.getHeight(self)
	-- body
	return self.height
end

function Button.getWidth(self)
	-- body
	return self.width
end

function Button.getClick(self)
	-- body
	return self.clicked
end


-- Button functions 

function Button.draw(self, type)
	-- body
	love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end

function Button.isClick(self, obj, mx, my, isDown)
	-- body
	if isDown == true and mx > self.x and mx < self.x + self.width and my > self.y and my < self.y + self.height then 
		if obj:getId() == 1 then 
			love.graphics.print("DOWN", 100,300)
			obj:setHealth(obj:getHealth() - p:getClickDmg()) -- replace with obj function later
		elseif obj:getId() > 1 then 
			love.graphics.print("SHOP ITEM") -- replace with obj function 
		end 
	end 
end



-- Game code 

function love.load(arg)
	p = Player:new("PLAYER NAME: BOB")
	m = Monster:new()
	wx, wy = love.graphics.getDimensions() 
	shopItem_1 = ShopItem:new(2)
	playerZone = Button:new(wx*0.5, wy*0.02, wy*0.9, wx*0.48)
	shopButton = Button:new(wx*0.02, wy*0.02, wy*0.08, wx*0.08)

end

a = 0

function love.update(dt)
	a = a + dt 

	m:setHealth(m:getHealth() - p:getDmg())
	p:setHealth(p:getHealth() - m:getDmg())

	if p:getHealth() <= 0 then 
		love.graphics.print("RIP PLAYER")
		p:setExp(0)
		p:setGold(0)
		p:setHealth(p:getMaxHealth())
		m:setHealth(m:getMaxHealth())
	end 

	if m:getHealth() <= 0 then 
		m:levelUp()
		p:setExp(p:getExp() + m:getExp())
		p:setGold(p:getGold() + m:getReward())
	end 

	if p:getExp() >= p:getExpGate() then 
		p:levelUp()
	end 
end

function love.draw()
	love.graphics.print(wy * 0.20, 200, 200)
	love.graphics.print(love.mouse.getX(), 10, 50)
	love.graphics.print(love.mouse.getY(), 50, 50)

	-- Player info 
	love.graphics.print(p:getName(), wx*0.58, wy*0.36)
	love.graphics.print(p:getLevel(), wx*0.58, wy*0.38)
	love.graphics.print(p:getExp(), wx*0.58, wy*0.40)
	love.graphics.print(p:getGold(), wx*0.58, wy*0.42)
	love.graphics.print(p:getHealth(), wx*0.58, wy*0.44)
	love.graphics.print(p:getDmg(), wx*0.58, wy*0.46)


	-- Monster info 
	love.graphics.print("MONSTER", wx*0.80, wy*0.36)
	love.graphics.print(m:getLevel(), wx*0.80, wy*0.38)
	love.graphics.print(m:getExp(), wx*0.80, wy*0.40)
	love.graphics.print(m:getReward(), wx*0.80, wy*0.42)
	love.graphics.print(m:getHealth(), wx*0.80, wy*0.44)
	love.graphics.print(m:getDmg(), wx*0.80, wy*0.46)


	-- Random
	love.graphics.rectangle("line", 100, 100,100,100)
	love.graphics.print(playerZone:getX(), 300, 300)
	playerZone:draw("line")
	playerZone:isClick(m, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
	love.graphics.print(a, 210,100)
	shopButton:draw("line")
	shopButton:isClick(shopItem_1, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
	p:draw()
	m:draw()
end