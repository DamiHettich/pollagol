# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Team.create([
    {
        name:"Universidad Católica",
        description:"Tetracampeones del futbol chileno",
        championships:16,
        year_funded: 1937,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"UC"
    },
    {
        name:"Colo Colo",
        description:"Equipo más ganador, el popular",
        championships:32,
        year_funded: 1925,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"CC"
    },
    {
        name:"Universidad de Chile",
        description:"Madres malas pa la pelota",
        championships:18,
        year_funded: 1927,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"UCh"
    },
    {
        name:"Audax Italiano",
        description:"Los verdes de la florida",
        championships:3,
        year_funded: 1967,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"AUD"
    },
    {
        name:"Ñublense",
        description:"Ñublense",
        championships:0,
        year_funded: 1969,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"ÑUB"
    },
    {
        name:"Unión Española",
        description:"Los hispanos",
        championships:7,
        year_funded: 1967,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"UE"
    },
    {
        name:"Curicó",
        description:"Ex del Jens",
        championships:3,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"CUR"
    },
    {
        name:"Cobresal",
        description:"Cobre del Salvador",
        championships:3,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"CSL"
    },
    {
        name:"Huachipato",
        description:"Los acereros del CAP",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"HUA"
    },
    {
        name:"O'Higgins",
        description:"Rancaguinos",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"OHI"
    },
    {
        name:"Everton",
        description:"Viña del mar, Sausalito",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"EVE"
    },
    {
        name:"Palestino",
        description:"",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"PAL"
    },
    {
        name:"Deportes La Serena",
        description:"Papayeros",
        championships:1,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"SER"
    },
    {
        name:"Unión La Calera",
        description:"Cementeros",
        championships:2,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"CAL"
    },
    {
        name:"Coquimbo Unido",
        description:"Los piratas",
        championships: 0,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"COQ"
    },
    {
        name:"Deportes Antofagasta",
        description:"Los mineros",
        championships:0,
        year_funded: 1945,
        created_at: Time.now,
        updated_at:Time.now,
        seudo:"ANT"
    },
])

