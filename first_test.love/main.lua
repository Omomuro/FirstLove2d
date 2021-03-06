-- global vars 
town1 = false 
town2 = false 
town3 = false 
town4 = false 

town1_boss_defeated = false 
town2_boss_defeated = false 
town3_boss_defeated = false 
town4_boss_defeated = false 


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
	expGate = 5,
	skill1 = false, 
	skill2 = false,
	skill3 = false, 
	skill4 = false,
	mp = 50,
	maxMp = 50
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

function Player.setMp( self, mp )
	-- body
	self.mp = mp
end

function Player.setMaxMp( self, maxMp )
	-- body
	self.maxMp = maxMp
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

function Player.setExpGate( self, expGate )
	-- body
	self.expGate = expGate
end

function Player.setMaxHealth( self, maxHealth )
	-- body
	self.maxHealth = maxHealth
end

-- Player get_helpers

function Player.getHealth(self)
	-- body
	return self.health
end

function Player.getMp( self )
	-- body
	return self.mp
end

function Player.getMaxMp( self )
	-- body
	return self.maxMp
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
	self.maxMp = 50 + 10 * (self.level)
	self.mp = self.maxMp
end

function Player.draw( self )
	-- body
	love.graphics.rectangle("line",wx*0.58, wy*0.6, wx*0.1, wy*0.2)
end


-- Player Skill Class 
Skill = {
	
}

Skill.__index = Skill 


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


-- ShopMenu Class 
ShopMenu = {
	number = 1,
	id = 3 
}

ShopMenu.__index = ShopMenu

-- ShopMenu constructor
function ShopMenu.new( self )
	-- body
	local self = setmetatable({}, ShopMenu)
	return self 
end

-- ShopMenu set_helpers
function ShopMenu.setNumber( self, number )
	-- body
	self.number = number
end

-- ShopMenu get_helpers 
function ShopMenu.getNumber( self )
	-- body	
	return self.number
end

function ShopMenu.getId( self )
	-- body
	return self.id
end


-- Button Class 
Button = {
	x = 0,
	y = 0,
	height = 0,
	width = 0,
	clicked = false,
	id = 0, -- shopMenu
	number = 0 -- ShopMenuActive
}

Button.__index = Button

-- Button Construct 
function Button.new(self, x, y, height, width, id, number)
	-- body
	local self = setmetatable({}, Button)
	self.x = x 
	self.y = y 
	self.height = height 
	self.width = width
	self.id = id 
	self.number = number
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
			love.graphics.print(-p:getClickDmg(), wx*0.80 + math.random(-50,100), wy*0.6 + math.random(-50,100)) -- random health decrease on monster 
		elseif obj:getId() > 1 then 
			
			if self.id == 3 then 
				love.graphics.print("SHOP MENU", 200, 0) -- replace with obj function 
				obj:setNumber(self.number)
				love.graphics.print(self.number)
			end 

			if self.id == 2 then  -- Player Stats and skills 
				-- DMG
				love.graphics.print("SHOP ITEMMM IN MENU 1", 200, 0)
				if self.number == 1 and p:getGold() >= 0 then 
					love.graphics.print("Damage up +1", 400, 0)
					p:setDmg(p:getDmg() + 1)
					p:setGold(p:getGold() - 0 )

				-- Health 
				elseif self.number == 2 and p:getGold() >= 0 then 
					love.graphics.print("SHOP ITEMMM maxHealth + 10", 400, 0)
					p:setMaxHealth(p:getMaxHealth() + 10)
					p:setGold(p:getGold() - 0)

				-- Health Potion 
				elseif self.number == 3 and p:getGold() >= 0 then
					love.graphics.print("SHOP ITEMMM Health Recover", 400, 0)
					if p:getHealth() < p:getMaxHealth() then 
						p:setHealth(p:getHealth() + p:getMaxHealth()*0.5)
						p:setGold(p:getGold() - 0)
					end 

				-- Magic Potion
				elseif self.number == 4 and p:getGold() >= 0 then 
					love.graphics.print("SHOP ITEMMM Mana Recover", 400, 0)	
					p:setMp(p:getMaxMp())
					p:setGold(p:getGold() - 0)

				elseif self.number == 5 then 
					love.graphics.print("SHOP ITEMMM 5555555", 400, 0)
				elseif self.number == 6 then 
					love.graphics.print("SHOP ITEMMM 6666666", 400, 0)
				elseif self.number == 7 then
					love.graphics.print("SHOP ITEMMM 7777777", 400, 0)
				elseif self.number == 8 then 
					love.graphics.print("SHOP ITEMMM 8888888", 400, 0)
				end 
			end

			if self.id == 4 then -- Player land for gold income and game progression 
				love.graphics.print("SHOP ITEMMM IN MENU 2", 200, 0)
				if self.number == 1 then 
					love.graphics.print("SHOP ITEMMM 111111", 400, 0)
					town1 = true 
				elseif self.number == 2 then 
					love.graphics.print("SHOP ITEMMM 2222222", 400, 0)
					town2 = true 
				elseif self.number == 3 then
					love.graphics.print("SHOP ITEMMM 3333333", 400, 0)
					town3 = true 
				elseif self.number == 4 then 
					love.graphics.print("SHOP ITEMMM 4444444", 400, 0)
					town4 = true 
				end 
			end 

		end 
	end 
end



-- Game code 

function love.load(arg)
	p = Player:new("PLAYER NAME: BOB")
	m = Monster:new()
	wx, wy = love.graphics.getDimensions() 
	playerZone = Button:new(wx*0.5, wy*0.02, wy*0.9, wx*0.48, 1, 0)
	shopMenuButton1 = Button:new(wx*0.02, wy*0.02, wy*0.08, wx*0.08, 3, 1)
	shopMenuButton2 = Button:new(wx*0.12, wy*0.02, wy*0.08, wx*0.08, 3, 2)
	shopMenuButton3 = Button:new(wx*0.22, wy*0.02, wy*0.08, wx*0.08, 3, 3)
	--shopMenuButton4 = Button:new(wx*0.32, wy*0.02, wy*0.08, wx*0.08, 3, 4)
	shopMenu = ShopMenu:new()

	shopItemButton11 = Button:new(wx*0.02, wy*0.20, wy*0.08, wx*0.08, 2, 1)
	shopItemButton12 = Button:new(wx*0.12, wy*0.20, wy*0.08, wx*0.08, 2, 2)
	shopItemButton13 = Button:new(wx*0.22, wy*0.20, wy*0.08, wx*0.08, 2, 3)
	shopItemButton14 = Button:new(wx*0.32, wy*0.20, wy*0.08, wx*0.08, 2, 4)

	shopItemButton15 = Button:new(wx*0.02, wy*0.30, wy*0.08, wx*0.08, 2, 5)
	shopItemButton16 = Button:new(wx*0.12, wy*0.30, wy*0.08, wx*0.08, 2, 6)
	shopItemButton17 = Button:new(wx*0.22, wy*0.30, wy*0.08, wx*0.08, 2, 7)
	shopItemButton18 = Button:new(wx*0.32, wy*0.30, wy*0.08, wx*0.08, 2, 8)


	shopItem11 = ShopItem:new(2)
	shopItem12 = ShopItem:new(2)
	shopItem13 = ShopItem:new(2)
	shopItem14 = ShopItem:new(2)

	shopItem15 = ShopItem:new(2)
	shopItem16 = ShopItem:new(2)
	shopItem17 = ShopItem:new(2)
	shopItem18 = ShopItem:new(2)	

	shopItemButton21 = Button:new(wx*0.02, wy*0.20, wy*0.08, wx*0.08, 4, 1)
	shopItemButton22 = Button:new(wx*0.12, wy*0.20, wy*0.08, wx*0.08, 4, 2)
	shopItemButton23 = Button:new(wx*0.22, wy*0.20, wy*0.08, wx*0.08, 4, 3)
	shopItemButton24 = Button:new(wx*0.32, wy*0.20, wy*0.08, wx*0.08, 4, 4)

	shopItem21 = ShopItem:new(2)
	shopItem22 = ShopItem:new(2)
	shopItem23 = ShopItem:new(2)
	shopItem24 = ShopItem:new(2)

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
		p:setExpGate(p:getExpGate() * 2)
	end 
end

function love.draw()
	love.graphics.print(wy * 0.20, 200, 200)
	love.graphics.print(love.mouse.getX(), 10, 50)
	love.graphics.print(love.mouse.getY(), 50, 50)

	-- Player info 
	love.graphics.print(p:getMp(), wx*0.58, wy*0.34)
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

	-- Click Zone
	--love.graphics.rectangle("line", 100, 100,100,100)
	love.graphics.print(playerZone:getX(), 300, 300)
	playerZone:draw("line")
	playerZone:isClick(m, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
	love.graphics.print(a, 210,100)
	shopMenuButton1:draw("line")
	shopMenuButton2:draw("line")
	shopMenuButton3:draw("line")
	--shopMenuButton4:draw("line")
	shopMenuButton1:isClick(shopMenu, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
	shopMenuButton2:isClick(shopMenu, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
	shopMenuButton3:isClick(shopMenu, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
	--shopMenuButton4:isClick(shopMenu, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
	
	-- Player and Monster 
	p:draw()
	m:draw()

	-- Shop menu

	if shopMenu:getNumber() == 1 then  -- Character weapons/gear/skill
		love.graphics.print("IN MENU ONE")
		shopItemButton11:draw("line")
		shopItemButton12:draw("line")
		shopItemButton13:draw("line")
		shopItemButton14:draw("line")
		shopItemButton11:isClick(shopItem11, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton12:isClick(shopItem12, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton13:isClick(shopItem13, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton14:isClick(shopItem14, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton15:draw("line")
		shopItemButton16:draw("line")
		shopItemButton17:draw("line")
		shopItemButton18:draw("line")
		shopItemButton15:isClick(shopItem15, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton16:isClick(shopItem16, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton17:isClick(shopItem17, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton18:isClick(shopItem18, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))



	elseif shopMenu:getNumber() == 2 then -- Character housing 
		love.graphics.print("IN MENU TWO")
		shopItemButton21:draw("line")
		shopItemButton22:draw("line")
		shopItemButton23:draw("line")
		shopItemButton24:draw("line")
		shopItemButton21:isClick(shopItem21, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton22:isClick(shopItem22, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton23:isClick(shopItem23, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))
		shopItemButton24:isClick(shopItem24, love.mouse.getX(), love.mouse.getY(), love.mouse.isDown(1))


	elseif shopMenu:getNumber() == 3 then  -- Credits 
		love.graphics.print("IN MENU THREE")
	--elseif shopMenu:getNumber() == 4 then 
		--love.graphics.print("IN MENU FOUR")
		love.graphics.print("CREDITS ASDFJLSADJFKALSDJF LKSJFD LASKDF\n sldfjaslkdjflaskjdflasdjfklasjdflk \n asdkfljslakdfjlskdf", 10, 200)
	end 

	-- Town 
	if town1 then
		love.graphics.rectangle("line", wx*0.50, wy*0.50, wx*0.08, wy*0.08)
		if town1_boss_defeated == false then 
			--boss code 
		end 
	end 

	if town2 then 
		love.graphics.rectangle("line", wx*0.60, wy*0.50, wx*0.08, wy*0.08)
	end 

	if town3 then 
		love.graphics.rectangle("line", wx*0.70, wy*0.50, wx*0.08, wy*0.08)
	end 

	if town4 then 
		love.graphics.rectangle("line", wx*0.80, wy*0.50, wx*0.08, wy*0.08)
	end 

end