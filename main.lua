while true do
    --tp to gate 15
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Workspace.Doors.Door_15.Door.CFrame * CFrame.new(0, -10, 0)
    wait(15)
    --tp to crystal field
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Workspace.Fields["Crystal Field"].Flower.flr100.CFrame
    wait(35)
    --tp to gate 10
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Doors.Door_10.Door.CFrame
    wait(25)
    --tp to rose field
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Workspace.Fields["Rose Field"].Flower.flr500.CFrame
    --start farm
    repeat
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Workspace.Fields["Rose Field"].Flower.flr500.CFrame
        local turn = 0
        while turn < 10 do
            turn = turn + 1
            wait(1)
            for i, v in pairs(game.Workspace.Debris.Tokens:GetChildren()) do
                if v.Name == "taikhoankiemtra2" or v.Name == "All" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait(.3)
                end

                print(turn)
            end
        end
        --check
        local num = game.Players.LocalPlayer.PlayerGui.Main.MeterHUD.PollenMeter.Bar.TextLabel.Text
        local num1, num2 = num:match("([^/]+)/([^/]+)")
        num1 = num1:gsub(",", "")
        num2 = num2:gsub(",", "")
        wait(1)
    until tonumber(num1) >= tonumber(num2)
    print("full")

    --tp to hive
    for i, v in pairs(game.Workspace.Hives:GetChildren()) do
        if v.Platform.User.Username.User.Text == "taikhoankiemtra2" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                v.Platform.Top.CFrame * CFrame.new(-4, 0, 0) * CFrame.fromEulerAngles(0, 0, math.rad(90))
        end
    end
    game.ReplicatedStorage.Remotes.MakeHoney:FireServer("")
    repeat
        wait(2)
        local num = game.Players.LocalPlayer.PlayerGui.Main.MeterHUD.PollenMeter.Bar.TextLabel.Text
        local num1, num2 = num:match("([^/]+)/([^/]+)")
        num1 = num1:gsub(",", "")
        num2 = num2:gsub(",", "")
        print(num1)
    until tonumber(num1) == 0
    print("empty")
end
