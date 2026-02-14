local ConfirmBtn = Instance.new("TextButton", KeyFrame); ConfirmBtn.Size = UDim2.new(0, 110, 0, 35); ConfirmBtn.Position = UDim2.new(0.5, 10, 0.75, 0); ConfirmBtn.Text = "XÁC NHẬN"; ConfirmBtn.BackgroundColor3 = Color3.fromRGB(40,40,40); ConfirmBtn.TextColor3 = Color3.new(1,1,1); ConfirmBtn.Font = Enum.Font.GothamBold; Instance.new("UICorner", ConfirmBtn)

-- ==========================================
-- 2. THỰC ĐƠN CHÍNH
-- ==========================================
local MainGui = Instance.new("ScreenGui", CoreGui); MainGui.Name = "DuyHubMain"; MainGui.Enabled = sai
local Hub = Instance.new("Frame", MainGui); Hub.Size = UDim2.new(0, 420, 0, 300); Hub.Position = UDim2.new(0.5, -210, 0.5, -150); Hub.BackgroundColor3 = Color3.fromRGB(10, 10, 10); Instance.new("UICorner", Hub); local sh = Instance.new("UIStroke", Hub); sh.Thickness = 2; MakeRainbow(sh)
local TitleBar = Instance.new("Frame", Hub); TitleBar.Size = UDim2.new(1, 0, 0, 30); TitleBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0); Instance.new("UICorner", TitleBar); Drag(TitleBar, Hub)
local TitleText = Instance.new("TextLabel", TitleBar); TitleText.Size = UDim2.new(1, -40, 1, 0); TitleText.Position = UDim2.new(0, 10, 0, 0); TitleText.Text = "duyyyyyyyy2k11cucuhi hub"; TitleText.Font = Enum.Font.GothamBold; TitleText.TextColor3 = Color3.new(1,1,1); TitleText.BackgroundTransparency = 1; TitleText.TextXAlignment = Enum.TextXAlignment.Left; MakeRainbow(TitleText)
local ExitBtn = Instance.new("TextButton", TitleBar); ExitBtn.Size = UDim2.new(0, 24, 0, 24); ExitBtn.Position = UDim2.new(1, -28, 0, 3); ExitBtn.Text = "X"; ExitBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0); ExitBtn.TextColor3 = Color3.new(1, 1, 1); ExitBtn.Font = Enum.Font.GothamBold; Instance.new("UICorner", ExitBtn); ExitBtn.ZIndex = 5

local Side = Instance.new("Frame", Hub); Side.Size = UDim2.new(0, 100, 0.82, 0); Side.Position = UDim2.new(0.02, 0, 0.14, 0); Side.BackgroundColor3 = Color3.fromRGB(20, 20, 20); Instance.new("UICorner", Side)
local Container = Instance.new("ScrollingFrame", Hub); Container.Size = UDim2.new(0.7, 0, 0.8, 0); Container.Position = UDim2.new(0.27, 0, 0.15, 0); Container.BackgroundTransparency = 1; Container.CanvasSize = UDim2.new(0,0,0,0); Container.ScrollBarThickness = 2; local Layout = Instance.new("UIListLayout", Container); Layout.Padding = UDim.new(0, 5); Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

hàm cục bộ AddScriptBtn(name, url)
    local b = Instance.new("TextButton", Container); b.Size = UDim2.new(0.95, 0, 0, 35); b.BackgroundColor3 = Color3.fromRGB(30,30,30); b.Text = name; b.TextColor3 = Color3.new(1,1,1); b.Font = Enum.Font.SourceSansBold; b.TextSize = 14; Instance.new("UICorner", b); local s = Instance.new("UIStroke", b); s.Thickness = 1; MakeRainbow(s)
    b.MouseButton1Click:Connect(function() PlaySound(4835691039); pcall(function() loadstring(game:HttpGet(url))() end) end)
    Container.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y + 10)
kết thúc

hàm cục bộ TabMain()
    for _,v in pairs(Container:GetChildren()) do if not v:IsA("UIListLayout") then v:Destroy() end end
    local b = Instance.new("TextButton", Container); b.Size = UDim2.new(0.95, 0, 0, 35); b.BackgroundColor3 = Color3.fromRGB(40,40,40); b.Text = "VÔ HẠN NHẢY: "..(InfiniteJumpEnabled and "ON" or "OFF"); b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(function() InfiniteJumpEnabled = not InfiniteJumpEnabled b.Text = "VÔ HẠN NHẢY: "..(InfiniteJumpEnabled and "ON" or "OFF") end)
    local j = Instance.new("TextBox", Container); j.Size = UDim2.new(0.95, 0, 0, 35); j.PlaceholderText = "NHẬP ĐỘ CAO NHẢY..."; j.Text = tostring(JumpHeight); j.BackgroundColor3 = Color3.fromRGB(30,30,30); j.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", j)
    j.FocusLost:Connect(function() JumpHeight = tonumber(j.Text) or 50 if Player.Character then Player.Character.Humanoid.JumpPower = JumpHeight end end)
    local s = Instance.new("TextBox", Container); s.Size = UDim2.new(0.95, 0, 0, 35); s.PlaceholderText = "NHẬP TỐC ĐỘ VẬN TỐC..."; s.Text = tostring(SpeedPower); s.BackgroundColor3 = Color3.fromRGB(30,30,30); s.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", s)
    s.FocusLost:Connect(function() SpeedPower = tonumber(s.Text) or 0 end)
kết thúc

hàm cục bộ MakeTabBtn(name, pos, func)
    local b = Instance.new("TextButton", Side); b.Size = UDim2.new(0.9, 0, 0, 35); b.Position = UDim2.new(0.05, 0, 0, pos); b.Text = name; b.TextColor3 = Color3.new(1,1,1); b.BackgroundColor3 = Color3.fromRGB(40,40,40); b.Font = Enum.Font.GothamBold; b.TextSize = 11; Instance.new("UICorner", b); local st = Instance.new("UIStroke", b); st.Thickness = 1.5; MakeRainbow(st)
    b.MouseButton1Click:Connect(function() PlaySound(4835691039); func() end)
kết thúc

MakeTabBtn("HACK CHÍNH", 10, TabMain)
MakeTabBtn("EVADE", 50, function()
    for _,v in pairs(Container:GetChildren()) do if not v:IsA("UIListLayout") then v:Destroy() end end
    AddScriptBtn("DRACONIC (SIÊU NGON)", "https://raw.githubusercontent.com/Yousuck7/Draconic-Hub/main/Evade")
    AddScriptBtn("LightningWare V2", "https://rawscripts.net/raw/Evade-LightningWare-V2-Keyless-72050")
    AddScriptBtn("Dara Hub", "https://darahub.vercel.app/main.lua")
kết thúc)
MakeTabBtn("BLOX FRUIT", 90, function() for _,v in pairs(Container:GetChildren()) do if not v:IsA("UIListLayout") then v:Destroy() end end AddScriptBtn("Gravity Hub", "https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua") AddScriptBtn("Quantum Onyx", "https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua") end)
MakeTabBtn("VIP MENU", 130, function() for _,v in pairs(Container:GetChildren()) do if not v:IsA("UIListLayout") then v:Destroy() end end AddScriptBtn("ESP XUYÊN TƯỜNG", "https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/ESP") AddScriptBtn("Camlock", "https://raw.githubusercontent.com/brosula123/CAMLOCK/main/SKIBIDI") end)

local Toggle = Instance.new("TextButton", MainGui); Toggle.Size = UDim2.new(0, 100, 0, 35); Toggle.Position = UDim2.new(0, 10, 0.2, 0); Toggle.BackgroundColor3 = Color3.new(0,0,0); Toggle.Text = "địt mẹ mày"; Toggle.TextColor3 = Color3.new(1,0,0); Toggle.Font = Enum.Font.GothamBold; Toggle.TextSize = 12; Instance.new("UICorner", Toggle); local tst = Instance.new("UIStroke", Toggle); tst.Thickness = 2; MakeRainbow(tst); Drag(Toggle, Toggle); Toggle.MouseButton1Click:Connect(function() PlaySound(4835691039); Hub.Visible = not Hub.Visible end)

-- VÒNG LẶP HACK (VELOCITY & INF JUMP)
UserInputService.JumpRequest:Connect(function() if InfiniteJumpEnabled and Player.Character then Player.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping) end end)
RunService.Heartbeat:Connect(function()
    nếu Player.Character và Player.Character:FindFirstChild("HumanoidRootPart") và SpeedPower > 0 thì
        local HRP = Player.Character.HumanoidRootPart;
        local Hum = Player.Character:FindFirstChildOfClass("Humanoid")
        nếu Hum.MoveDirection.Magnitude > 0 thì
            HRP.Velocity = Vector3.new(Hum.MoveDirection.X * SpeedPower, HRP.Velocity.Y, Hum.MoveDirection.Z * SpeedPower)
        kết thúc
    kết thúc
kết thúc)

-- NÚT X XÁC NHẬN VÀ RESET TỐC ĐỘ
ExitBtn.MouseButton1Click:Connect(function()
    local c = Instance.new("Frame", Hub); c.Size = UDim2.new(0, 220, 0, 110); c.Position = UDim2.new(0.5, -110, 0.5, -55); c.BackgroundColor3 = Color3.fromRGB(20,20,20); c.ZIndex = 50; Instance.new("UICorner", c); local cs = Instance.new("UIStroke", c); cs.Thickness = 2; cs.Color = Color3.new(1,0,0)
    local t = Instance.new("TextLabel", c); t.Size = UDim2.new(1,0,0,5,0); t.Text = "bạn chắc chắn muốn xóa?"; t.TextColor3 = Color3.new(1,1,1); t.BackgroundTransparency = 1; t.ZIndex = 51; t.Font = Enum.Font.GothamBold
    local y = Instance.new("TextButton", c); y.Size = UDim2.new(0.4,0,0.3,0); y.Position = UDim2.new(0,05,0,0.6,0); y.Text = "Có"; y.BackgroundColor3 = Color3.new(0,6,0,0); y.TextColor3 = Color3.new(1,1,1); y.ZIndex = 51; Instance.new("UICorner", y)
    local n = Instance.new("TextButton", c); n.Size = UDim2.new(0.4,0,0.3,0); n.Position = UDim2.new(0.55,0,0.6,0); n.Text = "Không"; n.BackgroundColor3 = Color3.new(0.2,0.2,0.2); n.TextColor3 = Color3.new(1,1,1); n.ZIndex = 51; Instance.new("UICorner", n)
    y.MouseButton1Click:Connect(function()
        ResetToNormal()
        MainGui:Destroy()
    kết thúc)
    n.MouseButton1Click:Connect(function() c:Destroy() end)
kết thúc)

-- XỬ LÝ KEY & CHÀO MỪNG
ConfirmBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "duyyyyyyyy2k11cucuhi" then
        KeyGui:Destroy()
        local WelcomeGui = Instance.new("ScreenGui", CoreGui); WelcomeGui.Name = "DuyHubWelcome"
        local BG = Instance.new("Frame", WelcomeGui); BG.Size = UDim2.new(1,0,1,0); BG.BackgroundColor3 = Color3.new(0,0,0); BG.BackgroundTransparency = 1; TweenService:Create(BG, TweenInfo.new(0.5), {BackgroundTransparency = 0.4}):Play()
        local WFrame = Instance.new("Frame", WelcomeGui); WFrame.Size = UDim2.new(0, 350, 0, 150); WFrame.Position = UDim2.new(0.5, -175, 1.2, 0); WFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15); Instance.new("UICorner", WFrame); local ws = Instance.new("UIStroke", WFrame); ws.Thickness = 3; MakeRainbow(ws)
        WText cục bộ = Instance.new("TextLabel", WFrame); WText.Size = UDim2.new(1, 0, 0,6, 0); WText.BackgroundTransparency = 1; WText.Text = " Chào mừng bạn đến với script của tao!\nScript tổng hợp ngon nhất quả đất!"; WText.Font = Enum.Font.GothamBold; WText.TextSize = 15; WText.TextColor3 = Color3.new(1,1,1)
        local ProgressBg = Instance.new("Frame", WFrame); ProgressBg.Size = UDim2.new(0.8, 0, 0, 8); ProgressBg.Position = UDim2.new(0.1, 0, 0.75, 0); ProgressBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40); Instance.new("UICorner", ProgressBg)
        local ProgressBar = Instance.new("Frame", ProgressBg); ProgressBar.Name = "Bar"; ProgressBar.Size = UDim2.new(0, 0, 1, 0); ProgressBar.BackgroundColor3 = Color3.new(1,1,1); Instance.new("UICorner", ProgressBar); MakeRainbow(ProgressBar)
        local PercentText = Instance.new("TextLabel", WFrame); PercentText.Size = UDim2.new(1, 0, 0, 20); PercentText.Position = UDim2.new(0, 0, 0.85, 0); PercentText.BackgroundTransparency = 1; PercentText.Text = "Đang tải: 0%"; PercentText.TextColor3 = Color3.new(1,1,1); PercentText.Font = Enum.Font.GothamBold; PercentText.TextSize = 12
        WFrame:TweenPosition(UDim2.new(0.5, -175, 0.5, -75), "Ra ngoài", "Lùi lại", 0.7)
        task.spawn(function()
            for i = 0, 100 do ProgressBar.Size = UDim2.new(i/100, 0, 1, 0); PercentText.Text = "Đang tải: "..i.."%"; task.wait(0.04) end
            PlaySound(452267918); task.wait(0.5); WelcomeGui:Destroy(); MainGui.Enabled = true; TabMain()
        kết thúc)
    Ngược lại, KeyInput.Text = ""; KeyInput.PlaceholderText = "SAI KEY RỒI!" end
kết thúc)
