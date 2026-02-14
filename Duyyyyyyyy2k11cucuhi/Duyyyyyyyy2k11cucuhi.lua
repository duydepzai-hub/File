local _0x5F2A = game:GetService("Players").LocalPlayer; local _0x1B9C = game:GetService("CoreGui"); local _0x7D3E = game:GetService("RunService"); local _0x2A4F = game:GetService("UserInputService"); local _0x9C1B = game:GetService("TweenService"); function Clear(n) local o = _0x1B9C:FindFirstChild(n) if o then o:Destroy() end end; Clear("\68\117\121\72\117\98\77\97\105\110"); Clear("\68\117\121\72\117\98\75\101\121"); local _0xLL1 = false; local _0xLL2 = false; local _0xLL3 = false; local _0xSS1 = 50; local _0xBB1 = nil;

local function _0xDRG(g, t) local d, i, s, p; g.InputBegan:Connect(function(k) if k.UserInputType == Enum.UserInputType.MouseButton1 or k.UserInputType == Enum.UserInputType.Touch then d = true; s = k.Position; p = t.Position; k.Changed:Connect(function() if k.UserInputState == Enum.UserInputState.End then d = false end end) end end); g.InputChanged:Connect(function(k) if k.UserInputType == Enum.UserInputType.MouseMovement or k.UserInputType == Enum.UserInputType.Touch then i = k end end); _0x7D3E.RenderStepped:Connect(function() if d and i then local delta = i.Position - s; t.Position = UDim2.new(p.X.Scale, p.X.Offset + delta.X, p.Y.Scale, p.Y.Offset + delta.Y) end end) end

local function _0xRBW(o) task.spawn(function() while o and o.Parent do local h = tick() % 5 / 5; local c = Color3.fromHSV(h, 1, 1) if o:IsA("UIStroke") then o.Color = c elseif o:IsA("TextLabel") or o:IsA("TextButton") then o.TextColor3 = c else o.BackgroundColor3 = c end task.wait() end end) end

local _0xMG = Instance.new("ScreenGui", _0x1B9C); _0xMG.Name = "\68\117\121\72\117\98\77\97\105\110"; _0xMG.Enabled = false; local _0xHB = Instance.new("Frame", _0xMG); _0xHB.Size = UDim2.new(0, 400, 0, 280); _0xHB.Position = UDim2.new(0.5, -200, 0.5, -140); _0xHB.BackgroundColor3 = Color3.fromRGB(10, 10, 10); Instance.new("UICorner", _0xHB); _0xRBW(Instance.new("UIStroke", _0xHB))
local _0xTB = Instance.new("Frame", _0xHB); _0xTB.Size = UDim2.new(1, 0, 0, 35); _0xTB.BackgroundColor3 = Color3.fromRGB(0, 0, 0); Instance.new("UICorner", _0xTB); _0xDRG(_0xTB, _0xHB)
local _0xTT = Instance.new("TextLabel", _0xTB); _0xTT.Size = UDim2.new(1, -40, 1, 0); _0xTT.Position = UDim2.new(0, 10, 0, 0); _0xTT.Text = "\100\117\121\121\121\121\121\121\121\50\107\49\49\99\117\99\117\104\105\32\104\117\98"; _0xTT.TextColor3 = Color3.new(1,1,1); _0xTT.Font = Enum.Font.GothamBold; _0xTT.BackgroundTransparency = 1; _0xTT.TextXAlignment = Enum.TextXAlignment.Left; _0xRBW(_0xTT)
local _0xEB = Instance.new("TextButton", _0xTB); _0xEB.Size = UDim2.new(0, 28, 0, 28); _0xEB.Position = UDim2.new(1, -32, 0, 4); _0xEB.Text = "X"; _0xEB.BackgroundColor3 = Color3.fromRGB(255, 0, 0); _0xEB.TextColor3 = Color3.new(1, 1, 1); Instance.new("UICorner", _0xEB); _0xEB.MouseButton1Click:Connect(function() _0xMG:Destroy() end)

local _0xSD = Instance.new("Frame", _0xHB); _0xSD.Size = UDim2.new(0, 100, 0.8, 0); _0xSD.Position = UDim2.new(0.02, 0, 0.16, 0); _0xSD.BackgroundColor3 = Color3.fromRGB(20, 20, 20); Instance.new("UICorner", _0xSD)
local _0xCT = Instance.new("ScrollingFrame", _0xHB); _0xCT.Size = UDim2.new(0.7, 0, 0.78, 0); _0xCT.Position = UDim2.new(0.27, 0, 0.17, 0); _0xCT.BackgroundTransparency = 1; _0xCT.CanvasSize = UDim2.new(0,0,0,0); local _0xLY = Instance.new("UIListLayout", _0xCT); _0xLY.Padding = UDim.new(0, 6); _0xLY.HorizontalAlignment = Enum.HorizontalAlignment.Center

local function _0xTAB1()
    for _,v in pairs(_0xCT:GetChildren()) do if not v:IsA("UIListLayout") then v:Destroy() end end
    local function _0xTGL(t, v)
        local b = Instance.new("TextButton", _0xCT); b.Size = UDim2.new(0.95, 0, 0, 38); b.BackgroundColor3 = Color3.fromRGB(40,40,40); b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b)
        local function u() b.Text = t..": "..(v == 1 and (_0xLL1 and "ON" or "OFF") or v == 2 and (_0xLL2 and "ON" or "OFF") or (_0xLL3 and "ON" or "OFF")) end
        u(); b.MouseButton1Click:Connect(function() if v==1 then _0xLL1 = not _0xLL1 elseif v==2 then _0xLL2 = not _0xLL2 else _0xLL3 = not _0xLL3 end u() end)
    end
    _0xTGL("\86\212\32\72\202\78\32\78\72\214\89", 1); _0xTGL("\78\79\67\76\73\80", 2); _0xTGL("\70\76\89\32\40\66\65\89\41", 3)
    _0xCT.CanvasSize = UDim2.new(0, 0, 0, _0xLY.AbsoluteContentSize.Y + 20)
end

local function _0xTAB2()
    for _,v in pairs(_0xCT:GetChildren()) do if not v:IsA("UIListLayout") then v:Destroy() end end
    local b = Instance.new("TextButton", _0xCT); b.Size = UDim2.new(0.95, 0, 0, 38); b.BackgroundColor3 = Color3.fromRGB(30,30,30); b.Text = "\68\82\65\67\79\78\73\67\32\88"; b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b); _0xRBW(Instance.new("UIStroke", b))
    b.MouseButton1Click:Connect(function() loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\85\110\107\110\111\119\110\112\114\111\111\111\111\108\117\99\107\121\47\68\114\97\99\111\110\105\99\45\72\117\98\45\88\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\102\105\108\101\115\47\69\118\97\100\101\47\79\118\101\114\104\97\117\108\46\108\117\97"))() end)
end

local function _0xMKT(n, p, f)
    local b = Instance.new("TextButton", _0xSD); b.Size = UDim2.new(0.9, 0, 0, 35); b.Position = UDim2.new(0.05, 0, 0, p); b.Text = n; b.TextColor3 = Color3.new(1,1,1); b.BackgroundColor3 = Color3.fromRGB(40,40,40); b.TextSize = 10; Instance.new("UICorner", b); _0xRBW(Instance.new("UIStroke", b))
    b.MouseButton1Click:Connect(f)
end
_0xMKT("\72\65\67\75\32\67\72\205\78\72", 10, _0xTAB1); _0xMKT("\69\86\65\68\69", 50, _0xTAB2)

local function _0xWLC()
    local w = Instance.new("ScreenGui", _0x1B9C); local f = Instance.new("Frame", w); f.Size = UDim2.new(0, 300, 0, 150); f.Position = UDim2.new(0.5, -150, 0.5, -75); f.BackgroundColor3 = Color3.fromRGB(15,15,15); Instance.new("UICorner", f); _0xRBW(Instance.new("UIStroke", f))
    local t = Instance.new("TextLabel", f); t.Size = UDim2.new(1,0,0.5,0); t.Text = "\67\72\192\79\32\77\224\78\71\58\32\68\85\89\89\89\89\89\89\89"; t.TextColor3 = Color3.new(1,1,1); t.Font = Enum.Font.GothamBold; t.BackgroundTransparency = 1
    local b1 = Instance.new("Frame", f); b1.Size = UDim2.new(0.8, 0, 0, 10); b1.Position = UDim2.new(0.1, 0, 0.7, 0); b1.BackgroundColor3 = Color3.fromRGB(30,30,30); Instance.new("UICorner", b1)
    local b2 = Instance.new("Frame", b1); b2.Size = UDim2.new(0,0,1,0); b2.BackgroundColor3 = Color3.new(1,1,1); Instance.new("UICorner", b2); _0xRBW(b2)
    task.spawn(function() for i = 0, 100, 5 do b2.Size = UDim2.new(i/100, 0, 1, 0); task.wait(0.05) end w:Destroy(); _0xMG.Enabled = true; _0xTAB1() end)
end

local _0xKG = Instance.new("ScreenGui", _0x1B9C); local _0xKF = Instance.new("Frame", _0xKG); _0xKF.Size = UDim2.new(0, 300, 0, 150); _0xKF.Position = UDim2.new(0.5, -150, 0.5, -75); _0xKF.BackgroundColor3 = Color3.fromRGB(15, 15, 15); Instance.new("UICorner", _0xKF); _0xDRG(_0xKF, _0xKF); _0xRBW(Instance.new("UIStroke", _0xKF))
local _0xKI = Instance.new("TextBox", _0xKF); _0xKI.Size = UDim2.new(0, 260, 0, 35); _0xKI.Position = UDim2.new(0.5, -130, 0.3, 0); _0xKI.PlaceholderText = "Key: duyyyyyyyy2k11cucuhi"; _0xKI.BackgroundColor3 = Color3.fromRGB(30, 30, 30); _0xKI.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", _0xKI)
local _0xKC = Instance.new("TextButton", _0xKF); _0xKC.Size = UDim2.new(0, 120, 0, 35); _0xKC.Position = UDim2.new(0.07, 0, 0.7, 0); _0xKC.Text = "\67\79\80\89\32\75\69\89"; _0xKC.BackgroundColor3 = Color3.fromRGB(40,40,40); _0xKC.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", _0xKC)
local _0xKN = Instance.new("TextButton", _0xKF); _0xKN.Size = UDim2.new(0, 120, 0, 35); _0xKN.Position = UDim2.new(0.53, 0, 0.7, 0); _0xKN.Text = "\88\193\67\32\78\72\204\78"; _0xKN.BackgroundColor3 = Color3.fromRGB(40,40,40); _0xKN.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", _0xKN)
_0xKC.MouseButton1Click:Connect(function() setclipboard("\100\117\121\121\121\121\121\121\121\50\107\49\49\99\117\99\117\104\105") end)
_0xKN.MouseButton1Click:Connect(function() if _0xKI.Text == "\100\117\121\121\121\121\121\121\121\50\107\49\49\99\117\99\117\104\105" then _0xKG:Destroy(); _0xWLC() end end)

local _0xTGB = Instance.new("ImageButton", _0xMG); _0xTGB.Size = UDim2.new(0, 60, 0, 60); _0xTGB.Position = UDim2.new(0, 10, 0.4, 0); _0xTGB.Image = "rbxassetid://95959813665015"; Instance.new("UICorner", _0xTGB); _0xDRG(_0xTGB, _0xTGB); _0xTGB.MouseButton1Click:Connect(function() _0xHB.Visible = not _0xHB.Visible end)

_0x7D3E.Heartbeat:Connect(function()
    if _0x5F2A.Character and _0x5F2A.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = _0x5F2A.Character.HumanoidRootPart; local hum = _0x5F2A.Character:FindFirstChildOfClass("Humanoid")
        if _0xLL2 then for _,v in pairs(_0x5F2A.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
        if _0xLL3 then
            if not _0xBB1 then _0xBB1 = Instance.new("BodyVelocity", hrp); _0xBB1.MaxForce = Vector3.new(math.huge, math.huge, math.huge) end
            if hum.MoveDirection.Magnitude > 0 then _0xBB1.Velocity = ((workspace.CurrentCamera.CFrame.LookVector * -hum.MoveDirection.Z * -1) + (workspace.CurrentCamera.CFrame.RightVector * hum.MoveDirection.X)).Unit * _0xSS1
            else _0xBB1.Velocity = Vector3.new(0,0,0) end
        else if _0xBB1 then _0xBB1:Destroy(); _0xBB1 = nil end end
    end
end)
_0x2A4F.JumpRequest:Connect(function() if _0xLL1 and _0x5F2A.Character then _0x5F2A.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping) end end)
