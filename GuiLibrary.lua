local library = {}
local utility = {}
local services = {}
local locals = {
    ["Player"] = game:GetService("Players").LocalPlayer
}
local api = {}

api["TabButtonAPI"] = function(text, callback)
    local callback = callback or function() end
    local TabButton = Instance.new("Frame")
    local TabButtonText = Instance.new("TextLabel")
    local TabButtonControl = Instance.new("TextButton")
    local TabButtonPadding = Instance.new("UIPadding")

    TabButton.Name = "TabButton"
    TabButton.Parent = TabList
    TabButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    TabButton.BorderColor3 = Color3.fromRGB(50, 50, 50)
    TabButton.Size = UDim2.new(0, 60, 0, 20)

    TabButtonText.Name = "TabButtonText"
    TabButtonText.Parent = TabButton
    TabButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabButtonText.BackgroundTransparency = 1.000
    TabButtonText.Size = UDim2.new(0, 60, 0, 20)
    TabButtonText.Font = Enum.Font.Code
    TabButtonText.LineHeight = 1.100
    TabButtonText.Text = text or "hello"
    TabButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabButtonText.TextSize = 12.000

    TabButtonControl.Name = "TabButtonControl"
    TabButtonControl.Parent = TabButtonText
    TabButtonControl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabButtonControl.BackgroundTransparency = 1.000
    TabButtonControl.Size = UDim2.new(1, 0, 1, 0)
    TabButtonControl.Font = Enum.Font.SourceSans
    TabButtonControl.Text = ""
    TabButtonControl.TextColor3 = Color3.fromRGB(0, 0, 0)
    TabButtonControl.TextSize = 14.000

    TabButtonPadding.Name = "TabButtonPadding"
    TabButtonPadding.Parent = TabButton
    TabButtonPadding.PaddingLeft = UDim.new(0, 1)
    TabButtonPadding.PaddingRight = UDim.new(0, 1)
end

library.CreateWindow = function(title, uiname)
    local leefu = Instance.new("ScreenGui")
    local LeefuDesign1 = Instance.new("Frame")
    local LeefuDesign2 = Instance.new("Frame")
    local MainContainer = Instance.new("Frame")
    local MainContainerLayout = Instance.new("UIListLayout")
    local Title = Instance.new("TextLabel")
    local TitlePadding = Instance.new("UIPadding")
    local Container = Instance.new("Frame")
    local ContainerLayout = Instance.new("UIGridLayout")
    local TabControl = Instance.new("Frame")
    local TabControlLayout = Instance.new("UIListLayout")
    local TabList = Instance.new("Frame")
    local ContainerPadding = Instance.new("UIPadding")

    local TabListLayout = Instance.new("UIListLayout")
    local TabListPadding = Instance.new("UIPadding")


    leefu.Name = "leefu" or uiname
    leefu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    leefu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    leefu.ResetOnSpawn = false

    LeefuDesign1.Name = "LeefuDesign1"
    LeefuDesign1.Parent = leefu
    LeefuDesign1.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    LeefuDesign1.BorderColor3 = Color3.fromRGB(170, 0, 255)
    LeefuDesign1.BorderSizePixel = 0
    LeefuDesign1.Position = UDim2.new(0.296812743, 0, 0.0773006156, 0)
    LeefuDesign1.Size = UDim2.new(0, 350, 0, 450)

    LeefuDesign2.Name = "LeefuDesign2"
    LeefuDesign2.Parent = LeefuDesign1
    LeefuDesign2.AnchorPoint = Vector2.new(0.5, 0.5)
    LeefuDesign2.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
    LeefuDesign2.BorderColor3 = Color3.fromRGB(65, 65, 65)
    LeefuDesign2.BorderSizePixel = 0
    LeefuDesign2.Position = UDim2.new(0.5, 0, 0.5, 0)
    LeefuDesign2.Size = UDim2.new(0, 348, 0, 448)

    MainContainer.Name = "MainContainer"
    MainContainer.Parent = LeefuDesign2
    MainContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    MainContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainContainer.BorderColor3 = Color3.fromRGB(65, 65, 65)
    MainContainer.BorderSizePixel = 0
    MainContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainContainer.Size = UDim2.new(0, 346, 0, 446)

    MainContainerLayout.Name = "MainContainerLayout"
    MainContainerLayout.Parent = MainContainer
    MainContainerLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    MainContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder

    Title.Name = "Title"
    Title.Parent = MainContainer
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Size = UDim2.new(1, 0, -0.0209999997, 30)
    Title.Font = Enum.Font.Code
    Title.Text = title or "Leefu UI Library"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextStrokeTransparency = 0.000
    Title.TextXAlignment = Enum.TextXAlignment.Left

    TitlePadding.Name = "TitlePadding"
    TitlePadding.Parent = Title
    TitlePadding.PaddingLeft = UDim.new(0, 5)

    Container.Name = "Container"
    Container.Parent = MainContainer
    Container.AnchorPoint = Vector2.new(0.5, 0.5)
    Container.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Container.BorderColor3 = Color3.fromRGB(50, 50, 50)
    Container.Position = UDim2.new(0.5, 0, 0.533632278, 0)
    Container.Size = UDim2.new(0, 338, 0, 421)

    ContainerLayout.Name = "ContainerLayout"
    ContainerLayout.Parent = Container
    ContainerLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
    ContainerLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    ContainerLayout.CellSize = UDim2.new(0, 320, 0, 400)

    TabControl.Name = "TabControl"
    TabControl.Parent = Container
    TabControl.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    TabControl.BorderColor3 = Color3.fromRGB(50, 50, 50)
    TabControl.Size = UDim2.new(0, 100, 0, 100)

    TabControlLayout.Name = "TabControlLayout"
    TabControlLayout.Parent = TabControl
    TabControlLayout.SortOrder = Enum.SortOrder.LayoutOrder

    TabList.Name = "TabList"
    TabList.Parent = TabControl
    TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabList.BackgroundTransparency = 1.000
    TabList.Size = UDim2.new(0, 320, 0, 36)

    TabListLayout.Name = "TabListLayout"
    TabListLayout.Parent = TabList
    TabListLayout.FillDirection = Enum.FillDirection.Horizontal
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    TabListLayout.Padding = UDim.new(0, 5)

    TabListPadding.Name = "TabListPadding"
    TabListPadding.Parent = TabList
    TabListPadding.PaddingLeft = UDim.new(0, 7)

    ContainerPadding.Name = "ContainerPadding"
    ContainerPadding.Parent = Container 

    local display = {}

    display.RenderTabDisplay = function()
        local TabDisplay = Instance.new("Frame")
        TabDisplay.Name = "TabDisplay"
        TabDisplay.Parent = TabControl
        TabDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabDisplay.BackgroundTransparency = 1.000
        TabDisplay.Position = UDim2.new(0, 0, 0.0500000007, 0)
        TabDisplay.Size = UDim2.new(0, 320, 0, 380)

        local createTab = {}

        createTab.CreateTab = function(name)
            local Tab = Instance.new("Frame")

            Tab.Name = name or "Tab"
            Tab.Parent = TabDisplay
            Tab.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            Tab.BorderColor3 = Color3.fromRGB(50, 50, 50)
            Tab.Position = UDim2.new(0.0218749996, 0, -0.00263157859, 0)
            Tab.Size = UDim2.new(0, 305, 0, 365)
        end
        return createTab
    end
    return display
end

return library
