require 'Items/SuburbsDistributions'
require "Items/ProceduralDistributions"

local _sandbox = SandboxVars and SandboxVars["TM_TrueMooZicPatricioReyYRedonditos"] or {}
local _multBuilding = (_sandbox.BuildingSpawnMultiplier or 1.0)

local targets = {
    { name = "MusicStoreCDs", w = 5 },
    { name = "MusicStoreSpeaker", w = 3 },
    { name = "MusicStoreOthers", w = 4 },
    { name = "ElectronicStoreMusic", w = 2 },
    { name = "CrateCompactDiscs", w = 2 },
    { name = "LivingRoomShelf", w = 0.5 },
    { name = "BedroomDresser", w = 0.3 },
    { name = "SchoolLockers", w = 0.2 },
}

local items = {
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette01BarbazulVersusElAmorLetal",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette01ElTemploDeMomo",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette01HeroeDelWhisky",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette02LaBestiaPop",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette02MortaCom",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette02RockParaLosDientes",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette03LaMurgaDeLosRenegados",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette03LaParabellumDelBuenPsicopata",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette03RotoYMalParado",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette04DoctorSaturno",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette04PierreElVitricida",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette04UnPacmanEnElSavoy",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette05MurgaDeLaVirgencita",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette05NadieEsPerfecto",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette05UnosPocosPeligrosSensatos",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette06EsaEstrellaEraMiLujo",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette06PoolAvernaYPapusa",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette06YoNoMeCaiDelCielo",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette07MaldicionVaASerUnDiaHermos",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette07MurgaPurga",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette07TeVoyAAtornillar",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette08RopaSucia",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette08Sheriff",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette08Superlogico",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette09NuestroAmoJuegaAlEsclavo",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette09NamFriFrufiFaliFru",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette09PensandoComoUnaAcelga",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette10ElInfiernoEstaEncantadorEsta",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette10UnaPibaConLaRemeraDeGreenpe",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette11CriminalMambo",
    "TM_TrueMooZicPatricioReyYRedonditos.Cassette11RatoMolhado",
}

for _, t in ipairs(targets) do
    local bucket = ProceduralDistributions["list"][t.name]
    if bucket and bucket.items then
        for _, itemName in ipairs(items) do
            table.insert(bucket.items, itemName)
            table.insert(bucket.items, t.w * _multBuilding)
        end
    end
end
