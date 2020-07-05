RegisterCommand("cla", function(src,args,raw)
    local src = src
    local player = GetPlayerPed(-1)
    local car = GetVehiclePedIsIn(player,true)
    for i=0, 7 do
        SetVehicleDoorShut(car,i,true)
    end
end, false)

RegisterCommand("odoor", function(src,args,raw)
    local src = src
    local player = GetPlayerPed(-1)
    local car = GetVehiclePedIsIn(player,true)
    local door = args[1]
    if door == "a" then
        for i=0, 7 do
            SetVehicleDoorOpen(car,i,false,false)
        end
    else
        door = tonumber(door)
        SetVehicleDoorOpen(car,door,false,false)
    end
end, false)

RegisterCommand("wind", function(src,args,raw)
    local src = src
    local player = GetPlayerPed(-1)
    local car = GetVehiclePedIsIn(player,true)
    local window = args[1]
    if window == "a" then
        RollDownWindows(car)
    else
        window = tonumber(window)
        RollDownWindow(car,window)
    end
end, false)

RegisterCommand("winu", function(src,args,raw)
    local src = src
    local player = GetPlayerPed(-1)
    local car = GetVehiclePedIsIn(player,true)
    local window = args[1]
    if window == "a" then
        for i=0, 3 do
            RollUpWindow(car,i)
        end
    else
        window = tonumber(window)
        RollUpWindow(car,window)
    end
end, false)
