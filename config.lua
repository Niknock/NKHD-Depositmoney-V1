Config = {}

Config.Markers = {
    {
        Coords = vector3(2929.8491, 3847.8774, 52.3903),
        Radius = 1.5,
        SocietyName = 'police',
        MenuTitle = 'The deposit amount for police', -- Change to your Language
        PromptText = '~w~Press ~b~E~w~ to open ' -- Change to your Language
    },
    {
        Coords = vector3(2929.2285, 3844.9155, 52.4042),
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
