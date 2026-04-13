local RawUrl = "https://raw.githubusercontent.com/ZEFFOFICCIAL/Evade-by-ZEFF-St.-Patrick-day-/refs/heads/main/Pass.txt"
local PassUrl = RawUrl .. "?t=" .. tostring(math.random(1, 1000000))
-- ==========================================================
-- ПРИВАТНИЙ ЛОАДЕР (7 ЧАСТИН ТОКЕНА)
-- ==========================================================

-- Розбиваємо токен на 7 частин

local p1 = "ghp_" 
local p2 = "PCIJ5" 
local p3 = "jo45X"
local p4 = "PhfZO"
local p5 = "tFZCs"
local p6 = "WK5ro"
local p7 = "y5IOw4LVVVA"

-- З'єднуємо токен без помилок
local function getSafeToken()
    local parts = {p1, p2, p3, p4, p5, p6, p7}
    local final = ""
    for _, v in ipairs(parts) do
        if v then
            -- Эта строка удаляет пробелы, табы и переносы строк
            final = final .. v:gsub("%s+", "") 
        end
    end
    return final
end

local FULL_TOKEN = getSafeToken()
local FULL_TOKEN = p1..p2..p3..p4..p5..p6..p7

-- БЕЗПЕЧНЕ З'ЄДНАННЯ
local function getSafeToken()
    local parts = {p1, p2, p3, p4, p5, p6, p7}
    local final = ""
    for i, v in ipairs(parts) do
        if v == nil or v == "" then return nil
        end
        final = final .. v
    end
    return final
end

local FULL_TOKEN = getSafeToken()

-- Налаштування GitHub
local owner = "ZEFFOFICCIAL"
local repo  = "Evade-by-ZEFF-St.-Patrick-day-"
local file  = "Pass.txt" -- назва вашого секретного файлу
local branch = "main"

-- 3. ПАРОЛЬ (Введи сюда свои цифры для теста или текст из GUI)
local MyInput = "229, 141, 141, 98, 121, 95, 122, 101, 102, 102, 229, 141, 141" 

-- 4. ФУНКЦИЯ ЗАГРУЗКИ (С ЗАЩИТОЙ ОТ ОШИБОК)
local function FetchFromGithub(targetFile)
    -- Обязательно /repos/ и правильные слэши
    local api_url = "https://api.github.com/repos/"..owner.."/"..repo.."/contents/"..targetFile.."?ref="..branch.."&t="..os.time()
    
    local success, response = pcall(function()
    print("DEBUG URL: " .. tostring(api_url))
print("DEBUG TOKEN: " .. tostring(FULL_TOKEN:sub(1, 10)) .. "...")
local success, response = pcall(function()
    return game:HttpGet("https://google.com")
end)
        return game:HttpGet(api_url, true, {
            ["Authorization"] = "token " .. (FULL_TOKEN or ""),
            ["Accept"] = "application/vnd.github.v3.raw",
            ["User-Agent"] = "Roblox"
        })
    end)

    if success and response then
        -- Перевірка на помилки API (якщо токен невірний, GitHub поверне JSON з повідомленням)
        if response:find('{"message"') then
            warn("❌ GitHub Error: " .. response)
            return nil
        end
        return response
    else
        warn("❌ Помилка HttpGet. Причина: " .. tostring(response))
        return nil
    end
end

-- 5. ЛОГИКА ПРОВЕРКИ И ЗАПУСКА
local serverPassword = FetchFromGithub(file)

if serverPassword then
    -- Сравниваем твой ввод (цифры) с тем, что в Pass.txt
    if MyInput == serverPassword then
        print("✅ Пароль верный! Доступ к оригинальному скрипту разрешен.")
        
        -- СЮДА МОЖНО ВСТАВИТЬ ЗАГРУЗКУ ОСНОВНОГО СКРИПТА
        -- Например, если твой чит лежит в файле "main.lua":
        -- local mainCode = FetchFromGithub("main.lua")
        -- if mainCode then loadstring(mainCode)() end
        
    else
        warn("❌ Неверный пароль!")
    end
else
    warn("⚠️ Не удалось получить данные с сервера.")
end

-- Получаем данные с Гитхаба
-- 1. Функция для превращения ASCII-цифр в текст
-- 1. Ця функція перетворить твій ASCII в текст
local function decodeASCII(asciiStr)
    local result = ""
    for code in asciiStr:gmatch("(%d+)") do
        result = result .. string.char(tonumber(code))
    end
    return result
end

-- 2. Отримуємо пароль з сервера
local serverPassword = FetchFromGithub(file)

if serverPassword then
    -- Очищаємо пароль з сервера від зайвих пробілів
    local cleanServerPass = serverPassword:gsub("%s+", "")
    
    -- Декодуємо твій ввід
    local myInputDecoded = decodeASCII(MyInput)

    if myInputDecoded == cleanServerPass then
    print("✅ Пароль вірний! Завантажую...")
    
    local mainCode = FetchFromGithub("Evade By ZEFF Obfuscated.lua")
    
    if mainCode then
        print("📥 Файл отримано, розмір: " .. #mainCode .. " символів.")
        
        -- Використовуємо task.spawn для стабільного запуску
        task.spawn(function()
            local success, err = pcall(function()
                local func, loadError = loadstring(mainCode)
                if func then
                    func() -- ЗАПУСК
                    print("🚀 СКРИПТ ЗАПУЩЕНО!")
                else
                    warn("❌ Помилка завантаження (loadstring): " .. tostring(loadError))
                end
            end)
            
            if not success then
                warn("❌ Помилка виконання коду: " .. tostring(err))
            end
        end)
    else
        warn("❌ Не вдалося скачати файл скрипта.")
    end
else
    warn("❌ Пароль невірний!")
end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SpeedInput = Instance.new("TextBox")
local FlyInput = Instance.new("TextBox")
local BrightInput = Instance.new("TextBox")
local SetButton = Instance.new("TextButton")
local InfoLabel = Instance.new("TextLabel")
local PassInput = Instance.new("TextBox")
local LoginButton = Instance.new("TextButton")
local CreditLabel = Instance.new("TextLabel")
local VersionLabel = Instance.new("TextLabel")

local SpeedText = Instance.new("TextLabel")
local FlyText = Instance.new("TextLabel")
local BrightText = Instance.new("TextLabel")

-- Завантаження пароля з GitHub
local CorrectPass = ""
local success, res = pcall(function() return game:HttpGet(PassUrl) end)
if success and res then
    res = res:gsub("%s+", "") -- Видаляємо зайві пробіли/ентери
    local data = {}
    for num in string.gmatch(res, "[^,]+") do 
        local n = tonumber(num)
        if n then table.insert(data, n) end
    end
    if #data > 0 then
        local s = "" for _,v in ipairs(data) do s = s .. string.char(v) end
        CorrectPass = s
    else
        CorrectPass = res -- Якщо в файлі просто текст
    end
else
    CorrectPass = "ERROR_LOAD"
end

local IsUnlocked = false
local MainFont = Enum.Font.GothamBold 
local LogoFont = Enum.Font.GothamBlack 

pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)
if not ScreenGui.Parent then ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") end

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.2, 0)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.BackgroundTransparency = 0.1
Frame.Active, Frame.Draggable = true, true
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)
local stroke = Instance.new("UIStroke", Frame)
stroke.Color = Color3.new(1, 1, 1)
stroke.Thickness = 1.7
stroke.Transparency = 0.2

CreditLabel.Parent = Frame
CreditLabel.Size = UDim2.new(0, 200, 0, 30)
CreditLabel.Position = UDim2.new(0, 0, 0, -35)
CreditLabel.BackgroundTransparency = 1
CreditLabel.Text = "By ZEFF"
CreditLabel.Font = LogoFont
CreditLabel.TextSize = 28 
CreditLabel.TextStrokeTransparency = 0.3

VersionLabel.Parent = Frame
VersionLabel.Size = UDim2.new(0, 40, 0, 20)
VersionLabel.Position = UDim2.new(1, -45, 1, -22)
VersionLabel.BackgroundTransparency = 1
VersionLabel.Text = "1.5"
VersionLabel.Font = MainFont
VersionLabel.TextSize = 14
VersionLabel.TextXAlignment = Enum.TextXAlignment.Right

task.spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            local color = Color3.fromHSV(i, 0.8, 1)
            stroke.Color = color
            CreditLabel.TextColor3 = color
            VersionLabel.TextColor3 = color
            task.wait(0.02)
        end
    end
end)

local function ApplyStyle(el, isLabel)
    Instance.new("UICorner", el).CornerRadius = UDim.new(0, 6)
    el.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    el.TextColor3 = Color3.new(1, 1, 1)
    el.Font = MainFont
    if isLabel then
        el.BackgroundTransparency = 1
        el.TextSize = 10
        el.TextColor3 = Color3.fromRGB(200, 200, 200)
        el.TextXAlignment = Enum.TextXAlignment.Left
    else
        el.TextSize = 14
    end
end

PassInput.Parent = Frame
PassInput.Size = UDim2.new(0, 170, 0, 30)
PassInput.Position = UDim2.new(0, 15, 0, 15)
PassInput.PlaceholderText = "ENTER PASS"
PassInput.Text = "" 
ApplyStyle(PassInput)

LoginButton.Parent = Frame
LoginButton.Size = UDim2.new(0, 170, 0, 30)
LoginButton.Position = UDim2.new(0, 15, 0, 55)
LoginButton.Text = "ACCESS"
ApplyStyle(LoginButton)
LoginButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

local inputFields = {
    {SpeedText, SpeedInput, "RUN SPEED:"},
    {FlyText, FlyInput, "FLY SPEED:"},
    {BrightText, BrightInput, "BRIGHTNESS %:"}
}

for i, v in ipairs(inputFields) do
    local label, input, txt = v[1], v[2], v[3]
    label.Parent = Frame
    label.Text = txt
    label.Size = UDim2.new(0, 170, 0, 15)
    label.Position = UDim2.new(0, 18, 0, (i-1)*55 + 10)
    ApplyStyle(label, true)
    input.Parent = Frame
    input.Size = UDim2.new(0, 170, 0, 30)
    input.Position = UDim2.new(0, 15, 0, (i-1)*55 + 25)
    ApplyStyle(input)
    label.Visible, input.Visible = false, false
end

SpeedInput.Text = "1.5"; FlyInput.Text = "2.0"; BrightInput.Text = "100"

SetButton.Parent = Frame
SetButton.Size = UDim2.new(0, 170, 0, 30)
SetButton.Position = UDim2.new(0, 15, 0, 175)
SetButton.Text = "CLOSE (X)"
ApplyStyle(SetButton)
SetButton.BackgroundColor3 = Color3.fromRGB(80, 25, 25)
SetButton.Visible = false

InfoLabel.Parent = Frame
InfoLabel.Size = UDim2.new(0, 170, 0, 45)
InfoLabel.Position = UDim2.new(0, 15, 0, 210)
InfoLabel.BackgroundTransparency = 1
InfoLabel.Text = "Z-Speed | N-Noclip | Y-Fly\nK-Cola | Space-Bhop | T-FakeSpeedometer"
InfoLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
InfoLabel.TextSize = 11
InfoLabel.Font = MainFont
InfoLabel.Visible = false

local speeding, holdingSpace, noclip, flying, bright_enabled = false, false, false, false, false
local bv, flyGyro, flyVel = nil, nil, nil
local UIS, VIM, Lighting, RunService = game:GetService("UserInputService"), game:GetService("VirtualInputManager"), game:GetService("Lighting"), game:GetService("RunService")
local def_br, def_ct, def_amb, def_oamb = Lighting.Brightness, Lighting.ClockTime, Lighting.Ambient, Lighting.OutdoorAmbient

local function resetCollision()
    local char = game.Players.LocalPlayer.Character
    if char then
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end

LoginButton.MouseButton1Click:Connect(function()
    if PassInput.Text == CorrectPass then
        IsUnlocked = true
        PassInput.Visible, LoginButton.Visible = false, false
        for _, v in ipairs(inputFields) do v[1].Visible, v[2].Visible = true, true end
        SetButton.Visible, InfoLabel.Visible = true, true
        Frame.Size = UDim2.new(0, 200, 0, 270)
    else
        PassInput.Text = ""
        PassInput.PlaceholderText = "WRONG!"
    end
end)

RunService.Stepped:Connect(function()
    if not IsUnlocked then return end
    local char = game.Players.LocalPlayer.Character
    if char and (noclip or flying) then
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
    end
end)

RunService.Heartbeat:Connect(function()
    if not IsUnlocked then return end
    local char = game.Players.LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChild("Humanoid")
    if char and root and hum and hum.Health > 1 then
        if holdingSpace and hum.FloorMaterial ~= Enum.Material.Air then
            hum:ChangeState(Enum.HumanoidStateType.Jumping)
            root.Velocity = Vector3.new(root.Velocity.X, 16, root.Velocity.Z)
        end
        if noclip and hum.MoveDirection.Magnitude > 0 then
            root.CFrame = root.CFrame + (hum.MoveDirection * 0.4)
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
            if flyGyro then flyGyro:Destroy() flyGyro = nil end
            if flyVel then flyVel:Destroy() flyVel = nil end
            hum.PlatformStand = false
            if speeding and hum.MoveDirection.Magnitude > 0 then
                if not bv or bv.Parent ~= root then
                    if bv then bv:Destroy() end
                    bv = Instance.new("BodyVelocity", root);
                    bv.MaxForce = Vector3.new(5e5, 0, 5e5) 
                end
                bv.Velocity = hum.MoveDirection * ((tonumber(SpeedInput.Text) or 1.5) * 65)
            elseif bv then bv:Destroy() bv = nil end
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
    if i.KeyCode == Enum.KeyCode.B then 
        bright_enabled = not bright_enabled
        if bright_enabled then 
            Lighting.Brightness = 3
            Lighting.ClockTime = 14
            Lighting.FogEnd = 1e5
        else 
            Lighting.Brightness = def_br
            Lighting.ClockTime = def_ct
            Lighting.FogEnd = 1000 
        end
    end
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
-- === CUSTOM SPEEDOMETER (TOGGLE VERSION: KEY "T") ===

local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Переменная состояния (изначально ВЫКЛЮЧЕНО)
local isFakeSpeedEnabled = false

-- 1. Создаем GUI (изначально делаем его невидимым)
local gui = Instance.new("ScreenGui")
gui.Name = "CustomSpeedUI"
pcall(function() gui.Parent = game:GetService("CoreGui") end)
if not gui.Parent then gui.Parent = player:WaitForChild("PlayerGui") end

local speedLabel = Instance.new("TextLabel")
speedLabel.Parent = gui
speedLabel.Name = "MyCustomLabel"
speedLabel.Visible = false -- Скрыто при старте

-- ТВОИ НАСТРОЙКИ (Позиция 225, Высота -95)
speedLabel.Position = UDim2.new(0, 227, 1, -92) 
speedLabel.Size = UDim2.new(0, 100, 0, 30)
speedLabel.BackgroundTransparency = 1 
speedLabel.TextColor3 = Color3.fromRGB(227, 175, 44)
speedLabel.Font = Enum.Font.GothamBold
speedLabel.TextSize = 21
speedLabel.TextStrokeTransparency = 1
local stroke = Instance.new("UIStroke")
stroke.Parent = speedLabel
stroke.Color = Color3.fromRGB(0, 0, 0) -- Черный цвет
stroke.Transparency = 0.5
stroke.Thickness = 1.8   -- Чем больше число, тем жирнее обводка (попробуй 3 или 4)

stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual -- Применять к тексту
speedLabel.TextXAlignment = Enum.TextXAlignment.Left

-- 2. Логика отображения скорости
RunService.RenderStepped:Connect(function()
    if not isFakeSpeedEnabled then return end
    
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        local realSpeed = char.HumanoidRootPart.Velocity.Magnitude
        local multiplier = (typeof(SpeedInput) == "Instance" and tonumber(SpeedInput.Text)) or 1.5
        local fakeSpeed = realSpeed * multiplier
        local roundedSpeed = math.floor(fakeSpeed * 10 + 0.5) / 10
        
        if roundedSpeed % 1 == 0 or roundedSpeed < 0.1 then
            speedLabel.Text = string.format("%d", roundedSpeed)
        else
            speedLabel.Text = string.format("%.1f", roundedSpeed)
        end
    end
end)

-- 3. Переключатель на кнопку "T"
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    -- Если ты пишешь в чат или вводишь пароль в поле (TextBox), скрипт не сработает
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.T then
        isFakeSpeedEnabled = not isFakeSpeedEnabled
        speedLabel.Visible = isFakeSpeedEnabled
    end
end)

-- 4. Умное скрытие оригинала
RunService.Heartbeat:Connect(function()
    local playerGui = player:FindFirstChild("PlayerGui")
    if playerGui then
        for _, v in pairs(playerGui:GetDescendants()) do
            if v:IsA("TextLabel") and v.Name ~= "MyCustomLabel" then
                -- Ищем лейбл скорости
                if string.match(v.Text, "^%d+$") 
                and v.AbsolutePosition.X > 100 
                and v.AbsolutePosition.Y > (workspace.CurrentCamera.ViewportSize.Y - 150) then
                    
                    if isFakeSpeedEnabled then
                        v.Visible = false
                    else
                        v.Visible = true
                    end
                end -- закрывает if string.match
            end -- закрывает if v:IsA
        end -- закрывает for
    end -- закрывает if playerGui
end) -- закрывает Connect
end
