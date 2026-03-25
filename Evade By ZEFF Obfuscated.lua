local ScreenGui = Instance.new("ScreenGui")
local PASS_URL = "pastebin.com/raw/LNJHtzG" 

local function GetRemotePass()
    local success, res = pcall(function()
        return game:HttpGet(PASS_URL .. "?t=" .. tostring(math.random(1, 8888)))
    end)
    if success and res then 
        return res:gsub("%s+", ""):lower()
    end
    return nil
end

local Frame = Instance.new("Frame")
local SpeedInput, FlyInput, BrightInput = Instance.new("TextBox"), Instance.new("TextBox"), Instance.new("TextBox")
local SetButton, InfoLabel, PassInput, LoginButton = Instance.new("TextButton"), Instance.new("TextLabel"), Instance.new("TextBox"), Instance.new("TextButton")
local CreditLabel, VersionLabel = Instance.new("TextLabel"), Instance.new("TextLabel")
local SpeedText, FlyText, BrightText = Instance.new("TextLabel"), Instance.new("TextLabel"), Instance.new("TextLabel")

local IsUnlocked = false
local MainFont, LogoFont = Enum.Font.GothamBold, Enum.Font.GothamBlack 

pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)
if not ScreenGui.Parent then ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") end

Frame.Parent = ScreenGui; Frame.Size = UDim2.new(0, 200, 0, 100); Frame.Position = UDim2.new(0.5, -100, 0.2, 0); Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15); Frame.Active, Frame.Draggable = true, true
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12); local stroke = Instance.new("UIStroke", Frame); stroke.Color = Color3.new(1, 1, 1); stroke.Thickness = 2.5
CreditLabel.Parent = Frame; CreditLabel.Size = UDim2.new(0, 200, 0, 30); CreditLabel.Position = UDim2.new(0, 0, 0, -35); CreditLabel.BackgroundTransparency = 1; CreditLabel.Text = "By ZEFF"; CreditLabel.Font = LogoFont; CreditLabel.TextSize = 28; CreditLabel.TextColor3 = Color3.new(1,1,1)
VersionLabel.Parent = Frame; VersionLabel.Size = UDim2.new(0, 40, 0, 20); VersionLabel.Position = UDim2.new(1, -45, 1, -22); VersionLabel.BackgroundTransparency = 1; VersionLabel.Text = "5.0"; VersionLabel.Font = MainFont; VersionLabel.TextSize = 14; VersionLabel.TextColor3 = Color3.new(1,1,1)

task.spawn(function() while true do for i = 0, 1, 0.01 do local color = Color3.fromHSV(i, 0.8, 1); stroke.Color = color; CreditLabel.TextColor3 = color; VersionLabel.TextColor3 = color; task.wait(0.02) end end end)

local function ApplyStyle(el, isLabel)
    Instance.new("UICorner", el).CornerRadius = UDim.new(0, 6); el.BackgroundColor3 = Color3.fromRGB(30, 30, 30); el.TextColor3 = Color3.new(1, 1, 1); el.Font = MainFont
    if isLabel then el.BackgroundTransparency = 1; el.TextSize = 10; el.TextColor3 = Color3.fromRGB(200, 200, 200) else el.TextSize = 14 end
end

PassInput.Parent = Frame; PassInput.Size = UDim2.new(0, 170, 0, 30); PassInput.Position = UDim2.new(0, 15, 0, 15); PassInput.PlaceholderText = "ENTER PASS"; ApplyStyle(PassInput)
LoginButton.Parent = Frame; LoginButton.Size = UDim2.new(0, 170, 0, 30); LoginButton.Position = UDim2.new(0, 15, 0, 55); LoginButton.Text = "ACCESS"; ApplyStyle(LoginButton)

local fields = {{SpeedText, SpeedInput, "RUN SPEED:"}, {FlyText, FlyInput, "FLY SPEED:"}, {BrightText, BrightInput, "BRIGHTNESS %:"}}
for i, v in ipairs(fields) do
    local label, input, txt = v[1], v[2], v[3]
    label.Parent, label.Text, label.Size, label.Position = Frame, txt, UDim2.new(0, 170, 0, 15), UDim2.new(0, 18, 0, (i-1)*55 + 10); ApplyStyle(label, true)
    input.Parent, input.Size, input.Position = Frame, UDim2.new(0, 170, 0, 30), UDim2.new(0, 15, 0, (i-1)*55 + 25); ApplyStyle(input)
    label.Visible, input.Visible = false, false
end

SpeedInput.Text, FlyInput.Text, BrightInput.Text = "1.5", "2.0", "100"
SetButton.Parent, SetButton.Size, SetButton.Position, SetButton.Text = Frame, UDim2.new(0, 170, 0, 30), UDim2.new(0, 15, 0, 175), "CLOSE (X)"; ApplyStyle(SetButton); SetButton.Visible = false
InfoLabel.Parent, InfoLabel.Size, InfoLabel.Position, InfoLabel.Text = Frame, UDim2.new(0, 170, 0, 45), UDim2.new(0, 15, 0, 210), "Z-Speed | N-Noclip | Y-Fly\nK-Cola | Space-Bhop | B-Bright"; InfoLabel.TextColor3, InfoLabel.Font, InfoLabel.BackgroundTransparency, InfoLabel.Visible = Color3.fromRGB(180, 180, 180), MainFont, 1, false

local speeding, holdingSpace, noclip, flying, bright_enabled = false, false, false, false, false
local bv, flyGyro, flyVel = nil, nil, nil
local UIS, VIM, Lighting, RunService = game:GetService("UserInputService"), game:GetService("VirtualInputManager"), game:GetService("Lighting"), game:GetService("RunService")
local def_br = Lighting.Brightness

local function resetCollision()
    local char = game.Players.LocalPlayer.Character
    if char then
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end

LoginButton.MouseButton1Click:Connect(function()
    local CorrectPass = GetRemotePass()
    local userEntry = PassInput.Text:gsub("%s+", ""):lower()
    if CorrectPass and userEntry == CorrectPass then
        IsUnlocked = true; PassInput.Visible, LoginButton.Visible = false, false
        for _, v in ipairs(fields) do v[1].Visible, v[2].Visible = true, true end
        SetButton.Visible, InfoLabel.Visible = true, true; Frame.Size = UDim2.new(0, 200, 0, 270)
    else
        PassInput.Text = ""; PassInput.PlaceholderText = "WRONG!"
    end
end)

RunService.Heartbeat:Connect(function()
    if not IsUnlocked then return end
    local char = game.Players.LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChild("Humanoid")
    if char and root and hum and hum.Health > 1 then
        if holdingSpace and hum.FloorMaterial ~= Enum.Material.Air then hum:ChangeState(Enum.HumanoidStateType.Jumping); root.Velocity = Vector3.new(root.Velocity.X, 16, root.Velocity.Z) end
        
        -- NOCLIP / FLY COLLISION
        if noclip or flying then 
            for _, p in pairs(char:GetDescendants()) do 
                if p:IsA("BasePart") then p.CanCollide = false end 
            end 
        end

        if flying then
            hum.PlatformStand = true
            if not flyGyro then 
                flyGyro = Instance.new("BodyGyro", root); flyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
                flyVel = Instance.new("BodyVelocity", root); flyVel.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            end
            local dir = Vector3.new(0,0,0); local camCF = workspace.CurrentCamera.CFrame
            if UIS:IsKeyDown(Enum.KeyCode.W) then dir = dir + camCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.S) then dir = dir - camCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.D) then dir = dir + camCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.A) then dir = dir - camCF.RightVector end
            flyVel.Velocity = dir.Magnitude > 0 and dir.Unit * ((tonumber(FlyInput.Text) or 2) * 70) or Vector3.new(0,0,0); root.AssemblyLinearVelocity = Vector3.new(0,0,0)
        else
            if flyGyro then flyGyro:Destroy(); flyGyro = nil; flyVel:Destroy(); flyVel = nil; hum.PlatformStand = false; resetCollision() end
            if speeding and hum.MoveDirection.Magnitude > 0 then
                if not bv or bv.Parent ~= root then if bv then bv:Destroy() end; bv = Instance.new("BodyVelocity", root); bv.MaxForce = Vector3.new(5e5, 0, 5e5) end
                bv.Velocity = hum.MoveDirection * ((tonumber(SpeedInput.Text) or 1.5) * 65)
            elseif bv then bv:Destroy(); bv = nil end
        end
    end
end)

UIS.InputBegan:Connect(function(i, g)
    if i.KeyCode == Enum.KeyCode.X then Frame.Visible = not Frame.Visible end
    if not IsUnlocked or g then return end
    if i.KeyCode == Enum.KeyCode.Space then holdingSpace = true end
    if i.KeyCode == Enum.KeyCode.Z then speeding = not speeding end
    if i.KeyCode == Enum.KeyCode.N then noclip = not noclip; if not noclip then resetCollision() end end
    if i.KeyCode == Enum.KeyCode.Y then flying = not flying; if not flying then resetCollision() end end
    if i.KeyCode == Enum.KeyCode.B then bright_enabled = not bright_enabled; Lighting.Brightness = bright_enabled and (tonumber(BrightInput.Text) or 3) or def_br; Lighting.OutdoorAmbient = bright_enabled and Color3.new(1,1,1) or Color3.fromRGB(127,127,127) end
    if i.KeyCode == Enum.KeyCode.K then
        task.spawn(function()
            VIM:SendKeyEvent(true, "Two", false, game); task.wait(0.01); VIM:SendKeyEvent(false, "Two", false, game)
            task.wait(0.05); VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0); task.wait(0.01); VIM:SendMouseButtonEvent(0, 0, 0, false, game, 0)
            task.wait(0.01); VIM:SendKeyEvent(true, "One", false, game); task.wait(0.01); VIM:SendKeyEvent(false, "One", false, game)
        end)
    end
end)
UIS.InputEnded:Connect(function(i) if i.KeyCode == Enum.KeyCode.Space then holdingSpace = false end end)
SetButton.MouseButton1Click:Connect(function() Frame.Visible = false end)
