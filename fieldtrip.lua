-- Gui to Lua
-- Version: 3.2

-- Instances:

local FieldTripZ = Instance.new("ScreenGui")
local ItemFrame = Instance.new("Frame")
local Donut = Instance.new("TextButton")
local Bandage = Instance.new("TextButton")
local Medkit = Instance.new("TextButton")
local God = Instance.new("TextButton")
local NOGOD = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Open = Instance.new("TextButton")

--Properties:

FieldTripZ.Name = "Field Trip Z"
FieldTripZ.Parent = game.CoreGui
FieldTripZ.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ItemFrame.Name = "ItemFrame"
ItemFrame.Parent = FieldTripZ
ItemFrame.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
ItemFrame.BorderColor3 = Color3.fromRGB(255, 0, 4)
ItemFrame.Position = UDim2.new(0.308490276, 0, 0.0614973269, 0)
ItemFrame.Size = UDim2.new(0, 358, 0, 340)

Donut.Name = "Donut"
Donut.Parent = ItemFrame
Donut.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Donut.BorderColor3 = Color3.fromRGB(255, 0, 4)
Donut.Position = UDim2.new(0.247937441, 0, 0.261764705, 0)
Donut.Size = UDim2.new(0, 179, 0, 50)
Donut.Font = Enum.Font.SourceSans
Donut.Text = "Donut"
Donut.TextColor3 = Color3.fromRGB(255, 0, 4)
Donut.TextScaled = true
Donut.TextSize = 14.000
Donut.TextWrapped = true
Donut.MouseButton1Down:connect(function()
	local A_1 = "PICKUP_ITEM"
	local A_2 = "Donut"
	local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
	Event:InvokeServer(A_1, A_2)
end)

Bandage.Name = "Bandage"
Bandage.Parent = ItemFrame
Bandage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Bandage.BorderColor3 = Color3.fromRGB(255, 0, 4)
Bandage.Position = UDim2.new(0.246751577, 0, 0.0588235259, 0)
Bandage.Size = UDim2.new(0, 179, 0, 50)
Bandage.Font = Enum.Font.SourceSans
Bandage.Text = "Bandage"
Bandage.TextColor3 = Color3.fromRGB(255, 0, 4)
Bandage.TextScaled = true
Bandage.TextSize = 14.000
Bandage.TextWrapped = true
Bandage.MouseButton1Down:connect(function()
	local A_1 = "PICKUP_ITEM"
	local A_2 = "Bandage"
	local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
	Event:InvokeServer(A_1, A_2)
end)

Medkit.Name = "Medkit"
Medkit.Parent = ItemFrame
Medkit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Medkit.BorderColor3 = Color3.fromRGB(255, 0, 4)
Medkit.Position = UDim2.new(0.247937441, 0, 0.455882341, 0)
Medkit.Size = UDim2.new(0, 179, 0, 50)
Medkit.Font = Enum.Font.SourceSans
Medkit.Text = "Medkit"
Medkit.TextColor3 = Color3.fromRGB(255, 0, 4)
Medkit.TextScaled = true
Medkit.TextSize = 14.000
Medkit.TextWrapped = true
Medkit.MouseButton1Down:connect(function()
	local A_1 = "PICKUP_ITEM"
	local A_2 = "MedKit"
	local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
	Event:InvokeServer(A_1, A_2)
end)

God.Name = "God"
God.Parent = ItemFrame
God.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
God.BorderColor3 = Color3.fromRGB(255, 0, 4)
God.Position = UDim2.new(0.245144144, 0, 0.65882355, 0)
God.Size = UDim2.new(0, 179, 0, 50)
God.Font = Enum.Font.SourceSans
God.Text = "God Mode"
God.TextColor3 = Color3.fromRGB(255, 0, 4)
God.TextScaled = true
God.TextSize = 14.000
God.TextWrapped = true
God.MouseButton1Down:connect(function()
	_G.Heal = true
	while _G.Heal do
		wait(0.1)
		local A_1 = "HEAL_PLAYER"
		local A_2 = game:GetService("Players").LocalPlayer
		local A_3 = 999999999
		local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
	end
end)

NOGOD.Name = "NOGOD"
NOGOD.Parent = ItemFrame
NOGOD.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
NOGOD.BorderColor3 = Color3.fromRGB(255, 0, 4)
NOGOD.Position = UDim2.new(0.247937441, 0, 0.852941215, 0)
NOGOD.Size = UDim2.new(0, 179, 0, 50)
NOGOD.Font = Enum.Font.SourceSans
NOGOD.Text = "Stop God Mode"
NOGOD.TextColor3 = Color3.fromRGB(255, 0, 4)
NOGOD.TextScaled = true
NOGOD.TextSize = 14.000
NOGOD.TextWrapped = true
NOGOD.MouseButton1Down:connect(function()
	_G.Heal = false
	while _G.Heal do
		wait(0.1)
		local A_1 = "HEAL_PLAYER"
		local A_2 = game:GetService("Players").LocalPlayer
		local A_3 = 999999999
		local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
	end
end)

Close.Name = "Close"
Close.Parent = ItemFrame
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Close.BorderColor3 = Color3.fromRGB(255, 0, 4)
Close.Position = UDim2.new(0.83468765, 0, 0, 0)
Close.Size = UDim2.new(0, 59, 0, 48)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Close.TextWrapped = true

Open.Name = "Open"
Open.Parent = FieldTripZ
Open.BackgroundColor3 = Color3.fromRGB(64, 255, 30)
Open.Position = UDim2.new(-0.0150150154, 0, 0.43315509, 0)
Open.Size = UDim2.new(0, 152, 0, 50)
Open.Font = Enum.Font.SourceSans
Open.Text = "OPEN"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true

-- Scripts:

local function PCSAEX_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(PCSAEX_fake_script)()
local function VASEMB_fake_script() -- Open.LocalScript 
	local script = Instance.new('LocalScript', Open)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.ItemFrame.Visible = true
	end)
end
coroutine.wrap(VASEMB_fake_script)()
local function VOJLEI_fake_script() -- FieldTripZ.Drag Gui Script 
	local script = Instance.new('Script', FieldTripZ)

	frame = script.Parent.ItemFrame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(VOJLEI_fake_script)()
