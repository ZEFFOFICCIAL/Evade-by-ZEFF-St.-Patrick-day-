local RawUrl = "https://raw.githubusercontent.com/ZEFFOFICCIAL/Evade-by-ZEFF-St.-Patrick-day-/refs/heads/main/Pass.txt"
local PassUrl = RawUrl .. "?t=" .. tostring(math.random(1, 1000000))

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SpeedInput, FlyInput, BrightInput = Instance.new("TextBox"), Instance.new("TextBox"), Instance.new("TextBox")
local SetButton, InfoLabel, PassInput, LoginButton = Instance.new("TextButton"), Instance.new("TextLabel"), Instance.new("TextBox"), Instance.new("TextButton")
local CreditLabel, VersionLabel = Instance.new("TextLabel"), Instance.new("TextLabel")
local SpeedText, FlyText, BrightText = Instance.new("TextLabel"), Instance.new("TextLabel"), Instance.new("TextLabel")

local CorrectPass = ""
local success, res = pcall(function() return game:HttpGet(PassUrl) end)
if success and res then
    res = res:gsub("%s+", "") 
    local data = {}
    for num in string.gmatch(res, "[^,]+") do 
        local n = tonumber(num)
        if n then table.insert(data, n) end
    end
    if #data > 0 then
        local s = "" for _,v in ipairs(data) do s = s .. string.char(v) end
        CorrectPass = s
    else CorrectPass = res end
else CorrectPass = "ERROR" end

local IsUnlocked = false
local MainFont, LogoFont = Enum.Font.GothamBold, Enum.Font.GothamBlack 

pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)
if not ScreenGui.Parent then ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") end

Frame.Parent = ScreenGui
Frame.Size, Frame.Position = UDim2.new(0, 200, 0, 100), UDim2.new(0.5, -100, 0.2, 0)
Frame.BackgroundColor3, Frame.BackgroundTransparency = Color3.fromRGB(15, 15, 15), 0.1
Frame.Active, Frame.Draggable = true, true
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)
local stroke = Instance.new("UIStroke", Frame)
stroke.Thickness = 2.5

CreditLabel.Parent, CreditLabel.Text, CreditLabel.Font, CreditLabel.TextSize = Frame, "By ZEFF", LogoFont, 28 
CreditLabel.Size, CreditLabel.Position, CreditLabel.BackgroundTransparency = UDim2.new(0, 200, 0, 30), UDim2.new(0, 0, 0, -35), 1

VersionLabel.Parent, VersionLabel.Text, VersionLabel.Font, VersionLabel.TextSize = Frame, "2.0", MainFont, 14
VersionLabel.Size, VersionLabel.Position, VersionLabel.BackgroundTransparency = UDim2.new(0, 40, 0, 20), UDim2.new(1, -45, 1, -22), 1

task.spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            local color = Color3.fromHSV(i, 0.8, 1)
            stroke.Color, CreditLabel.TextColor3, VersionLabel.TextColor3 = color, color, color
            task.wait(0.02)
        end
    end
end)

local function ApplyStyle(el, isLabel)
    Instance.new("UICorner", el).CornerRadius = UDim.new(0, 6)
    el.BackgroundColor3, el.TextColor3, el.Font = Color3.fromRGB(30, 30, 30), Color3.new(1, 1, 1), MainFont
    if isLabel then el.BackgroundTransparency, el.TextSize, el.TextColor3 = 1, 10, Color3.fromRGB(200, 200, 200) else el.TextSize = 14 end
end

PassInput.Parent, PassInput.Size, PassInput.Position, PassInput.PlaceholderText = Frame, UDim2.new(0, 170, 0, 30), UDim2.new(0, 15, 0, 15), "ENTER PASS"
ApplyStyle(PassInput)
LoginButton.Parent, LoginButton.Size, LoginButton.Position, LoginButton.Text = Frame, UDim2.new(0, 170, 0, 30), UDim2.new(0, 15, 0, 55), "ACCESS"
ApplyStyle(LoginButton)

local inputs = {{SpeedText, SpeedInput, "RUN SPEED:"}, {FlyText, FlyInput, "FLY SPEED:"}, {BrightText, BrightInput, "BRIGHTNESS %:"}}
for i, v in ipairs(inputs) do
    v.Parent, v.Text, v.Size, v.Position = Frame, v, UDim2.new(0, 170, 0, 15), UDim2.new(0, 18, 0, (i-1)*55 + 10)
    ApplyStyle(v, true)
    v.Parent, v.Size, v.Position = Frame, UDim2.new(0, 170, 0, 30), UDim2.new(0, 15, 0, (i-1)*55 + 25)
    ApplyStyle(v)
    v.Visible, v.Visible = false, false
end

SpeedInput.Text, FlyInput.Text, BrightInput.Text = "1.5", "2.0", "100"
SetButton.Parent, SetButton.Size, SetButton.Position, SetButton.Text = Frame, UDim2.new(0, 170, 0, 30), UDim2.new(0, 15, 0, 175), "CLOSE (X)"
SetButton.BackgroundColor3 = Color3.fromRGB(80, 25, 25)
ApplyStyle(SetButton)
SetButton.Visible = false

InfoLabel.Parent, InfoLabel.Size, InfoLabel.Position, InfoLabel.BackgroundTransparency = Frame, UDim2.new(0, 170, 0, 60), UDim2.new(0, 15, 0, 205), 1
InfoLabel.Text, InfoLabel.TextColor3, InfoLabel.TextSize, InfoLabel.Font = "Z-Speed | N-Noclip | Y-Fly\nK-Cola | Space-Bhop\nSlide: Infinite", Color3.fromRGB(180, 180, 180), 10, MainFont
InfoLabel.Visible = false

local speeding, holdingSpace, noclip, flying, bright_enabled = false, false, false, false, false
local bv, flyGyro, flyVel = nil, nil, nil
local UIS, Lighting, RunService, VIM = game:GetService("UserInputService"), game:GetService("Lighting"), game:GetService("RunService"), game:GetService("VirtualInputManager")

local function resetCollision()
    local char = game.Players.LocalPlayer.Character
    if char then for _, part in pairs(char:GetDescendants()) do if part:IsA("BasePart") then part.CanCollide = true end end end
end

LoginButton.MouseButton1Click:Connect(function()
    if PassInput.Text == CorrectPass then
        IsUnlocked = true
        PassInput.Visible, LoginButton.Visible = false, false
        for _, v in ipairs(inputs) do v.Visible, v.Visible = true, true end
        SetButton.Visible, InfoLabel.Visible = true, true
        Frame.Size = UDim2.new(0, 200, 0, 270)
    else PassInput.Text, PassInput.PlaceholderText = "", "WRONG!" end
end)

RunService.Stepped:Connect(function()
    if not IsUnlocked then return end
    local char = game.Players.LocalPlayer.Character
    if char and (noclip or flying) then
        for _, part in pairs(char:GetDescendants()) do if part:IsA("BasePart") then part.CanCollide = false end end
    end
end)

RunService.Heartbeat:Connect(function()
    if not IsUnlocked then return end
    local char = game.Players.LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChild("Humanoid")
    
    if root and hum and hum.Health > 1 then
        if holdingSpace and hum.FloorMaterial ~= Enum.Material.Air then
            hum:ChangeState(Enum.HumanoidStateType.Jumping)
            root.Velocity = Vector3.new(root.Velocity.X, 16, root.Velocity.Z)
        end

        if flying then
            hum.PlatformStand = true
            if not flyGyro then
                flyGyro = Instance.new("BodyGyro", root); flyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
                flyVel = Instance.new("BodyVelocity", root); flyVel.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            end
            local dir = Vector3.new(0,0,0)
            local camCF = workspace.CurrentCamera.CFrame
            if UIS:IsKeyDown(Enum.KeyCode.W) then dir = dir + camCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.S) then dir = dir - camCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.D) then dir = dir + camCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.A) then dir = dir - camCF.RightVector end
            flyVel.Velocity = dir.Magnitude > 0 and dir.Unit * ((tonumber(FlyInput.Text) or 2) * 70) or Vector3.new(0,0,0)
            root.AssemblyLinearVelocity = Vector3.new(0,0,0)
        else
            if flyGyro then flyGyro:Destroy(); flyGyro = nil end
            if flyVel then flyVel:Destroy(); flyVel = nil end
            hum.PlatformStand = false

            if speeding and hum.MoveDirection.Magnitude > 0 then
                if not bv or bv.Parent ~= root then
                    if bv then bv:Destroy() end
                    bv = Instance.new("BodyVelocity", root); bv.MaxForce = Vector3.new(100000, 0, 100000)
                end
                bv.Velocity = hum.MoveDirection * ((tonumber(SpeedInput.Text) or 1.5) * 65)
            elseif bv then bv:Destroy(); bv = nil end

            if hum:GetState() == Enum.HumanoidStateType.Crouching or hum:GetState() == Enum.HumanoidStateType.Physics then
                local sMult = speeding and (tonumber(SpeedInput.Text) or 1.5) or 1.1
                root.Velocity = Vector3.new(hum.MoveDirection.X * (sMult * 50), root.Velocity.Y, hum.MoveDirection.Z * (sMult * 50))
            end
        end
    end
end)

UIS.InputBegan:Connect(function(i, g)
    if i.KeyCode == Enum.KeyCode.Space then holdingSpace = true end
    if i.KeyCode == Enum.KeyCode.X then Frame.Visible = not Frame.Visible end
    if not IsUnlocked or g then return end
    if i.KeyCode == Enum.KeyCode.Z then speeding = not speeding end
    if i.KeyCode == Enum.KeyCode.N then noclip = not noclip if not noclip then resetCollision() end end
    if i.KeyCode == Enum.KeyCode.Y then flying = not flying if not flying then resetCollision() end end
    
    if i.KeyCode == Enum.KeyCode.K then
        task.spawn(function()
            VIM:SendKeyEvent(true, Enum.KeyCode.Two, false, game); task.wait(0.01); VIM:SendKeyEvent(false, Enum.KeyCode.Two, false, game)
            task.wait(0.05); VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0); task.wait(0.01); VIM:SendMouseButtonEvent(0, 0, 0, false, game, 0)
            task.wait(0.1); VIM:SendKeyEvent(true, Enum.KeyCode.One, false, game); task.wait(0.01); VIM:SendKeyEvent(false, Enum.KeyCode.One, false, game)
        end)
    end

    if i.KeyCode == Enum.KeyCode.B then 
        bright_enabled = not bright_enabled
        if bright_enabled then Lighting.Ambient = Color3.new(1,1,1); Lighting.Brightness = 2; Lighting.FogEnd = 1e5
        else Lighting.Ambient = Color3.new(0.5,0.5,0.5); Lighting.Brightness = 1 end
    end
end)

UIS.InputEnded:Connect(function(i) if i.KeyCode == Enum.KeyCode.Space then holdingSpace = false end end)
SetButton.MouseButton1Click:Connect(function() Frame.Visible = false end)
