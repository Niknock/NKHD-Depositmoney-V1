Config = {}

Config.ESX = 'new' -- new or old

Config.Markers = {
    {
        Coords = vector3(433.7351, -979.8600, 30.7110), -- Change to your Location
        Radius = 1.5,
        Type = 21, -- Typ des Markers (1 = Zylinder)
        Scale = vector3(0.5, 0.5, 0.5), -- Skalierung des Markers
        Color = {r = 35, g = 178, b = 207, a = 150}, -- Farbe des Markers (RGBA)
        SocietyName = 'police',
        MenuTitle = 'The deposit amount for police', -- Change to your Language
        PromptText = '~w~Press ~INPUT_CONTEXT~ to open the police menu' -- Change to your Language
    },
    {
        Coords = vector3(297.2287, -587.7916, 43.2608), -- Change to your Location
        Radius = 1.5,
        Type = 21, -- Typ des Markers (1 = Zylinder)
        Scale = vector3(0.5, 0.5, 0.5), -- Skalierung des Markers
        Color = {r = 215, g = 29, b = 29, a = 150}, -- Farbe des Markers (RGBA)
        SocietyName = 'ambulance',
        MenuTitle = 'The deposit amount for the ambulance', -- Change to your Language
        PromptText = '~w~Press ~INPUT_CONTEXT~ to open ambulance menu' -- Change to your Language
    }
    --{
    --    Coords = vector3( here your coords ),
    --    Radius = 1.5,
    --    SocietyName = 'SocietyName',
    --    MenuTitle = 'Menu Title', -- Change to your Language
    --    PromptText = '~w~Press ~b~E~w~ to open ' -- Change to your Language
    --},
}

Config.Currency = '$'
Config.Text = ' has deposited '
Config.NotificationInvalidAmount = '~r~Invalid amount' -- Change to your Language
Config.NotificationDepositSuccess = '~g~You have Succesfully Deposited ' -- Change to your Language
Config.DepositMoneyEvent = 'nkhd:depositMoney'
