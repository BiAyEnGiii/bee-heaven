--repeat
--check mag plr
while true do
local field = "Rose Field"



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
        game.Workspace.Fields[field].FieldBox.CFrame
    --start farm
  repeat  
local plrmag = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local fieldmag = game.Workspace.Fields[field].FieldBox.Position
if (plrmag-fieldmag).magnitude >100 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Workspace.Fields[field].FieldBox.CFrame
end

        local turn = 0
        while turn < 10 do
            turn = turn + 1
            wait(1)
            for i, v in pairs(game.Workspace.Debris.Tokens:GetChildren()) do
                --prioritize
                    wait(.05)
                        if v:WaitForChild("TokenName",0.1) then 
                            local name = v:WaitForChild("TokenName",0.1).Value
                               if v.Name == "All" and name ~= "Honey" and name ~= "Royal Jelly" and name ~= "Treat" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                    print("prior item free")
                end 
               if v.Name == "taikhoankiemtra2" and name == "TokenLink" then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                    print("prior tokenlink")
                end
                if v.Name == "taikhoankiemtra2" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                end
                        end
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
