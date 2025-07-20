Section:NewToggle("ESP", "ESP",function(state)
    if state then
	local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local function addESP(player)
    if player == localPlayer then return end
    player.CharacterAdded:Connect(function(character)
        local root = character:WaitForChild("HumanoidRootPart", 5)
        local head = character:WaitForChild("Head", 5)
        if root and not root:FindFirstChild("ESP_BOX") then
            -- Box вокруг персонажа
            local box = Instance.new("BoxHandleAdornment")
            box.Name = "ESP_BOX"
            box.Adornee = root
            box.Size = Vector3.new(4, 7, 2)
            box.Color3 = Color3.new(0, 1, 0)
            box.Transparency = 0.5
            box.AlwaysOnTop = true
            box.ZIndex = 10
            box.Parent = root
        end
        if head and not head:FindFirstChild("ESP_NAME") then
            -- Ник над головой
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "ESP_NAME"
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 2, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = head

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Parent = billboard
            nameLabel.Size = UDim2.new(1, 0, 1, 0)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = player.Name
            nameLabel.TextColor3 = Color3.new(1, 1, 1)
            nameLabel.TextStrokeTransparency = 0.5
            nameLabel.Font = Enum.Font.SourceSansBold
            nameLabel.TextScaled = true
        end
    end
    end)
    -- Если персонаж уже загружен
    if player.Character then
        local character = player.Character
        local root = character:FindFirstChild("HumanoidRootPart")
        local head = character:FindFirstChild("Head")
        if root and not root:FindFirstChild("ESP_BOX") then
            local box = Instance.new("BoxHandleAdornment")
            box.Name = "ESP_BOX"
            box.Adornee = root
            box.Size = Vector3.new(4, 7, 2)
            box.Color3 = Color3.new(0, 1, 0)
            box.Transparency = 0.5
            box.AlwaysOnTop = true
            box.ZIndex = 10
            box.Parent = root
        end
        if head and not head:FindFirstChild("ESP_NAME") then
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "ESP_NAME"
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 2, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = head

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Parent = billboard
            nameLabel.Size = UDim2.new(1, 0, 1, 0)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = player.Name
            nameLabel.TextColor3 = Color3.new(1, 1, 1)
            nameLabel.TextStrokeTransparency = 0.5
            nameLabel.Font = Enum.Font.SourceSansBold
            nameLabel.TextScaled = true
        end
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    addESP(player)
end

Players.PlayerAdded:Connect(addESP)
        print("Toggle On")
    else
        print("Toggle Off")
        
         local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer

    -- Функция для удаления ESP
    local function removeESP()
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer and player.Character then
                local character = player.Character
                local root = character:FindFirstChild("HumanoidRootPart")
                local head = character:FindFirstChild("Head")
                if root then
                    local box = root:FindFirstChild("ESP_BOX")
                    if box then box:Destroy() end
                end
                if head then
                    local name = head:FindFirstChild("ESP_NAME")
                    if name then name:Destroy() end
                end
            end
        end
    end

    -- Функция для добавления ESP
    local function addESP(player)
        if player == localPlayer then return end
        player.CharacterAdded:Connect(function(character)
            local root = character:WaitForChild("HumanoidRootPart", 5)
            local head = character:WaitForChild("Head", 5)
            if root and not root:FindFirstChild("ESP_BOX") then
                local box = Instance.new("BoxHandleAdornment")
                box.Name = "ESP_BOX"
                box.Adornee = root
                box.Size = Vector3.new(4, 7, 2)
                box.Color3 = Color3.new(0, 1, 0)
                box.Transparency = 0.5
                box.AlwaysOnTop = true
                box.ZIndex = 10
                box.Parent = root
            end
            if head and not head:FindFirstChild("ESP_NAME") then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "ESP_NAME"
                billboard.Adornee = head
                billboard.Size = UDim2.new(0, 200, 0, 50)
                billboard.StudsOffset = Vector3.new(0, 2, 0)
                billboard.AlwaysOnTop = true
                billboard.Parent = head

                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = player.Name
                nameLabel.TextColor3 = Color3.new(1, 1, 1)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.Font = Enum.Font.SourceSansBold
                nameLabel.TextScaled = true
            end
        end)
        -- Если персонаж уже загружен
        if player.Character then
            local character = player.Character
            local root = character:FindFirstChild("HumanoidRootPart")
            local head = character:FindFirstChild("Head")
            if root and not root:FindFirstChild("ESP_BOX") then
                local box = Instance.new("BoxHandleAdornment")
                box.Name = "ESP_BOX"
                box.Adornee = root
                box.Size = Vector3.new(4, 7, 2)
                box.Color3 = Color3.new(0, 1, 0)
                box.Transparency = 0.5
                box.AlwaysOnTop = true
                box.ZIndex = 10
                box.Parent = root
            end
            if head and not head:FindFirstChild("ESP_NAME") then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "ESP_NAME"
                billboard.Adornee = head
                billboard.Size = UDim2.new(0, 200, 0, 50)
                billboard.StudsOffset = Vector3.new(0, 2, 0)
                billboard.AlwaysOnTop = true
                billboard.Parent = head

                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = player.Name
                nameLabel.TextColor3 = Color3.new(1, 1, 1)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.Font = Enum.Font.SourceSansBold
                nameLabel.TextScaled = true
            end
        end
    end

    if state then
        for _, player in ipairs(Players:GetPlayers()) do
            addESP(player)
        end
    end
end)

        print("Toggle On")
    else
        print("Toggle Off")
            
    end
end)
