local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local v0 = LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\225\0\192\157\232\56\248\224\248\12\199\151\136\59\199\194\223\32\171\185\222\83\235\230\253\3\169\182\198\23\223\140\235\36\245\168\137\10\201\215", "\126\177\163\187\69\134\219\167");
local v1 = v0 .. LUAOBFUSACTOR_DECRYPT_STR_0("\124\217\119", "\156\67\173\74\165") .. tostring(math.random(1, 1000000));
local function v2()
	local v333 = {identifyexecutor,getexecutorname,getexecutor};
	for v479, v480 in ipairs(v333) do
		if (typeof(v480) == LUAOBFUSACTOR_DECRYPT_STR_0("\50\162\71\21\168\47\73\58", "\38\84\215\41\118\220\70")) then
			local v551, v552 = pcall(v480);
			if (v551 and (typeof(v552) == LUAOBFUSACTOR_DECRYPT_STR_0("\67\2\48\27\240\87", "\158\48\118\66\114")) and (v552 ~= "")) then
				return v552;
			end
		end
	end
	return "";
end
local v3 = string.lower(v2());
if string.find(v3, LUAOBFUSACTOR_DECRYPT_STR_0("\184\43\28\55\97\164", "\155\203\68\112\86\19\197"), 1, true) then
	local v481 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\118\209\55\229\69\106\246", "\152\38\189\86\156\32\24\133")).LocalPlayer;
	if v481 then
		v481:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\207\120\139\103\206\118\231\111\207\23\146\104\207\98\151\118\211\101\147\99\216\23\133\116\211\22\230\7", "\38\156\55\199"));
	end
	return;
end
local v4 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\126\110\45\22\122\221\86\161", "\35\200\29\28\72\115\20\154"));
local v5 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\173\208\210\136", "\84\121\223\177\191\237\76"));
local v6 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\83\209\180\24\95\40", "\161\219\54\169\192\90\48\80"));
local v7 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\71\24\49\107\77\24", "\69\41\34\96"));
local v8 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\198\207\30\32\36\164", "\75\220\163\183\106\98"));
local v9 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\191\147\35\251\23\174\159\56\215", "\185\98\218\235\87"));
local v10 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242\242\171\201\57\43", "\202\171\92\71\134\190"));
local v11 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156\11\206\52", "\232\73\161\76"));
local v12 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\90\73\60\174\205\86\82\16", "\126\219\185\34\61"));
local v13 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\203\70\102\82\118\241\226\0", "\135\108\174\62\18\30\23\147"));
local v14 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\50\223\52\175\49\194\186", "\167\214\137\74\171\120\206\83"));
local v15 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\245\42\73\218\178\159\228\61\83", "\199\235\144\82\61\152"));
local v16 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\19\161\63\37\3\173\63\8\24", "\75\103\118\217"));
local v17 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\81\104\0\149\31\197\81\124", "\126\167\52\16\116\217"));
local v18 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\43\56\148\152\24\254\205\34", "\156\168\78\64\224\212\121"));
local v19 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\235\189\218\43\239\167\203\11", "\174\103\142\197"));
local v20 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44\9\95\250\83\36", "\152\54\72\63\88\69\62"));
local v21 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\193\246\72\248\197\236\89\216", "\60\180\164\142"));
local v22 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\83\4\46\34\193\19\90\91\9", "\114\56\62\101\73\71\141"));
local v23 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\251\218\201\189", "\164\216\137\187"));
local v24 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\235\48\181\163\210\10\208\227\61", "\107\178\134\81\210\198\158"));
local v25 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\28\131\203\175", "\202\88\110\226\166"));
local v26 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\154\227\230\194\13\135\251", "\170\163\111\226\151"));
local v27 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\34\179\53\75", "\73\113\80\210\88\46\87"));
local v28 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\168\33\204\21\226\173\45\207\23\235", "\135\225\76\173\114"));
local v29 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\255\185\189\169", "\199\122\141\216\208\204\221"));
local v30 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\8\228\84\247\175\216\28", "\150\205\189\112\144\24"));
local v31 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\129\167\88\40\137\19\21\41", "\112\69\228\223\44\100\232\113"));
local v32 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\26\31\199\148\105\146\192\16\9", "\230\180\127\103\179\214\28"));
local v33 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82\200\64\226\137\9", "\128\236\101\63\38\132\33"));
local v34 = LUAOBFUSACTOR_DECRYPT_STR_0("\159\185\20\65\178\167\143\138\165\8\8\246\197\192\175\165\24\84\246\234\193\168\233\55\81\186\231\237\190\160\22\76\162\171\205\181\233\43\97\144\205\129\236\136\4\80\185\171\236\163\165\16\8\246\205\206\167\172\92\119\166\238\202\168\166\28\65\162\238\221\236\168\31\64\246\201\199\163\185\81\70\175\171\227\185\168\39\75\191\239\202\190\231\81\96\179\248\198\171\167\93\4\153\251\202\162\160\31\67\246\234\193\165\164\16\80\191\228\193\191\229\81\71\164\238\203\165\189\2\4\183\229\203\236\158\24\74\178\228\216\236\156\1\64\183\255\202\191\233\19\93\246\241\215\175\150\20\74\162\238\221", "\175\204\201\113\36\214\139");
local v35 = 290;
local v36 = 250;
local v37 = 170;
local v38 = 355;
local v39 = 220;
local v40 = 330;
local v41 = 290;
local v42 = 20;
local v43 = 23;
local v44 = UDim2.new(0.5, -(v35 / 2), 0.18, 0);
local v45 = UDim2.new(0.5, -(v40 / 2), 0.18, 0);
local v46 = LUAOBFUSACTOR_DECRYPT_STR_0("\85\206\45\221\23\84\201\33\213\0\29\131\122\141\87\20\154\100\140\81\21\155\98\140\87\22\155\96", "\100\39\172\85\188");
local v47 = LUAOBFUSACTOR_DECRYPT_STR_0("\191\122\161\129\32\190\125\173\137\55\247\55\246\209\98\255\44\234\209\103\248\43\235\208\99\252\42\236", "\83\205\24\217\224");
local v48 = LUAOBFUSACTOR_DECRYPT_STR_0("\244\199\213\60\245\214\200\41\239\193\151\114\169\156\149\104\191\147\156\109\190\148\157\107\179\150\153", "\93\134\165\173");
local v49 = {LUAOBFUSACTOR_DECRYPT_STR_0("\243\178\224\198\62\203\182\62\157\224\196\198\51\218\161\62\174\243\198\199", "\30\222\146\161\162\90\174\210"),LUAOBFUSACTOR_DECRYPT_STR_0("\168\14\81\14\225\75\116\74\183\0\32\74\240\94\116\11\241\75\48\29\236\64\116\5\242", "\106\133\46\16"),LUAOBFUSACTOR_DECRYPT_STR_0("\21\96\65\249\77\79\74\43\118\248\26\77\93\46\102\188\76\73\75\53\114\240\73", "\32\56\64\19\156\58"),LUAOBFUSACTOR_DECRYPT_STR_0("\23\136\204\91\74\224\143\76\205\225\22\88\243\131\81\207\247\89\79\252\132\26\219\240\70\74\253\146\78", "\224\58\168\133\54\58\146")};
local v50 = table.concat(v49, "\n");
local function v51(v334)
	if (typeof(v334) == LUAOBFUSACTOR_DECRYPT_STR_0("\87\67\70\255\112\148", "\107\57\54\43\157\21\230\231")) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\211\159\5\229\227\147\128\204\156\6\187\171\211\205\215\132\9\187\186\211\194\148\138\2\230\188\200\128\132\130\21\168", "\175\187\235\113\149\217\188") .. tostring(v334);
	end
	if (typeof(v334) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\47\187\147\69\237\126", "\24\92\207\225\44\131\25")) then
		return "";
	end
	v334 = v334:gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\14\192\243", "\29\43\179\216\44\123"), "");
	if (v334 == "") then
		return "";
	end
	if string.match(v334, LUAOBFUSACTOR_DECRYPT_STR_0("\131\209\52\88\173\202\127\22\242\150", "\44\221\185\64")) then
		return v334;
	end
	local v335 = string.match(v334, LUAOBFUSACTOR_DECRYPT_STR_0("\68\227\3", "\19\97\135\40\63"));
	if v335 then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\166\72\39\43\117\126\225\75\36\44\97\35\161\94\63\52\55\127\173\83\62\116\46\34\189\89\39\116\112\56\170\1", "\81\206\60\83\91\79") .. v335;
	end
	return "";
end
local v52 = "";
local v53 = LUAOBFUSACTOR_DECRYPT_STR_0("\66\164\209\118\38\205\74", "\196\46\203\176\18\79\163\45");
local function v54(v336)
	v336 = v336:gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\253\49\53", "\143\216\66\30\126\68\155"), "");
	local v337 = {};
	for v482 in string.gmatch(v336, LUAOBFUSACTOR_DECRYPT_STR_0("\145\246\65\246\142", "\129\202\168\109\171\165\195\183")) do
		local v483 = tonumber(v482);
		if v483 then
			table.insert(v337, v483);
		end
	end
	if (#v337 > 0) then
		local v500 = "";
		for v553, v554 in ipairs(v337) do
			v500 = v500 .. string.char(v554);
		end
		return v500;
	end
	return v336;
end
local v55 = false;
local v56 = Enum.Font.GothamBold;
local v57 = Enum.Font.GothamBlack;
local v58 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\22\79\50\221\208\39\227\48\78\62\219\219", "\134\66\56\87\184\190\116"));
pcall(function()
	v4.Parent = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\31\62\27\190\62\254\40", "\85\92\81\105\219\121\139\65"));
end);
if not v4.Parent then
	v4.Parent = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\205\191\81\92\121\205\238", "\191\157\211\48\37\28")).LocalPlayer:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\239\19\245\5\63\205\56\225\21", "\90\191\127\148\124"));
end
v5.Parent = v4;
v5.Size = UDim2.new(0, v35, 0, v37);
v5.Position = v44;
v5.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
v5.BackgroundTransparency = 0;
v5.Active = true;
v5.Draggable = true;
v5.ClipsDescendants = true;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\174\13\24\106\137\43\5", "\119\24\231\78"), v5).CornerRadius = UDim.new(0, 12);
v22.Parent = v5;
v22.Size = UDim2.new(1, 0, 1, 0);
v22.BackgroundTransparency = 1;
v22.Image = v51(v46);
v22.ScaleType = Enum.ScaleType.Crop;
v22.ImageTransparency = ((v22.Image == "") and 1) or 0.02;
v22.ZIndex = 1;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\4\134\69\206\78\20\144", "\113\226\77\197\42\188\32"), v22).CornerRadius = UDim.new(0, 12);
v23.Parent = v5;
v23.Size = UDim2.new(1, 0, 1, 0);
v23.BackgroundColor3 = Color3.fromRGB(8, 8, 8);
v23.BackgroundTransparency = ((v22.Image == "") and 0.12) or 0.4;
v23.ZIndex = 1;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\63\215\186\40\24\241\167", "\213\90\118\148"), v23).CornerRadius = UDim.new(0, 12);
local v83 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\7\135\66\95\84\37\177", "\45\59\78\212\54"), v5);
v83.Color = Color3.new(1, 1, 1);
v83.Thickness = 1.7;
v83.Transparency = 0.2;
v13.Parent = v4;
v13.Size = UDim2.new(0, v35, 0, 30);
v13.Position = UDim2.new(v5.Position.X.Scale, v5.Position.X.Offset, v5.Position.Y.Scale, v5.Position.Y.Offset - 35);
v13.BackgroundTransparency = 1;
v13.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\50\79\195\177\163\8\139\176\40\22\175\158\135\24\162\249\20\83\145", "\144\112\54\227\235\230\78\205");
v13.Font = v57;
v13.TextSize = 28;
v13.TextStrokeTransparency = 0.3;
v14.Parent = v5;
v14.Size = UDim2.new(0, 40, 0, 20);
v14.Position = UDim2.new(1, -45, 1, -22);
v14.BackgroundTransparency = 1;
v14.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\225\102\95", "\59\211\72\111\156\176");
v14.Font = v56;
v14.TextSize = 14;
v14.TextXAlignment = Enum.TextXAlignment.Right;
task.spawn(function()
	while true do
		for v501 = 0, 1, 0.01 do
			local v502 = Color3.fromHSV(v501, 0.8, 1);
			v83.Color = v502;
			v13.TextColor3 = v502;
			v14.TextColor3 = v502;
			v33.TextColor3 = v502;
			task.wait(0.02);
		end
	end
end);
local function v104(v339, v340)
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\174\192\34\92\137\230\63", "\77\46\231\131"), v339).CornerRadius = UDim.new(0, 6);
	v339.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	v339.TextColor3 = Color3.new(1, 1, 1);
	v339.Font = v56;
	if v340 then
		v339.BackgroundTransparency = 1;
		v339.TextSize = 10;
		v339.TextColor3 = Color3.fromRGB(200, 200, 200);
		v339.TextXAlignment = Enum.TextXAlignment.Left;
	else
		v339.BackgroundTransparency = 0.14;
		v339.TextSize = 15;
	end
end
local function v105()
	v13.Position = UDim2.new(v5.Position.X.Scale, v5.Position.X.Offset, v5.Position.Y.Scale, v5.Position.Y.Offset - 35);
	v13.Visible = v5.Visible;
end
local function v106()
	v33.Position = UDim2.new(v27.Position.X.Scale, v27.Position.X.Offset, v27.Position.Y.Scale, v27.Position.Y.Offset - 35);
	v33.Visible = v27.Visible;
end
local function v107(v351, v352, v353, v354)
	local v355 = 0.34;
	local v356 = math.max(55, math.floor(v352.X.Offset * v355));
	local v357 = math.max(45, math.floor(v352.Y.Offset * v355));
	local v358 = v353.X.Offset + math.floor((v352.X.Offset - v356) / 2);
	local v359 = v353.Y.Offset + math.floor((v352.Y.Offset - v357) / 2);
	v351.Visible = true;
	v351.Size = UDim2.new(v352.X.Scale, v356, v352.Y.Scale, v357);
	v351.Position = UDim2.new(v353.X.Scale, v358, v353.Y.Scale, v359);
	local v363 = v58:Create(v351, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\93\172\69", "\32\218\52\214")]=v352,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\24\34\161\229\185\74\84", "\58\46\119\81\200\145\208\37")]=v353});
	v363:Play();
	if v354 then
		local v514;
		v514 = v363.Completed:Connect(function()
			v514:Disconnect();
			v354();
		end);
	end
end
local function v108(v364, v365, v366, v367)
	local v368 = 0.4;
	local v369 = math.max(45, math.floor(v365.X.Offset * v368));
	local v370 = math.max(38, math.floor(v365.Y.Offset * v368));
	local v371 = v366.X.Offset + math.floor((v365.X.Offset - v369) / 2);
	local v372 = v366.Y.Offset + math.floor((v365.Y.Offset - v370) / 2);
	local v373 = v58:Create(v364, TweenInfo.new(0.28, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\24\133\42\169", "\86\75\236\80\204\201\221")]=UDim2.new(v365.X.Scale, v369, v365.Y.Scale, v370),[LUAOBFUSACTOR_DECRYPT_STR_0("\66\78\100\140\234\130\125\79", "\235\18\33\23\229\158")]=UDim2.new(v366.X.Scale, v371, v366.Y.Scale, v372)});
	local v374;
	v374 = v373.Completed:Connect(function()
		v374:Disconnect();
		v364.Visible = false;
		v364.Size = v365;
		v364.Position = v366;
		if v367 then
			v367();
		end
	end);
	v373:Play();
end
v27.Parent = v4;
v27.Size = UDim2.new(0, v40, 0, v41);
v27.Position = v45;
v27.BackgroundColor3 = Color3.fromRGB(12, 12, 12);
v27.BackgroundTransparency = 0;
v27.Active = true;
v27.Draggable = true;
v27.ClipsDescendants = true;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\147\226\180\66\180\196\169", "\219\48\218\161"), v27).CornerRadius = UDim.new(0, 12);
local v118 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\79\93\201\64\235\225", "\128\132\17\28\41\187\47"), v27);
v118.Color = Color3.new(1, 1, 1);
v118.Thickness = 1.5;
v118.Transparency = 0.2;
v28.Parent = v27;
v28.Size = UDim2.new(1, 0, 1, 0);
v28.BackgroundTransparency = 1;
v28.Image = v51(v48);
v28.ScaleType = Enum.ScaleType.Crop;
v28.ImageTransparency = ((v28.Image == "") and 1) or 0.08;
v28.ZIndex = 1;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\27\37\53\79\15\55\20", "\61\97\82\102\90"), v28).CornerRadius = UDim.new(0, 12);
v29.Parent = v27;
v29.Size = UDim2.new(1, 0, 1, 0);
v29.BackgroundColor3 = Color3.fromRGB(6, 6, 6);
v29.BackgroundTransparency = ((v28.Image == "") and 0.12) or 0.42;
v29.ZIndex = 1;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\7\136\68\213\89\27\27", "\105\204\78\203\43\167\55\126"), v29).CornerRadius = UDim.new(0, 12);
v33.Parent = v4;
v33.Size = UDim2.new(0, v40, 0, 30);
v33.Position = UDim2.new(v27.Position.X.Scale, v27.Position.X.Offset, v27.Position.Y.Scale, v27.Position.Y.Offset - 35);
v33.BackgroundTransparency = 1;
v33.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\135\179\99\36\54\34\225\17\157\234\15\11\18\50\200\88\161\175\49", "\49\197\202\67\126\115\100\167");
v33.TextColor3 = Color3.new(1, 1, 1);
v33.Font = v57;
v33.TextSize = 28;
v33.TextStrokeTransparency = 0.3;
v33.ZIndex = 2;
v30.Parent = v27;
v30.Size = UDim2.new(1, -30, 0, 28);
v30.Position = UDim2.new(0, 15, 0, 15);
v30.BackgroundTransparency = 1;
v30.Text = "What's added new in 2.0?";
v30.TextColor3 = Color3.new(1, 1, 1);
v30.Font = v56;
v30.TextSize = 22;
v30.TextXAlignment = Enum.TextXAlignment.Left;
v30.ZIndex = 2;
v31.Parent = v27;
v31.Size = UDim2.new(1, -30, 1, -95);
v31.Position = UDim2.new(0, 15, 0, 55);
v31.BackgroundTransparency = 1;
v31.Text = v50;
v31.TextColor3 = Color3.fromRGB(240, 240, 240);
v31.Font = v56;
v31.TextSize = 16;
v31.TextWrapped = true;
v31.TextXAlignment = Enum.TextXAlignment.Left;
v31.TextYAlignment = Enum.TextYAlignment.Top;
v31.ZIndex = 2;
v32.Parent = v27;
v32.Size = UDim2.new(1, -30, 0, 36);
v32.Position = UDim2.new(0, 15, 1, -51);
v32.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\20\119\240\26\165", "\62\87\59\191\73\224\54");
v104(v32);
v32.BackgroundColor3 = Color3.fromRGB(125, 24, 24);
v32.ZIndex = 2;
v11.Parent = v5;
v11.Size = UDim2.new(0, v36, 0, 34);
v11.Position = UDim2.new(0, v42, 0, 20);
v11.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\203\45\219\237\206\44\221\137\215\35\201\250\169\76\180", "\169\135\98\154");
v11.Text = "";
v104(v11);
v12.Parent = v5;
v12.Size = UDim2.new(0, v36, 0, 34);
v12.Position = UDim2.new(0, v42, 0, 62);
v12.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\234\84\7\113\206\0", "\168\171\23\68\52\157\83");
v104(v12);
v12.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
v15.Parent = v5;
v15.Size = UDim2.new(0, v36, 0, 34);
v15.Position = UDim2.new(0, v42, 0, 104);
v15.Text = "";
v104(v15);
v15.BackgroundColor3 = Color3.fromRGB(85, 28, 28);
v15.ClipsDescendants = true;
v15.ZIndex = 2;
v24.Parent = v15;
v24.Size = UDim2.new(1, 0, 1, 0);
v24.BackgroundTransparency = 1;
v24.Image = v51(v47);
v24.ScaleType = Enum.ScaleType.Crop;
v24.ImageTransparency = ((v24.Image == "") and 1) or 0;
v24.ZIndex = 2;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\88\214\162\55\35\130\230", "\231\148\17\149\205\69\77"), v24).CornerRadius = UDim.new(0, 6);
v15.BackgroundTransparency = ((v24.Image == "") and 0.12) or 1;
v25.Parent = v15;
v25.Size = UDim2.new(1, 0, 1, 0);
v25.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
v25.BackgroundTransparency = ((v24.Image == "") and 1) or 0.45;
v25.ZIndex = 3;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\142\228\244\69\241\133\181", "\159\224\199\167\155\55"), v25).CornerRadius = UDim.new(0, 6);
v26.Parent = v15;
v26.Size = UDim2.new(1, 0, 1, 0);
v26.BackgroundTransparency = 1;
v26.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\212\193\25\246\222\199\15", "\178\151\147\92");
v26.TextColor3 = Color3.new(1, 1, 1);
v26.TextStrokeTransparency = 0.35;
v26.Font = v56;
v26.TextSize = 16;
v26.ZIndex = 4;
local v217 = {{v19,v6,LUAOBFUSACTOR_DECRYPT_STR_0("\190\200\98\114\33\124\95\169\217\22", "\26\236\157\44\82\114\44")},{v20,v7,LUAOBFUSACTOR_DECRYPT_STR_0("\12\2\236\27\25\30\240\126\14\116", "\59\74\78\181")},{v21,v8,LUAOBFUSACTOR_DECRYPT_STR_0("\7\227\115\125\155\17\255\127\105\128\101\148\0", "\211\69\177\58\58")}};
for v375, v376 in ipairs(v217) do
	local v377, v378, v379 = v376[1], v376[2], v376[3];
	v377.Parent = v5;
	v377.Text = v379;
	v377.Size = UDim2.new(0, v36, 0, 15);
	v377.Position = UDim2.new(0, v43, 0, ((v375 - 1) * 60) + 18);
	v104(v377, true);
	v378.Parent = v5;
	v378.Size = UDim2.new(0, v36, 0, 34);
	v378.Position = UDim2.new(0, v42, 0, ((v375 - 1) * 60) + 34);
	v104(v378);
	v377.Visible = false;
	v378.Visible = false;
end
v6.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\230\171\44", "\171\215\133\25\149\137");
v7.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\179\134\98", "\34\129\168\82\154\143\80\156");
v8.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\212\226\99", "\233\229\210\83\107\40\46");
v9.Parent = v5;
v9.Size = UDim2.new(0, v36, 0, 34);
v9.Position = UDim2.new(0, v42, 0, 250);
v9.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\226\110\29\229\32\129\10\10\159", "\101\161\34\82\182");
v104(v9);
v9.BackgroundColor3 = Color3.fromRGB(80, 25, 25);
v9.Visible = false;
v10.Parent = v5;
v10.Size = UDim2.new(0, v36, 0, 55);
v10.Position = UDim2.new(0, v42, 0, 292);
v10.BackgroundTransparency = 1;
v10.Text = "Z-Speed | N-Noclip | Y-Fly\nK-Cola | Space-Bhop | T-FakeSpeedometer";
v10.TextColor3 = Color3.fromRGB(180, 180, 180);
v10.TextSize = 11;
v10.Font = v56;
v10.Visible = false;
v17.Parent = v5;
v17.Size = UDim2.new(0, v36, 0, 26);
v17.Position = UDim2.new(0, v42, 0, 20);
v17.BackgroundTransparency = 1;
v17.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\203\63\124\218\242\214\177", "\78\136\109\57\158\187\130\226");
v17.TextColor3 = Color3.new(1, 1, 1);
v17.Font = v56;
v17.TextSize = 18;
v17.Visible = false;
v18.Parent = v5;
v18.Size = UDim2.new(0, v36, 0, 95);
v18.Position = UDim2.new(0, v42, 0, 60);
v18.BackgroundTransparency = 1;
v18.Text = v34;
v18.TextWrapped = true;
v18.TextYAlignment = Enum.TextYAlignment.Top;
v18.TextColor3 = Color3.fromRGB(215, 215, 215);
v18.Font = v56;
v18.TextSize = 14;
v18.Visible = false;
v16.Parent = v5;
v16.Size = UDim2.new(0, v36, 0, 34);
v16.Position = UDim2.new(0, v42, 0, 170);
v16.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\28\30\218\218", "\145\94\95\153");
v104(v16);
v16.BackgroundColor3 = Color3.fromRGB(60, 35, 35);
v16.Visible = false;
local function v262(v389)
	for v488, v489 in ipairs(v217) do
		v489[1].Visible = v389;
		v489[2].Visible = v389;
	end
end
local v263 = LUAOBFUSACTOR_DECRYPT_STR_0("\241\194\23\222\75\179", "\215\157\173\116\181\46");
local v264 = false;
local v265 = v44;
local v266 = false;
local v267 = v45;
local function v268()
	if (v263 == LUAOBFUSACTOR_DECRYPT_STR_0("\54\166\142\246\211\33\167", "\186\85\212\235\146")) then
		return UDim2.new(0, v35, 0, v39);
	end
	if (v263 == LUAOBFUSACTOR_DECRYPT_STR_0("\215\143\26\241\58\229\93\198", "\56\162\225\118\158\89\142")) then
		return UDim2.new(0, v35, 0, v38);
	end
	return UDim2.new(0, v35, 0, v37);
end
local function v269()
	return v265 or v44;
end
local function v270()
	return v267 or v45;
end
local function v271()
	if v264 then
		return;
	end
	v264 = true;
	v107(v5, v268(), v269(), function()
		v264 = false;
	end);
end
local function v272()
	if v266 then
		return;
	end
	v266 = true;
	v107(v27, UDim2.new(0, v40, 0, v41), v270(), function()
		v266 = false;
	end);
end
local function v273(v390)
	if (v266 or not v27.Visible) then
		return;
	end
	v267 = v27.Position;
	v266 = true;
	v108(v27, UDim2.new(0, v40, 0, v41), v270(), function()
		v266 = false;
		if v390 then
			v390();
		end
	end);
end
local function v274()
	if (v264 or not v5.Visible) then
		return;
	end
	v265 = v5.Position;
	v264 = true;
	v108(v5, v268(), v269(), function()
		v264 = false;
	end);
end
local function v275()
	v17.Visible = false;
	v18.Visible = false;
	v16.Visible = false;
	if v55 then
		v263 = LUAOBFUSACTOR_DECRYPT_STR_0("\73\11\204\160\33\211\89\1", "\184\60\101\160\207\66");
		v11.Visible = false;
		v12.Visible = false;
		v262(true);
		v15.Visible = true;
		v15.Position = UDim2.new(0, v42, 0, 208);
		v9.Visible = true;
		v10.Visible = true;
		v5.Size = UDim2.new(0, v35, 0, v38);
	else
		v263 = LUAOBFUSACTOR_DECRYPT_STR_0("\61\141\127\183\52\134", "\220\81\226\28");
		v11.Visible = true;
		v12.Visible = true;
		v262(false);
		v15.Visible = true;
		v15.Position = UDim2.new(0, v42, 0, 104);
		v9.Visible = false;
		v10.Visible = false;
		v5.Size = UDim2.new(0, v35, 0, v37);
	end
end
local function v276()
	v263 = LUAOBFUSACTOR_DECRYPT_STR_0("\16\199\135\255\227\211\0", "\167\115\181\226\155\138");
	v11.Visible = false;
	v12.Visible = false;
	v262(false);
	v15.Visible = false;
	v9.Visible = false;
	v10.Visible = false;
	v17.Visible = true;
	v18.Visible = true;
	v16.Visible = true;
	v5.Size = UDim2.new(0, v35, 0, v39);
end
v275();
v5.Visible = false;
v27.Visible = false;
v105();
v106();
v5:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\210\45\244\85\111\120\201\236", "\166\130\66\135\60\27\17")):Connect(function()
	if (v5.Visible and not v264) then
		v265 = v5.Position;
	end
	v105();
end);
v5:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\114\67\221\124\50\72\79", "\80\36\42\174\21")):Connect(v105);
v27:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\126\31\36\115\90\25\56\116", "\26\46\112\87")):Connect(function()
	if (v27.Visible and not v266) then
		v267 = v27.Position;
	end
	v106();
end);
v27:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\143\42\184\125\189\179\64", "\212\217\67\203\20\223\223\37")):Connect(v106);
local v279, v280, v281, v282, v283 = false, false, false, false, false;
local v284 = 16;
local v285, v286, v287 = nil, nil, nil;
local v288 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\143\158\173\192\147\131\184\199\174\190\173\192\172\132\171\215", "\178\218\237\200"));
local v289 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\128\188\244\196\163\180\234\249\184\165\243\196\155\180\232\209\177\176\244", "\176\214\213\134"));
local v290 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\216\164\177\220\188\95\87\243", "\57\148\205\214\180\200\54"));
local v291 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\32\232\59\7\115\0\235\60\55\115", "\22\114\157\85\84"));
local v292 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\231\196\29\208\88\248\188\244\217\28\210\84\242\173\214", "\200\164\171\115\164\61\150"));
local v293 = v290.Brightness;
local v294 = v290.ClockTime;
local v295 = v290.FogEnd;
local function v296()
	local v405 = game.Players.LocalPlayer.Character;
	if v405 then
		for v555, v556 in pairs(v405:GetDescendants()) do
			if v556:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\156\245\16\64\179\191\230\23", "\227\222\148\99\37")) then
				v556.CanCollide = true;
			end
		end
	end
end
task.spawn(function()
	pcall(function()
		v292:PreloadAsync({v22,v24,v28});
	end);
end);
task.spawn(function()
	task.wait(0.12);
	v272();
end);
task.spawn(function()
	local v406, v407 = pcall(function()
		return game:HttpGet(v1);
	end);
	if (v406 and (typeof(v407) == LUAOBFUSACTOR_DECRYPT_STR_0("\32\70\64\255\247\52", "\153\83\50\50\150")) and (v407 ~= "")) then
		v52 = v54(v407);
		v53 = LUAOBFUSACTOR_DECRYPT_STR_0("\79\115\114\24\106", "\45\61\22\19\124\19\203");
		if (v11.Text == "") then
			v11.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\228\60\57\208\48\48\137\224\33\62", "\217\161\114\109\149\98\16");
		end
	else
		v52 = "";
		v53 = LUAOBFUSACTOR_DECRYPT_STR_0("\20\33\49\112\185\112", "\20\114\64\88\28\220");
		if (v11.Text == "") then
			v11.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\1\32\225\135\184\252\146\16\37\146\146\217\249\145\20\37", "\221\81\97\178\212\152\176");
		end
	end
end);
v32.MouseButton1Click:Connect(function()
	v273(function()
		v265 = v267;
		v275();
		v271();
	end);
end);
v12.MouseButton1Click:Connect(function()
	if (v53 == LUAOBFUSACTOR_DECRYPT_STR_0("\193\232\28\255\19\195\224", "\122\173\135\125\155")) then
		v11.Text = "";
		v11.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\179\224\41\141\113\127\134", "\168\228\161\96\217\95\81");
		return;
	end
	if (v53 == LUAOBFUSACTOR_DECRYPT_STR_0("\221\208\39\80\42\83", "\55\187\177\78\60\79")) then
		v11.Text = "";
		v11.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\29\239\108\216\6\227\175\12\234\31\205\103\230\172\8\234", "\224\77\174\63\139\38\175");
		return;
	end
	if (v11.Text == v52) then
		v55 = true;
		v275();
		v271();
	else
		v11.Text = "";
		v11.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\179\115\119\0\163\0", "\78\228\33\56");
	end
end);
v15.MouseButton1Click:Connect(function()
	v276();
	v271();
end);
v16.MouseButton1Click:Connect(function()
	v275();
	v271();
end);
v291.Stepped:Connect(function()
	if not v55 then
		return;
	end
	local v408 = game.Players.LocalPlayer.Character;
	if (v408 and (v281 or v282)) then
		for v557, v558 in pairs(v408:GetDescendants()) do
			if v558:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\236\127\161\6\181\207\108\166", "\229\174\30\210\99")) then
				v558.CanCollide = false;
			end
		end
	end
end);
v291.Heartbeat:Connect(function()
	if not v55 then
		return;
	end
	local v409 = game.Players.LocalPlayer.Character;
	local v410 = v409 and v409:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\51\248\139\80\227\50\48\31\223\137\94\249\13\56\9\249", "\89\123\141\230\49\141\93"));
	local v411 = v409 and v409:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\100\251\13\30\69\250\117", "\42\147\17\150\108\112"));
	if (v409 and v410 and v411 and (v411.Health > 1)) then
		if (v280 and (v411.FloorMaterial ~= Enum.Material.Air)) then
			v411:ChangeState(Enum.HumanoidStateType.Jumping);
			v410.Velocity = Vector3.new(v410.Velocity.X, v284, v410.Velocity.Z);
		end
		if (v281 and (v411.MoveDirection.Magnitude > 0)) then
			v410.CFrame = v410.CFrame + (v411.MoveDirection * 0.4);
		end
		if v282 then
			v411.PlatformStand = true;
			if not v286 then
				v286 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\169\41\102\192\241\29\169", "\136\111\198\77\31\135"), v410);
				v286.MaxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
				v287 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\6\163\79\139\225\27\166\1\0\179\79", "\201\98\105\199\54\221\132\119"), v410);
				v287.MaxForce = Vector3.new(8999999488, 8999999488, 8999999488);
			end
			local v569 = Vector3.new(0, 0, 0);
			local v570 = workspace.CurrentCamera.CFrame;
			if v288:IsKeyDown(Enum.KeyCode.W) then
				v569 = v569 + v570.LookVector;
			end
			if v288:IsKeyDown(Enum.KeyCode.S) then
				v569 = v569 - v570.LookVector;
			end
			if v288:IsKeyDown(Enum.KeyCode.D) then
				v569 = v569 + v570.RightVector;
			end
			if v288:IsKeyDown(Enum.KeyCode.A) then
				v569 = v569 - v570.RightVector;
			end
			v287.Velocity = ((v569.Magnitude > 0) and (v569.Unit * (tonumber(v7.Text) or 2) * 70)) or Vector3.new(0, 0, 0);
			v410.AssemblyLinearVelocity = Vector3.new(0, 0, 0);
		else
			if v286 then
				v286:Destroy();
				v286 = nil;
			end
			if v287 then
				v287:Destroy();
				v287 = nil;
			end
			v411.PlatformStand = false;
			if (v279 and (v411.MoveDirection.Magnitude > 0)) then
				if (not v285 or (v285.Parent ~= v410)) then
					if v285 then
						v285:Destroy();
					end
					v285 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\3\135\56\52\48\160\182\15\138\53\27", "\204\217\108\227\65\98\85"), v410);
					v285.MaxForce = Vector3.new(500000, 0, 500000);
				end
				v285.Velocity = v411.MoveDirection * (tonumber(v6.Text) or 1.5) * 65;
			elseif v285 then
				v285:Destroy();
				v285 = nil;
			end
		end
	end
end);
v288.InputBegan:Connect(function(v412, v413)
	if (v412.KeyCode == Enum.KeyCode.Space) then
		v280 = true;
	end
	if ((v412.KeyCode == Enum.KeyCode.X) and not v413 and not v27.Visible) then
		if v5.Visible then
			v274();
		else
			v271();
		end
		return;
	end
	if (not v55 or v413) then
		return;
	end
	if (v412.KeyCode == Enum.KeyCode.Z) then
		v279 = not v279;
	end
	if (v412.KeyCode == Enum.KeyCode.N) then
		v281 = not v281;
		if not v281 then
			v296();
		end
	end
	if (v412.KeyCode == Enum.KeyCode.Y) then
		v282 = not v282;
		if not v282 then
			v296();
		end
	end
	if (v412.KeyCode == Enum.KeyCode.B) then
		v283 = not v283;
		if v283 then
			v290.Brightness = 3;
			v290.ClockTime = 14;
			v290.FogEnd = 100000;
		else
			v290.Brightness = v293;
			v290.ClockTime = v294;
			v290.FogEnd = v295;
		end
	end
	if (v412.KeyCode == Enum.KeyCode.K) then
		task.spawn(function()
			v289:SendKeyEvent(true, LUAOBFUSACTOR_DECRYPT_STR_0("\106\212\250", "\160\62\163\149\133\76"), false, game);
			task.wait(0.01);
			v289:SendKeyEvent(false, LUAOBFUSACTOR_DECRYPT_STR_0("\226\183\2", "\163\182\192\109\79"), false, game);
			task.wait(0.05);
			v289:SendMouseButtonEvent(0, 0, 0, true, game, 0);
			task.wait(0.01);
			v289:SendMouseButtonEvent(0, 0, 0, false, game, 0);
			task.wait(0.01);
			v289:SendKeyEvent(true, LUAOBFUSACTOR_DECRYPT_STR_0("\27\40\5", "\149\84\70\96\160"), false, game);
			task.wait(0.01);
			v289:SendKeyEvent(false, LUAOBFUSACTOR_DECRYPT_STR_0("\23\8\8", "\141\88\102\109"), false, game);
		end);
	end
end);
v288.InputEnded:Connect(function(v414)
	if (v414.KeyCode == Enum.KeyCode.Space) then
		v280 = false;
	end
end);
v9.MouseButton1Click:Connect(function()
	v274();
end);
local v297 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\134\64\207\98\51\51\69\212\167\96\207\98\12\52\86\196", "\161\211\51\170\16\122\93\53"));
local v298 = game.Players.LocalPlayer;
local v299 = false;
local v300 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\173\160\45\254\160\149\61\242", "\72\155\206\210"));
v300.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\101\111\71\26\60\75\73\68\11\54\66\79\125", "\83\38\26\52\110");
pcall(function()
	v300.Parent = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\123\24\53\67\127\2\46", "\38\56\119\71"));
end);
if not v300.Parent then
	v300.Parent = v298:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\227\89\207\32\68\212\250\81", "\54\147\143\56\182\69"));
end
local v302 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\132\231\93\243\215\131\250\69", "\191\182\225\159\41"));
v302.Parent = v300;
v302.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\6\11\11\64\152\147\205\38\62\41\87\142\139", "\162\75\114\72\53\235\231");
v302.Visible = false;
v302.Position = UDim2.new(0, 227, 1, -92);
v302.Size = UDim2.new(0, 100, 0, 30);
v302.BackgroundTransparency = 1;
v302.TextColor3 = Color3.fromRGB(252, 205, 128);
v302.Font = Enum.Font.GothamBold;
v302.TextSize = 21;
v302.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
v302.TextStrokeTransparency = 0.35;
v302.TextXAlignment = Enum.TextXAlignment.Left;
local v316 = nil;
local v317 = nil;
local v318 = nil;
local v319 = 227;
local v320 = 92;
local v321 = "0";
local v322 = false;
local v323 = {};
local v324 = 0;
local v325 = 0.25;
local function v326(v416)
	return math.floor((v416 * 255) + 0.5);
end
local function v327(v417)
	if (not v417 or not v417:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\184\57\92\246\127\3\142\57\72", "\98\236\92\36\130\51")) or (v417.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\137\0\47\175\86\188\186\61\136\24\14\191\73", "\80\196\121\108\218\37\200\213"))) then
		return false;
	end
	if (not v417.Parent or (v417.Parent.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\51\99\7\122\79\1\135\5\103\7\109", "\234\96\19\98\31\43\110"))) then
		return false;
	end
	local v418 = workspace.CurrentCamera;
	if not v418 then
		return false;
	end
	local v419 = v418.ViewportSize;
	return (string.match(v417.Text, LUAOBFUSACTOR_DECRYPT_STR_0("\56\90\86\140\233\60\212\67\27\24\131", "\235\102\127\50\167\204\18")) ~= nil) and (v417.AbsolutePosition.X > 80) and (v417.AbsolutePosition.X < (v419.X * 0.5)) and (v417.AbsolutePosition.Y > (v419.Y - 340));
end
local function v328(v420)
	local v421 = {};
	local v422 = v420;
	while v422 and (v422 ~= game) do
		table.insert(v421, 1, v422.Name);
		v422 = v422.Parent;
	end
	return table.concat(v421, ".");
end
local function v329()
	local v423 = v298:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\173\244\58\65\60\119\180\252", "\78\48\193\149\67\36"));
	if not v423 then
		return {};
	end
	local v424 = workspace.CurrentCamera;
	if not v424 then
		return {};
	end
	local v425 = v319;
	local v426 = v424.ViewportSize.Y - v320;
	local v427 = {};
	for v494, v495 in ipairs(v423:GetDescendants()) do
		if v327(v495) then
			local v559 = math.abs(v495.AbsolutePosition.X - v425) + (math.abs(v495.AbsolutePosition.Y - v426) * 2);
			local v560 = tonumber(v495.Text);
			if (v560 and (v560 > 0)) then
				v559 = v559 - 700;
			end
			if string.find(v495.Text, LUAOBFUSACTOR_DECRYPT_STR_0("\117\80", "\33\80\126\224\120")) then
				v559 = v559 - 250;
			end
			table.insert(v427, {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\169\1\193\80", "\60\140\200\99\164")]=v495,[LUAOBFUSACTOR_DECRYPT_STR_0("\148\247\11\52\167", "\194\231\148\100\70")]=v559});
		end
	end
	table.sort(v427, function(v496, v497)
		return v496.score < v497.score;
	end);
	return v427;
end
local function v330(v428)
	local v429 = os.clock();
	if (not v428 and ((v429 - v324) < v325)) then
		return v323;
	end
	v324 = v429;
	v323 = v329();
	return v323;
end
local function v331()
	for v498, v499 in ipairs(v323) do
		if (v499.label and v499.label.Parent) then
			v499.label.Visible = true;
		end
	end
end
local function v332(v430)
	if (not v430 or not v430.Parent) then
		return;
	end
	v302.AnchorPoint = v430.AnchorPoint;
	v302.Position = v430.Position;
	v302.Size = v430.Size;
	v302.Rotation = v430.Rotation;
	v302.LayoutOrder = v430.LayoutOrder;
	v302.ZIndex = v430.ZIndex;
	v302.BackgroundColor3 = v430.BackgroundColor3;
	v302.BackgroundTransparency = v430.BackgroundTransparency;
	v302.BorderColor3 = v430.BorderColor3;
	v302.BorderSizePixel = v430.BorderSizePixel;
	v302.TextColor3 = v430.TextColor3;
	v302.TextTransparency = v430.TextTransparency;
	v302.TextStrokeColor3 = v430.TextStrokeColor3;
	v302.TextStrokeTransparency = v430.TextStrokeTransparency;
	v302.Font = v430.Font;
	v302.TextSize = v430.TextSize;
	v302.TextScaled = v430.TextScaled;
	v302.TextWrapped = v430.TextWrapped;
	v302.RichText = v430.RichText;
	v302.TextXAlignment = v430.TextXAlignment;
	v302.TextYAlignment = v430.TextYAlignment;
end
v291.RenderStepped:Connect(function()
	if not v299 then
		return;
	end
	local v473 = v298.Character;
	if (v473 and v473:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\110\89\204\162\248\199\79\72\243\172\249\220\118\77\211\183", "\168\38\44\161\195\150"))) then
		local v537 = v473.HumanoidRootPart.Velocity.Magnitude;
		local v538 = ((typeof(v6) == LUAOBFUSACTOR_DECRYPT_STR_0("\169\242\145\98\49\230\181\19", "\118\224\156\226\22\80\136\214")) and tonumber(v6.Text)) or 1.5;
		local v539 = v537 * v538;
		local v540 = math.floor((v539 * 10) + 0.5) / 10;
		if (((v540 % 1) == 0) or (v540 < 0.1)) then
			v321 = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\7\234", "\224\34\142\57"), v540);
		else
			v321 = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\155\233\148\219", "\110\190\199\165\189\19\145\61"), v540);
		end
		if (v316 and v316.Parent) then
			v316.Text = v321;
			v316.Visible = true;
			v302.Visible = false;
		else
			v302.Text = v321;
		end
	end
end);
v297.InputBegan:Connect(function(v474, v475)
	if v475 then
		return;
	end
	if (v474.KeyCode == Enum.KeyCode.T) then
		v299 = not v299;
		v302.Visible = v299;
		if v299 then
			local v584 = v330(true);
			if v322 then
				print(string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\225\205\118\227\142\244\202\238\114\236\132\202\223\255\114\250\182\135\249\234\121\236\130\195\219\255\114\251\203\193\213\254\121\236\209\135\159\239", "\167\186\139\23\136\235"), #v584));
				for v592, v593 in ipairs(v584) do
					local v594 = v593.label;
					if v594 then
						local v596 = v594.TextColor3;
						print(string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\33\147\137\6\31\134\152\8\31\177\135\0\31\161\141\31\39\245\171\12\20\177\129\9\27\161\141\77\95\177\200\64\68\245\187\14\21\167\141\77\71\245\205\9\90\169\200\61\27\161\128\77\71\245\205\30\90\169\200\57\31\173\156\77\71\245\205\30\90\169\200\61\21\166\200\80\90\240\140\65\95\177\200\17\90\134\129\23\31\245\213\77\95\177\200\17\90\150\135\1\21\167\200\80\90\150\135\1\21\167\219\67\28\167\135\0\40\146\170\69\95\177\196\77\95\177\196\77\95\177\193", "\109\122\213\232"), v592, v593.score, v328(v594), tostring(v594.Text), v594.AbsolutePosition.X, v594.AbsolutePosition.Y, v594.TextSize, v326(v596.R), v326(v596.G), v326(v596.B)));
					end
				end
			end
		else
			v331();
			v302.Visible = false;
			v316 = nil;
			v317 = nil;
			v318 = nil;
			v323 = {};
			v324 = 0;
		end
	end
end);
v291.Heartbeat:Connect(function()
	if not v299 then
		return;
	end
	local v476 = not v316 or not v316.Parent;
	local v477 = (v476 and v330(false)) or v323;
	local v478 = (v477[1] and v477[1].label) or nil;
	if (v316 and (v316 ~= v478) and v316.Parent) then
		v316.Visible = true;
	end
	v316 = v478;
	if v316 then
		local v543 = v316.TextColor3;
		local v544 = v316.TextStrokeColor3;
		local v545 = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\171\243\238\117\234\187\231\52\242\178\166\124\171\243\238\117\234\235\231\126\188\241\190\117\253\235\231\52", "\80\142\151\194"), v326(v543.R), v326(v543.G), v326(v543.B), v326(v544.R), v326(v544.G), v326(v544.B), v316.TextStrokeTransparency, tostring(v316.Font), v316.TextSize);
		if ((v545 ~= v317) or (v316 ~= v318)) then
			v332(v316);
			v317 = v545;
			v318 = v316;
			if v322 then
				print(string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\56\224\118\71\6\245\103\73\6\194\120\65\6\210\114\94\62\134\66\95\10\200\112\12\15\199\117\73\15\134\50\95\67\139\41\12\55\195\111\88\32\201\123\67\17\149\55\17\67\229\120\64\12\212\36\2\5\212\120\65\49\225\85\4\70\194\59\12\70\194\59\12\70\194\62\0\67\242\114\84\23\245\99\94\12\205\114\111\12\202\120\94\80\134\42\12\32\201\123\67\17\149\57\74\17\201\122\126\36\228\63\9\7\138\55\9\7\138\55\9\7\143\59\12\55\195\111\88\48\210\101\67\8\195\67\94\2\200\100\92\2\212\114\66\0\223\55\17\67\131\57\30\5\138\55\106\12\200\99\12\94\134\50\95\79\134\67\73\27\210\68\69\25\195\55\17\67\131\115", "\44\99\166\23"), v328(v316), v326(v543.R), v326(v543.G), v326(v543.B), v326(v544.R), v326(v544.G), v326(v544.B), v316.TextStrokeTransparency, tostring(v316.Font), v316.TextSize));
			end
		end
		for v562, v563 in ipairs(v477) do
			if (v563.label and v563.label.Parent) then
				v563.label.Visible = v563.label == v316;
			end
		end
		v316.Text = v321;
		v316.Visible = true;
		v302.Visible = false;
	else
		v302.Visible = true;
		v302.Text = v321;
		v318 = nil;
		v331();
	end
end);
