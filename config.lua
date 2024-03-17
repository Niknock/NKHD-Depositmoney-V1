Config = {}

Config.Markers = {
    {
        Coords = vector3(433.7351, -979.8600, 30.7110), -- Change to your Location
        Radius = 1.5,
        SocietyName = 'police',
        MenuTitle = 'The deposit amount for police', -- Change to your Language
        PromptText = '~w~Press ~b~E~w~ to open ' -- Change to your Language
    },
    {
        Coords = vector3(297.2287, -587.7916, 43.2608), -- Change to your Location
        Radius = 1.5,
        SocietyName = 'ambulance',
        MenuTitle = 'The deposit amount for the ambulance', -- Change to your Language
        PromptText = '~w~Press ~b~E~w~ to open ' -- Change to your Language
    }
    --{
    --    Coords = vector3( here your coords ),
    --    Radius = 1.5,
    --    SocietyName = 'SocietyName',
    --    MenuTitle = 'Menu Title', -- Change to your Language
    --    PromptText = '~w~Press ~b~E~w~ to open ' -- Change to your Language
    --},
}

Config.NotificationInvalidAmount = 'Invalid amount' -- Change to your Language
Config.NotificationDepositSuccess = 'Deposit successful' -- Change to your Language
Config.DepositMoneyEvent = 'nkhd:depositMoney'
