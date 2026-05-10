require "Vehicles/VehicleDistributions"

local function initTM_TrueMooZicPatricioReyYRedonditosVehicleDistribution()
    local _sandbox = SandboxVars and SandboxVars["TM_TrueMooZicPatricioReyYRedonditos"] or {}
    local _multVehicle = (_sandbox.VehicleSpawnMultiplier or 1.0)
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
    if VehicleDistributions and VehicleDistributions.GloveBox then
        for _, itemName in ipairs(items) do
            table.insert(VehicleDistributions.GloveBox.items, itemName)
            table.insert(VehicleDistributions.GloveBox.items, 1 * _multVehicle)
        end
    end
    if VehicleDistributions and VehicleDistributions.Trunk then
        for _, itemName in ipairs(items) do
            table.insert(VehicleDistributions.Trunk.items, itemName)
            table.insert(VehicleDistributions.Trunk.items, 0.5 * _multVehicle)
        end
    end
end

Events.OnInitGlobalModData.Add(initTM_TrueMooZicPatricioReyYRedonditosVehicleDistribution)
