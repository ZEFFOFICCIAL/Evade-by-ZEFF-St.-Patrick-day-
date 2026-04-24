local v0 = "https://raw.githubusercontent.com/ZEFFOFICCIAL/Evade-by-ZEFF-St.-Patrick-day-/refs/heads/main/Pass.txt";
local v1 = v0 .. "?t=" .. tostring(math.random(1, 1000000));
local v2 = Instance.new("ScreenGui");
local v2 = Instance.new("ScreenGui");
local v3 = Instance.new("Frame");
local v4 = Instance.new("TextBox");
local v5 = Instance.new("TextBox");
local v6 = Instance.new("TextBox");
local v7 = Instance.new("TextButton");
local v8 = Instance.new("TextLabel");
local v9 = Instance.new("TextBox");
local v10 = Instance.new("TextButton");
local v11 = Instance.new("TextLabel");
local v12 = Instance.new("TextLabel");
local v13 = Instance.new("TextLabel");
local v14 = Instance.new("TextLabel");
local v15 = Instance.new("TextLabel");
local v16 = "";
local v17, v18 = pcall(function()
	return game:HttpGet(v1);
end);
if (v17 and v18) then
	v18 = v18:gsub("%s+", "");
	local v155 = {};
	for v158 in string.gmatch(v18, "[^,]+") do
		local v159 = tonumber(v158);
		if v159 then
			table.insert(v155, v159);
		end
	end
	if ((#v155 > 0) or (4593 <= 2672)) then
		local v184 = "";
		for v195, v196 in ipairs(v155) do
			v184 = v184 .. string.char(v196);
		end
		v16 = v184;
	else
		v16 = v18;
	end
else
	v16 = "ERROR_LOAD";
end
local v19 = false;
local v20 = Enum.Font.GothamBold;
local v21 = Enum.Font.GothamBlack;
pcall(function()
	v2.Parent = game:GetService("CoreGui");
end);
if (not v2.Parent or (1168 > 3156)) then
	v2.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui");
end
v3.Parent = v2;
v3.Size = UDim2.new(0, 200, 0, 100);
v3.Position = UDim2.new(0.5, -100, 0.2, 0);
v3.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
v3.BackgroundTransparency = 0.1;
v3.Active, v3.Draggable = true, true;
Instance.new("UICorner", v3).CornerRadius = UDim.new(0, 12);
local v30 = Instance.new("UIStroke", v3);
v30.Color = Color3.new(1, 1, 1);
v30.Thickness = 1.7;
v30.Transparency = 0.2;
v11.Parent = v3;
v11.Size = UDim2.new(0, 200, 0, 30);
v11.Position = UDim2.new(0, 0, 0, -35);
v11.BackgroundTransparency = 1;
v11.Text = "By ZEFF";
v11.Font = v21;
v11.TextSize = 28;
v11.TextStrokeTransparency = 0.3;
v12.Parent = v3;
v12.Size = UDim2.new(0, 40, 0, 20);
v12.Position = UDim2.new(1, -45, 1, -22);
v12.BackgroundTransparency = 1;
v12.Text = "1.5";
v12.Font = v20;
v12.TextSize = 14;
v12.TextXAlignment = Enum.TextXAlignment.Right;
task.spawn(function()
	while true do
		for v160 = 0, 1, 0.01 do
			local v161 = Color3.fromHSV(v160, 0.8, 1);
			v30.Color = v161;
			v11.TextColor3 = v161;
			v12.TextColor3 = v161;
			task.wait(0.02);
		end
	end
end);
local function v51(v121, v122)
	Instance.new("UICorner", v121).CornerRadius = UDim.new(0, 6);
	v121.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	v121.TextColor3 = Color3.new(1, 1, 1);
	v121.Font = v20;
	if v122 then
		v121.BackgroundTransparency = 1;
		v121.TextSize = 10;
		v121.TextColor3 = Color3.fromRGB(200, 200, 200);
		v121.TextXAlignment = Enum.TextXAlignment.Left;
	else
		v121.TextSize = 14;
	end
end
v9.Parent = v3;
v9.Size = UDim2.new(0, 170, 0, 30);
v9.Position = UDim2.new(0, 15, 0, 15);
v9.PlaceholderText = "ENTER PASS";
v9.Text = "";
v51(v9);
v10.Parent = v3;
v10.Size = UDim2.new(0, 170, 0, 30);
v10.Position = UDim2.new(0, 15, 0, 55);
v10.Text = "ACCESS";
v51(v10);
v10.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
local v62 = {{v13,v4,"RUN SPEED:"},{v14,v5,"FLY SPEED:"},{v15,v6,"BRIGHTNESS %:"}};
for v127, v128 in ipairs(v62) do
	local v129, v130, v131 = v128[1], v128[2], v128[3];
	v129.Parent = v3;
	v129.Text = v131;
	v129.Size = UDim2.new(0, 170, 0, 15);
	v129.Position = UDim2.new(0, 18, 0, ((v127 - 1) * 55) + 10);
	v51(v129, true);
	v130.Parent = v3;
	v130.Size = UDim2.new(0, 170, 0, 30);
	v130.Position = UDim2.new(0, 15, 0, ((v127 - 1) * 55) + 25);
	v51(v130);
	v129.Visible, v130.Visible = false, false;
end
v4.Text = "1.5";
v5.Text = "2.0";
v6.Text = "100";
v7.Parent = v3;
v7.Size = UDim2.new(0, 170, 0, 30);
v7.Position = UDim2.new(0, 15, 0, 175);
v7.Text = "CLOSE (X)";
v51(v7);
v7.BackgroundColor3 = Color3.fromRGB(80, 25, 25);
v7.Visible = false;
v8.Parent = v3;
v8.Size = UDim2.new(0, 170, 0, 45);
v8.Position = UDim2.new(0, 15, 0, 210);
v8.BackgroundTransparency = 1;
v8.Text = "Z-Speed | N-Noclip | Y-Fly\nK-Cola | Space-Bhop | T-FakeSpeedometer";
v8.TextColor3 = Color3.fromRGB(180, 180, 180);
v8.TextSize = 11;
v8.Font = v20;
v8.Visible = false;
local v81, v82, v83, v84, v85 = false, false, false, false, false;
local v86, v87, v88 = nil, nil, nil;
local v89, v90, v91, v92 = game:GetService("UserInputService"), game:GetService("VirtualInputManager"), game:GetService("Lighting"), game:GetService("RunService");
local v93, v94, v95, v96 = v91.Brightness, v91.ClockTime, v91.Ambient, v91.OutdoorAmbient;
local function v97()
	local v141 = game.Players.LocalPlayer.Character;
	if (v141 or (572 > 4486)) then
		for v185, v186 in pairs(v141:GetDescendants()) do
			if v186:IsA("BasePart") then
				v186.CanCollide = true;
			end
		end
	end
end
v10.MouseButton1Click:Connect(function()
	if (v9.Text == v16) then
		v19 = true;
		v9.Visible, v10.Visible = false, false;
		for v187, v188 in ipairs(v62) do
			v188[1].Visible, v188[2].Visible = true, true;
		end
		v7.Visible, v8.Visible = true, true;
		v3.Size = UDim2.new(0, 200, 0, 270);
	else
		v9.Text = "";
		v9.PlaceholderText = "WRONG!";
	end
end);
v92.Stepped:Connect(function()
	if ((1404 == 1404) and not v19) then
		return;
	end
	local v142 = game.Players.LocalPlayer.Character;
	if (v142 and (v83 or v84)) then
		for v191, v192 in pairs(v142:GetDescendants()) do
			if (v192:IsA("BasePart") or (3748 < 2212)) then
				v192.CanCollide = false;
			end
		end
	end
end);
v92.Heartbeat:Connect(function()
	if not v19 then
		return;
	end
	local v143 = game.Players.LocalPlayer.Character;
	local v144 = v143 and v143:FindFirstChild("HumanoidRootPart");
	local v145 = v143 and v143:FindFirstChild("Humanoid");
	if (v143 and v144 and v145 and (v145.Health > 1)) then
		if ((v82 and (v145.FloorMaterial ~= Enum.Material.Air)) or (1180 == 2180)) then
			v145:ChangeState(Enum.HumanoidStateType.Jumping);
			v144.Velocity = Vector3.new(v144.Velocity.X, 16, v144.Velocity.Z);
		end
		if (v83 and (v145.MoveDirection.Magnitude > 0)) then
			v144.CFrame = v144.CFrame + (v145.MoveDirection * 0.4);
		end
		if ((4090 < 4653) and v84) then
			v145.PlatformStand = true;
			if (not v87 or (2652 < 196)) then
				v87 = Instance.new("BodyGyro", v144);
				v87.MaxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
				v88 = Instance.new("BodyVelocity", v144);
				v88.MaxForce = Vector3.new(8999999488, 8999999488, 8999999488);
			end
			local v200 = Vector3.new(0, 0, 0);
			local v201 = workspace.CurrentCamera.CFrame;
			if ((4135 < 4817) and v89:IsKeyDown(Enum.KeyCode.W)) then
				v200 = v200 + v201.LookVector;
			end
			if ((272 == 272) and v89:IsKeyDown(Enum.KeyCode.S)) then
				v200 = v200 - v201.LookVector;
			end
			if v89:IsKeyDown(Enum.KeyCode.D) then
				v200 = v200 + v201.RightVector;
			end
			if ((100 <= 3123) and v89:IsKeyDown(Enum.KeyCode.A)) then
				v200 = v200 - v201.RightVector;
			end
			v88.Velocity = ((v200.Magnitude > 0) and (v200.Unit * (tonumber(v5.Text) or 2) * 70)) or Vector3.new(0, 0, 0);
			v144.AssemblyLinearVelocity = Vector3.new(0, 0, 0);
		else
			if v87 then
				v87:Destroy();
				v87 = nil;
			end
			if v88 then
				v88:Destroy();
				v88 = nil;
			end
			v145.PlatformStand = false;
			if ((v81 and (v145.MoveDirection.Magnitude > 0)) or (1369 > 4987)) then
				if (not v86 or (v86.Parent ~= v144)) then
					if v86 then
						v86:Destroy();
					end
					v86 = Instance.new("BodyVelocity", v144);
					v86.MaxForce = Vector3.new(500000, 0, 500000);
				end
				v86.Velocity = v145.MoveDirection * (tonumber(v4.Text) or 1.5) * 65;
			elseif (v86 or (863 >= 4584)) then
				v86:Destroy();
				v86 = nil;
			end
		end
	end
end);
v89.InputBegan:Connect(function(v146, v147)
	if ((v146.KeyCode == Enum.KeyCode.Space) or (724 >= 1668)) then
		v82 = true;
	end
	if ((428 < 1804) and (v146.KeyCode == Enum.KeyCode.X)) then
		v3.Visible = not v3.Visible;
	end
	if (not v19 or v147) then
		return;
	end
	if (v146.KeyCode == Enum.KeyCode.Z) then
		v81 = not v81;
	end
	if ((v146.KeyCode == Enum.KeyCode.N) or (3325 > 4613)) then
		v83 = not v83;
		if (not v83 or (4950 <= 4553)) then
			v97();
		end
	end
	if ((2665 <= 3933) and (v146.KeyCode == Enum.KeyCode.Y)) then
		v84 = not v84;
		if not v84 then
			v97();
		end
	end
	if ((3273 == 3273) and (v146.KeyCode == Enum.KeyCode.B)) then
		v85 = not v85;
		if v85 then
			v91.Brightness = 3;
			v91.ClockTime = 14;
			v91.FogEnd = 100000;
		else
			v91.Brightness = v93;
			v91.ClockTime = v94;
			v91.FogEnd = 1000;
		end
	end
	if ((3824 > 409) and (v146.KeyCode == Enum.KeyCode.K)) then
		task.spawn(function()
			v90:SendKeyEvent(true, "Two", false, game);
			task.wait(0.01);
			v90:SendKeyEvent(false, "Two", false, game);
			task.wait(0.05);
			v90:SendMouseButtonEvent(0, 0, 0, true, game, 0);
			task.wait(0.01);
			v90:SendMouseButtonEvent(0, 0, 0, false, game, 0);
			task.wait(0.01);
			v90:SendKeyEvent(true, "One", false, game);
			task.wait(0.01);
			v90:SendKeyEvent(false, "One", false, game);
		end);
	end
end);
v89.InputEnded:Connect(function(v148)
	if (v148.KeyCode == Enum.KeyCode.Space) then
		v82 = false;
	end
end);
v7.MouseButton1Click:Connect(function()
	v3.Visible = false;
end);
local v98 = game:GetService("UserInputService");
local v99 = game.Players.LocalPlayer;
local v92 = game:GetService("RunService");
local v100 = false;
local v101 = Instance.new("ScreenGui");
v101.Name = "CustomSpeedUI";
pcall(function()
	v101.Parent = game:GetService("CoreGui");
end);
if not v101.Parent then
	v101.Parent = v99:WaitForChild("PlayerGui");
end
local v103 = Instance.new("TextLabel");
v103.Parent = v101;
v103.Name = "MyCustomLabel";
v103.Visible = false;
v103.Position = UDim2.new(0, 227, 1, -92);
v103.Size = UDim2.new(0, 100, 0, 30);
v103.BackgroundTransparency = 1;
v103.TextColor3 = Color3.fromRGB(227, 175, 44);
v103.Font = Enum.Font.GothamBold;
v103.TextSize = 21;
v103.TextStrokeTransparency = 1;
local v30 = Instance.new("UIStroke");
v30.Parent = v103;
v30.Color = Color3.fromRGB(0, 0, 0);
v30.Transparency = 0.5;
v30.Thickness = 1.8;
v30.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual;
v103.TextXAlignment = Enum.TextXAlignment.Left;
v92.RenderStepped:Connect(function()
	if ((2087 == 2087) and not v100) then
		return;
	end
	local v151 = v99.Character;
	if ((v151 and v151:FindFirstChild("HumanoidRootPart")) or (3404 > 4503)) then
		local v179 = v151.HumanoidRootPart.Velocity.Magnitude;
		local v180 = ((typeof(v4) == "Instance") and tonumber(v4.Text)) or 1.5;
		local v181 = v179 * v180;
		local v182 = math.floor((v181 * 10) + 0.5) / 10;
		if (((v182 % 1) == 0) or (v182 < 0.1) or (3506 <= 1309)) then
			v103.Text = string.format("%d", v182);
		else
			v103.Text = string.format("%.1f", v182);
		end
	end
end);
v98.InputBegan:Connect(function(v152, v153)
	if v153 then
		return;
	end
	if (v152.KeyCode == Enum.KeyCode.T) then
		v100 = not v100;
		v103.Visible = v100;
	end
end);
v92.Heartbeat:Connect(function()
	local v154 = v99:FindFirstChild("PlayerGui");
	if ((2955 == 2955) and v154) then
		for v193, v194 in pairs(v154:GetDescendants()) do
			if ((v194:IsA("TextLabel") and (v194.Name ~= "MyCustomLabel")) or (2903 == 1495)) then
				if (string.match(v194.Text, "^%d+$") and (v194.AbsolutePosition.X > 100) and (v194.AbsolutePosition.Y > (workspace.CurrentCamera.ViewportSize.Y - 150))) then
					if ((4546 >= 2275) and v100) then
						v194.Visible = false;
					else
						v194.Visible = true;
					end
				end
			end
		end
	end
end);
