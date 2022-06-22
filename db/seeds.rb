# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Team.create([
    {
        id:1,
        name:"Universidad Católica",
        description:"Tetracampeones del futbol chileno",
        championships:16,
        year_funded: 1937,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"UC"
    },
    {   
        id:2,
        name:"Colo Colo",
        description:"Equipo más ganador, el popular",
        championships:32,
        year_funded: 1925,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"CC"
    },
    {   
        id:3,
        name:"Universidad de Chile",
        description:"Madres malas pa la pelota",
        championships:18,
        year_funded: 1927,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"UCh"
    },
    {   
        id:4,
        name:"Audax Italiano",
        description:"Los verdes de la florida",
        championships:3,
        year_funded: 1967,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"AUD"
    },
    {   
        id:5,
        name:"Ñublense",
        description:"Ñublense",
        championships:0,
        year_funded: 1969,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"ÑUB"
    },
    {   
        id:6,
        name:"Unión Española",
        description:"Los hispanos",
        championships:7,
        year_funded: 1967,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"UE"
    },
    {   
        id:7,
        name:"Curicó",
        description:"Ex del Jens",
        championships:3,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"CUR"
    },
    {   
        id:8,
        name:"Cobresal",
        description:"Cobre del Salvador",
        championships:3,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"CSL"
    },
    {   
        id:9,
        name:"Huachipato",
        description:"Los acereros del CAP",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"HUA"
    },
    {   
        id:10,
        name:"O'Higgins",
        description:"Rancaguinos",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"OHI"
    },
    {   
        id:11,
        name:"Everton",
        description:"Viña del mar, Sausalito",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"EVE"
    },
    {   
        id:12,
        name:"Palestino",
        description:"",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"PAL"
    },
    {   
        id:13,
        name:"Deportes La Serena",
        description:"Papayeros",
        championships:1,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"SER"
    },
    {   
        id:14,
        name:"Unión La Calera",
        description:"Cementeros",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"ULC"
    },
    {   
        id:15,
        name:"Coquimbo Unido",
        description:"Los piratas",
        championships: 0,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"COQ"
    },
    {   
        id:16,
        name:"Deportes Antofagasta",
        description:"Los mineros",
        championships:0,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"ANT"
    },
])

Polla.create([
    {id:1, name:"PoshhhaGol", description: "La polla de los K", exact_goals_points:2, winner_points:1}
])

Match.create!([
    {
        id:1,
        home_id:1,
        vis_id:16,
        home_goals:1,
        vis_goals:0,
        start_time:DateTime.strptime("29/05/2022 17:30", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:2,       #0->sched 1->started 2->fin 3->resch
        status:"",
        week_nr: 15,
        polla_id: 1
    },
    {
        id:2,
        home_id:2,
        vis_id:5,
        home_goals:0,
        vis_goals:0,
        start_time:DateTime.strptime("30/05/2022 18:00", "%d/%m/%Y %H:%M"),
        updated_at:Time.now,
        created_at:Time.now,
        status_enum:2,
        status:"",
        week_nr: 15,
        polla_id: 1
    },
    {
        id:3,
        home_id:8,
        vis_id:3,
        home_goals:1,
        vis_goals:0,
        start_time:DateTime.strptime("28/05/2022 17:30", "%d/%m/%Y %H:%M"),
        updated_at:Time.now,
        created_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 15,
        polla_id: 1
    },
    {
        id:4,
        home_id:11,
        vis_id:2,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("01/07/2022 18:00", "%d/%m/%Y %H:%M"),
        updated_at:Time.now,
        created_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 16,
        polla_id: 1
    },
    {
        id:5,
        home_id:3,
        vis_id:14,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("02/07/2022 17:30", "%d/%m/%Y %H:%M"),
        updated_at:Time.now,
        created_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 16,
        polla_id: 1
    },
    {
        id:6,
        home_id:1,
        vis_id:15,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("03/07/2022 17:30", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 16,
        polla_id: 1
    },
    {
        id:7,
        home_id:2,
        vis_id:13,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("10/07/2022 17:30", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 17,
        polla_id: 1
    },
    {
        id:8,
        home_id:16,
        vis_id:3,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("10/07/2022 15:00", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 17,
        polla_id: 1
    },
    {
        id:9,
        home_id:6,
        vis_id:1,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("11/07/2022 18:00", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 17,
        polla_id: 1
    },
    {
        id:10,
        home_id:4,
        vis_id:2,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("16/07/2022 18:15", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 18,
        polla_id: 1
    },
    {
        id:11,
        home_id:2,
        vis_id:9,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("23/07/2022 17:30", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 19,
        polla_id: 1
    },
    {
        id:12,
        home_id:7,
        vis_id:1,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("17/07/2022 15:00", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 18,
        polla_id: 1
    },
    {
        id:13,
        home_id:1,
        vis_id:12,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("24/07/2022 17:30", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 19,
        polla_id: 1
    },
    {
        id:14,
        home_id:3,
        vis_id:5,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("17/07/2022 17:30", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 18,
        polla_id: 1
    },
    {
        id:15,
        home_id:10,
        vis_id:3,
        home_goals:nil,
        vis_goals:nil,
        start_time:DateTime.strptime("24/07/2022 15:00", "%d/%m/%Y %H:%M"),
        created_at:Time.now,
        updated_at:Time.now,
        status_enum:0,
        status:"",
        week_nr: 19,
        polla_id: 1
    }
])
