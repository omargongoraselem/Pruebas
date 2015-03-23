//
//  ViewController.m
//  Calculadora
//
//  Created by Rafael on 18/03/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){


float Valor;
int contador;
int i;
int i2;
float Resultado;
float Primer_Valor;
int Punto;
float Valor_Entero;
    NSMutableArray*Caracteres;
    NSString*Caracteres_String;
    float Valor_Espera;
    NSString*Operador;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSArray *Arreglo_Aguascalientes = [NSArray arrayWithObjects:@"Aguascalientes ",@"Asientos ",@"Calvillo",@"Cosío",@"El Llano",@"Jesús María",@"Pabellón de Arteaga",@"Rincón de Romos",@"San Francisco de los Romo", @"San José de Gracia",@"Tepezalá",nil];
    
    NSArray *Arreglo_BajaCalifornia=[NSArray arrayWithObjects:@"Ensenada",@"Mexicali",@"Tecate",@"Tijuana",@"Playas de Rosarito", nil];
    
    NSArray *Arreglo_BajaCaliforniaSur=[NSArray arrayWithObjects:@"Comondú",@"Mulegé",@"La Paz",@"Los Cabos",@"Loreto", nil];
    
    NSArray *Arreglo_Campeche=[NSArray arrayWithObjects:@"Calkiní",@"Campeche",@"Carmen",@"Champotón",@"Hopelchén",@"Palizada",@"Tenabo",@"Escárcega",@"Calakmul",@"Candelaria", nil];
    
    
     NSArray *Arreglo_Coahuila=[NSArray arrayWithObjects:@"Abasolo",@"Acuña",@"Allende",@"Arteaga",@"Candela",@"Castaños",@"Cuatrociénegas",@"Escobedo",@"Francisco I. Madero",@"Frontera",@"General Cepeda",@"Guerrero",@"Hidalgo",@"Jiménez",@"Juárez",@"Lamadrid",@"Matamoros",@"Monclova",@"Morelos",@"Múzquiz",@"Nadadores",@"Nava",@"Ocampo",@"Parras",@"Piedras Negras",@"Progreso",@"Ramos Arizpe",@"Sabinas",@"Sacramento",@"Saltillo",@"San Buenaventura",@"San Juan de Sabinas",@"San Pedro",@"Sierra Mojada",@"Torreón",@"Viesca",@"Villa Unión",@"Zaragoza", nil];
    
     NSArray *Arreglo_Colima=[NSArray arrayWithObjects:@"Armería",@"Colima",@"Comala",@"Coquimatlán",@"Cuauhtémoc",@"Ixtlahuacán",@"Manzanillo",@"Minatitlán",@"Tecomán",@"Villa de Alvarez", nil];
    
    NSArray *Arreglo_Chiapas=[NSArray arrayWithObjects:@"Acacoyagua",@"Acala",@"Acapetahua",@"Aldama",@"Altamirano",@"Amatán",@"Amatenango de la Frontera",@"Amatenango del Valle",@"Angel Albino Corzo",@"Arriaga",@"Bejucal de Ocampo",@"Bella Vista",@"Benemèrito de las Amèricas",@"Berriozàbal",@"Bochil",@"Cacahoatán",@"Catazajá",@"Chalchihuitán",@"Chamula",@"Chanal",@"Chapultenango",@"Chenalhó",@"Chiapa de Corzo",@"Chiapilla",@"Chicoasén",@"Chicomuselo",@"Chilon",@"Cintalapa",@"Coapilla",@"Comitán de Domínguez",@"Copainalá",@"El Bosque",@"El Porvenir",@"Escuintla",@"Francisco León",@"Frontera Comalapa",@"Frontera Hidalgo",@"Huehuetán",@"Huitiupán",@"Huixtán",@"Huixtla",@"Ixhuatán",@"Ixtacomitán",@"Ixtapa",@"Ixtapangajoya",@"Jiquipilas",@"Jitotol",@"Juárez",@"La Concordia",@"La Grandeza",@"La Independencia",@"La Libertad",@"La Trinitaria",@"Larráinzar",@"Las Margaritas",@"Las Rosas",@"Mapastepec",@"Maravilla Tenejapa",@"Marqués de Comillas",@"Mazapa de Madero",@"Mazatán",@"Metapa",@"Mitontic",@"Montecristo de Guerrero",@"Motozintla",@"Nicolás Ruíz",@"Ocosingo",@"Ocotepec",@"Ocozocoautla de Espinosa",@"Ostuacán",@"Osumacinta",@"Oxchuc",@"Palenque",@"Pantelhó",@"Pantepec",@"Pichucalco",@"Pijijiapan",@"Pueblo Nuevo Solistahuacán",@"Rayón",@"Reforma",@"Sabanilla",@"Salto de Agua",@"San Andrés Duraznal",@"San Cristóbal de las Casas",@"San Fernando",@"San Juan Cancuc",@"San Lucas",@"Santiago el Pinar",@"Siltepec",@"Simojovel",@"Sitalá",@"Socoltenango",@"Solosuchiapa",@"Soyaló",@"Suchiapa",@"Suchiate",@"Sunuapa",@"Tapachula",@"Tapalapa",@"Tapilula",@"Tecpatán",@"Tenejapa",@"Teopisca",@"Tila",@"Tonalá",@"Totolapa",@"Tumbalá",@"Tuxtla Chico",@"Tuxtla Gutiérrez",@"Tuzantán",@"Tzimol",@"Unión Ju†rez",@"Venustiano Carranza",@"Villa Comaltitlán",@"Villa Corzo",@"Villaflores",@"Yajalón",@"Zinacantán", nil];
    
    
    NSArray *Arreglo_Chihuahua=[NSArray arrayWithObjects:@"Ahumada",@"Aldama",@"Allende",@"Aquiles Serdán",@"Ascensión",@"Bachíniva",@"Balleza",@"Batopilas",@"Bocoyna",@"Buenaventura",@"Camargo",@"Carichí",@"Casas Grandes",@"Chihuahua",@"Chínipas",@"Coronado",@"Coyame del Sotol",@"Cuauhtémoc",@"Cusihuiriachi",@"Delicias",@"Dr. Belisario Domínguez",@"El Tule",@"Galeana",@"Gómez Farías",@"Gran Morelos", @"Guachochi",@"Guadalupe", @"Guadalupe y Calvo",@"Guazapares",@"Guerrero",@"Hidalgo del Parral",@"Huejotitán",@"Ignacio Zaragoza",@"Janos", @"Jiménez",@"Juárez",@"Julimes",@"La Cruz", @"López" ,@"Madera",@"Maguarichi",@"Manuel Benavides" ,@"Matachí",@"Matamoros",@"Meoqui",@"Morelos",@"Moris",@"Namiquipa",@"Nonoava",@"Nuevo Casas Grandes",@"Ocampo",@"Ojinaga",@"Praxedis G. Guerrero", @"Riva Palacio",@"Rosales",@"Rosario",@"San Francisco de Borja",@"San Francisco de Conchos",@"San Francisco del Oro",@"Santa Bárbara",@"Santa Isabel", @"Satevó",@"Saucillo",@"Temósachi",@"Urique",@"Uruachi",@"Valle de Zaragoza"
, nil];
    
     NSArray *Arreglo_DistritoFederal=[NSArray arrayWithObjects:@"Alvaro Obregón",@"Azcapotzalco",@"Benito Juárez",@"Coyoacán",@"Cuajimalpa de Morelos",@"Cuauhtémoc",@"Gustavo A. Madero",@"Iztacalco",@"Iztapalapa",@"La Magdalena Contreras",@"Miguel Hidalgo",@"Milpa Alta",@"Tláhuac",@"Tlalpan",@"Venustiano Carranza",@"Xochimilco", nil];
    
    
     NSArray *Arreglo_Durango=[NSArray arrayWithObjects:@"Canatlán",@"Canelas",@"Coneto de Comonfort",@"Cuencamé",@"Durango",@"El Oro",@"Gómez Palacio",@"Gral. Simón Boívar",@"Guadalupe Victoria",@"Guanaceví",@"Hidalgo",@"Indé", @"Lerdo",@"Mapimí",@"Mezquital",@"Nazas",@"Nombre de Dios",@"Nuevo Ideal",@"Ocampo",@"Otáez",@"Pánuco de Coronado",@"Peñón Blanco",@"Poanas",@"Pueblo Nuevo",@"Rodeo",@"San Bernardo",@"San Dimas",@"San Juan de Guadalupe",@"San Juan del Río",@"San Luis del Cordero",@"San Pedro del Gallo",@"Santa Clara",@"Santiago Papasquiaro",@"Súchil",@"Tamazula",@"Tepehuanes",@"Tlahualilo",@"Topia",@"Vicente Guerrero", nil];
    
    
    NSArray *Arreglo_Guanajuato=[NSArray arrayWithObjects:@"Abasolo",@"Acámbaro",@"Allende",@"Apaseo el Alto",@"Apaseo el Grande",@"Atarjea",@"Celaya",@"Comonfort",@"Coroneo",@"Cortazar",@"Cuerámaro",@"Doctor Mora",@"Dolores Hidalgo",@"Guanajuato",@"Huanímaro",@"Irapuato",@"Jaral del Progreso",@"Jerécuaro",@"León",@"Manuel Doblado",@"Moroleón",@"Ocampo",@"Pénjamo",@"Pueblo Nuevo",@"Purísima del Rincón",@"Romita",@"Salamanca",@"Salvatierra",@"San Diego de la Unión",@"San Felipe",@"San Francisco del Rincón",@"San José Iturbide",@"San Luis de la Paz",@"Santa Catarina",@"Santa Cruz de Juventino Rosas",@"Santiago Maravatío",@"Silao",@"Tarandacuao",@"Tarimoro",@"Tierra Blanca",@"Uriangato",@"Valle de Santiago",@"Victoria",@"Villagrán",@"Xichú",@"Yuriria", nil];
    
    
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:@"Acapulco de Juárez",@"Acatepec",@"Ahuacuotzingo",@"Ajuchitlán del Progreso",@"Alcozauca de Guerrero",@"Alpoyeca",@"Apaxtla",@"Arcelia",@"Atenango del Río",@"Atlamajalcingo del Monte",@"Atlixtac",@"Atoyac de Alvarez",@"Ayutla de los Libres",@"Azoyú",@"Benito Juárez",@"Buenavista de Cuéllar",@"Chilapa de Alvarez",@"Chilpancingo de los Bravo",@"Coahuayutla de José María Izazaga",@"Cochoapa el Grande",@"Cocula",@"Copala",@"Copalillo",@"Copanatoyac",@"Coyuca de Benítez",@"Coyuca de Catalán",@"Cuajinicuilapa",@"Cualác",@"Cuautepec",@"Cuetzala del Progreso",@"Cutzamala de Pinzón",@"Eduardo Neri",@"Florencio Villarreal",@"General Canuto A. Neri",@"General Heliodoro Castillo",@"Huamuxtitlán",@"Huitzuco de los Figueroa",@"Iguala de la Independencia",@"Igualapa",@"Ixcateopan de Cuauhtémoc",@"José Azueta",@"José Joaquin de Herrera",@"Juan R. Escudero",@"La Unión de Isidoro Montes de Oca",@"Leonardo Bravo",@"Malinaltepec",@"Marquelia",@"Mártir de Cuilapan",@"Metlatónoc",@"Mochitlán",@"Olinalá",@"Ometepec",@"Pedro Ascencio Alquisiras",@"Petatlán",@"Pilcaya",@"Pungarabato",@"Quechultenango",@"San Luis Acatlán",@"San Marcos",@"San Miguel Totolapan",@"Taxco de Alarcón",@"Tecoanapa",@"Técpan de Galeana",@"Teloloapan",@"Tepecoacuilco de Trujano",@"Tetipac",@"Tixtla de Guerrero",@"Tlacoachistlahuaca",@"Tlacoapa",@"Tlalchapa",@"Tlalixtaquilla de Maldonado",@"Tlapa de Comonfort",@"Tlapehuala",@"Xalpatláhuac",@"Xochihuehuetlán",@"Xochistlahuaca",@"Zapotitlán Tablas",@"Zirándaro",@"Zitlala", nil];
    
    
       NSArray *Arreglo_Hidalgo=[NSArray arrayWithObjects:@"Acatlán",@"Acaxochitlán",@"Actopan",@"Agua Blanca de Iturbide",@"Ajacuba",@"Alfajayucan",@"Almoloya",@"Apan",@"Atitalaquia",@"Atlapexco",@"Atotonilco de Tula",@"Atotonilco el Grande",@"Calnali",@"Cardonal",@"Chapantongo",@"Chapulhuacán",@"Chilcuautla",@"Cuautepec de Hinojosa",@"El Arenal",@"Eloxochitlán",@"Emiliano Zapata",@"Epazoyucan",@"Francisco I. Madero",@"Huasca de Ocampo",@"Huautla",@"Huazalingo",@"Huehuetla",@"Huejutla de Reyes",@"Huichapan",@"Ixmiquilpan",@"Jacala de Ledezma",@"Jaltocán",@"Juárez Hidalgo",@"La Misión",@"Lolotla",@"Metepec",@"Metztitlán",@"Mineral de la Reforma",@"Mineral del Chico",@"Mineral del Monte",@"Mixquiahuala de Juárez",@"Molango de Escamilla",@"Nicolás Flores",@"Nopala de Villagrán",@"Omitlán de Juárez",@"Pachuca de Soto",@"Pacula",@"Pisaflores",@"Progreso de Obregón",@"San Agustín Metzquititlán",@"San Agustín Tlaxiaca",@"San Bartolo Tutotepec",@"San Felipe Orizatlán",@"San Salvador",@"Santiago de Anaya",@"Santiago Tulantepec de Lugo Guerrero",@"Singuilucan",@"Tasquillo",@"Tecozautla",@"Tenango de Doria",@"Tepeapulco",@"Tepehuacán de Guerrero",@"Tepeji del Río de Ocampo",@"Tepetitlán",@"Tetepango",@"Tezontepec de Aldama",@"Tianguistengo",@"Tizayuca",@"Tlahuelilpan",@"Tlahuiltepa",@"Tlanalapa",@"Tlanchinol",@"Tlaxcoapan",@"Tolcayuca",@"Tula de Allende",@"Tulancingo de Bravo",@"Villa de Tezontepec",@"Xochiatipan",@"Xochicoatlán",@"Yahualica",@"Zacualtipán de Angeles",@"Zapotlán de Juárez",@"Zempoala",@"Zimapán", nil];
    
    
       NSArray *Arreglo_Jalisco=[NSArray arrayWithObjects:@"Acatic",@"Acatlán de Juárez",@"Ahualulco de Mercado",@"Amacueca",@"Amatitán",@"Ameca",@"Arandas",@"Atemajac de Brizuela",@"Atengo",@"Atenguillo",@"Atotonilco el Alto",@"Atoyac",@"Autlán de Navarro",@"Ayotlán",@"Ayutla",@"Bolaños",@"Cabo Corrientes",@"Cañadas de Obregón",@"Casimiro Castillo",@"Chapala",@"Chimaltitán", @"Chiquilistlán", @"Cihuatlán",@"Cocula",@"Colotlán",@"Concepción de Buenos Aires",@"Cuautitlán de García Barragán",@"Cuautla",@"Cuquío",@"Degollado",@"Ejutla",@"EL Arenal",@"El Grullo",@"El Limón",@"El Salto",@"Encarnación de Díaz",@"Etzatlán",@"Gómez Farías",@"Guachinango",@"Guadalajara",@"Hostotipaquillo",@"Huejúcar",@"Huejuquilla el Alto",@"Ixtlahuacán de los Membrillos",@"Ixtlahuacán del Río",@"Jalostotitlán",@"Jamay",@"Jesús María",@"Jilotlán de los Dolores",@"Jocotepec",@"Juanacatlán",@"Juchitlán",@"La Barca",@"La Huerta",@"La Manzanilla de la Paz",@"Lagos de Moreno",@"Magdalena",@"Mascota",@"Mazamitla", @"Mexticacán",@"Mezquitic",@"Mixtlán",@"Ocotlán",@"Ojuelos de Jalisco",@"Pihuamo",@"Poncitlán",@"Puerto Vallarta",@"Quitupan",@"San Cristóbal de la Barranca",@"San Diego de Alejandría",@"San Gabriel",@"San Juan de los Lagos",@"San Juanito de Escobedo",@"San Julián",@"San Marcos",@"San Martín de Bolaños",@"San Martín Hidalgo",@"San Miguel el Alto",@"San Sebastián del Oeste",@"Santa María de los ?ngeles",@"Santa María del Oro",@"Sayula",@"Tala",@"Talpa de Allende",@"Tamazula de Gordiano", @"Tapalpa",@"Tecalitlán",@"Techaluta de Montenegro", @"Tecolotlán",@"Tenamaxtlán",@"Teocaltiche",@"Teocuitatlán de Corona",@"Tepatitlán de Morelos",@"Tequila",@"Teuchitlán",@"Tizapán el Alto",@"Tlajomulco de Zúñiga",@"Tlaquepaque",@"Tolimán",@"Tomatlán", @"Tonalá",@"Tonaya",@"Tonila", @"Totatiche",@"Tototlán",@"Tuxcacuesco",@"Tuxcueca",@"Tuxpan",@"Unión de San Antonio",@"Unión de Tula",@"Valle de Guadalupe",@"Valle de Juárez",@"Villa Corona",@"Villa Guerrero",@"Villa Hidalgo",@"Villa Purificación",@"Yahualica de González Gallo",@"Zacoalco de Torres",@"Zapopan",@"Zapotiltic",@"Zapotitlán de Vadillo",@"Zapotlán del Rey",@"Zapotlán el Grande",@"Zapotlanejo", nil];
    
    
       NSArray *Arreglo_Mexico=[NSArray arrayWithObjects:@"Acambay",@"Acolman",@"Aculco",@"Almoloya de Alquisiras",@"Almoloya de Juárez",@"Almoloya del Río",@"Amanalco",@"Amatepec",@"Amecameca", @"Apaxco",@"Atenco",@"Atizapán",@"Atizapán de Zaragoza",@"Atlacomulco",@"Atlautla", @"Axapusco",@"Ayapango",@"Calimaya",@"Capulhuac",@"Chalco",@"Chapa de Mota",@"Chapultepec",@"Chiautla",@"Chicoloapan",@"Chiconcuac",@"Chimalhuacán",@"Coacalco de Berriozábal",@"Coatepec Harinas",@"Cocotitlán",@"Coyotepec", @"Cuautitlán",@"Cuautitlán Izcalli",@"Donato Guerra",@"Ecatepec de Morelos",@"Ecatzingo",@"El Oro",@"Huehuetoca",@"Hueypoxtla",@"Huixquilucan",@"Isidro Fabela",@"Ixtapaluca",@"Ixtapan de la Sal",@"Ixtapan del Oro",@"Ixtlahuaca",@"Jaltenco", @"Jilotepec",@"Jilotzingo",@"Jiquipilco",@"Jocotitlán",@"Joquicingo",@"Juchitepec",@"La Paz",@"Lerma",@"Luvianos",@"Malinalco",@"Melchor Ocampo",@"Metepec", @"Mexicaltzingo",@"Morelos",@"Naucalpan de Juárez",@"Nextlalpan",@"Nezahualcóyotl", @"Nicolás Romero",@"Nopaltepec",@"Ocoyoacac",@"Ocuilan",@"Otumba", @"Otzoloapan",@"Otzolotepec",@"Ozumba",@"Papalotla",@"Polotitlán",@"Rayón",@"San Antonio la Isla",@"San Felipe del Progreso",@"San José del Rincón",@"San Martín de las Pirámides",@"San Mateo Atenco",@"San Simón de Guerrero",@"Santo Tomás",@"Soyaniquilpan de Juárez",@"Sultepec",@"Tecámac",@"Tejupilco",@"Temamatla", @"Temascalapa",@"Temascalcingo",@"Temascaltepec",@"Temoaya",@"Tenancingo",@"Tenango del Aire",@"Tenango del Valle",@"Teoloyucán",@"Teotihuacán",@"Tepetlaoxtoc", @"Tepetlixpa",@"Tepotzotlán",@"Tequixquiac",@"Texcaltitlán",@"Texcalyacac",@"Texcoco",@"Tezoyuca",@"Tianguistenco",@"Timilpan",@"Tlalmanalco",@"Tlalnepantla de Baz",@"Tlatlaya",@"Toluca",@"Tonanitla",@"Tonatico",@"Tultepec",@"Tultitlán",@"Valle de Bravo",@"Valle de Chalco Solidaridad",@"Villa de Allende",@"Villa del Carbón",@"Villa Guerrero",@"Villa Victoria",@"Xalatlaco",@"Xonacatlán",@"Zacazonapan",@"Zacualpan",@"Zinacantepec",@"Zumpahuacán",@"Zumpango", nil];
    
    NSArray *Arreglo_Michoacan=[NSArray arrayWithObjects:@"Acuitzio",@"Aguililla",@"Alvaro Obregón",@"Angamacutiro",@"Angangueo",@"Apatzingán",@"Aporo",@"Aquila",@"Ario",@"Arteaga",@"Briseñas",@"Buenavista",@"Carácuaro",@"Charapan",@"Charo",@"Chavinda",@"Cherán",@"Chilchota",@"Chinicuila",@"Chucándiro",@"Churintzio",@"Churumuco",@"Coahuayana",@"Coalcomán de Vázquez Pallares",@"Coeneo",@"Cojumatlán de Régules",@"Contepec",@"Copándaro",@"Cotija",@"Cuitzeo",@"Ecuandureo",@"Epitacio Huerta",@"Erongarícuaro",@"Gabriel Zamora",@"Hidalgo",@"Huandacareo",@"Huaniqueo", @"Huetamo",@"Huiramba",@"Indaparapeo",@"Irimbo",@"Ixtlán",@"Jacona",@"Jiménez",@"Jiquilpan",@"José Sixto Verduzco",@"Juárez",@"Jungapeo",@"La Huacana",@"La Piedad",@"Lagunillas",@"Lázaro Cárdenas",@"Los Reyes",@"Madero",@"Maravatío",@"Marcos Castellanos",@"Morelia",@"Morelos",@"Múgica",@"Nahuatzen",@"Nocupétaro",@"Nuevo Parangaricutiro",@"Nuevo Urecho",@"Numarán",@"Ocampo", @"Pajacuarán", @"Panindícuaro",@"Paracho",@"Parácuaro",@"Pátzcuaro",@"Penjamillo",@"Peribán",@"Purépero",@"Puruándiro",@"Queréndaro",@"Quiroga",@"Sahuayo",@"Salvador Escalante",@"San Lucas",@"Santa Ana Maya",@"Senguio",@"Susupuato",@"Tacámbaro", @"Tancítaro",@"Tangamandapio", @"Tangancícuaro",@"Tanhuato",@"Taretan",@"Tarímbaro",@"Tepalcatepec",@"Tinglindín",@"Tingambato",@"Tiquicheo de Nicolás Romero",@"Tlalpujahua",@"Tlazazalca",@"Tocumbo", @"Tumbiscatío",@"Turicato",@"Tuxpan", @"Tuzantla",@"Tzintzuntzan", @"Tzitzio",@"Uruapan",@"Venustiano Carranza",@"Villamar",@"Vista Hermosa",@"Yurécuaro", @"Zacapu",@"Zamora", @"Zináparo",@"Zinapécuaro",@"Ziracuaretiro",@"Zitácuaro", nil];
    
    
     NSArray *Arreglo_Morelos=[NSArray arrayWithObjects:@"Amacuzac",@"Atlatlahucan",@"Axochiapan",@"Ayala",@"Coatlán del Río",@"Cuautla",@"Cuernavaca",@"Emiliano Zapata",@"Huitzilac",@"Jantetelco",@"Jiutepec",@"Jojutla",@"Jonacatepec",@"Mazatepec",@"Miacatlán",@"Ocuituco",@"Puente de Ixtla",@"Temixco",@"Temoac",@"Tepalcingo",@"Tepoztlán",@"Tetecala",@"Tetela del Volcán",@"Tlalnepantla",@"Tlaltizapán",@"Tlaquiltenango",@"Tlayacapan",@"Totolapan",@"Xochitepec",@"Yautepec",@"Yecapixtla",@"Zacatepec de Hidalgo",@"Zacualpan de Amilpas", nil];
    
       NSArray *Arreglo_Nayarit=[NSArray arrayWithObjects:@"Acaponeta",@"Ahuacatlán",@"Amatlán de Cañas",@"Bahía de Banderas",@"Compostela",@"Del Nayar",@"Huajicori",@"Ixtlán del Río",@"Jala",@"La Yesca",@"Rosamorada",@"Ruíz",@"San Blas",@"San Pedro Lagunillas",@"Santa María del Oro",@"Santiago Ixcuintla",@"Tecuala",@"Tepic",@"Tuxpan",@"Xalisco", nil];
    
    
    
       NSArray *Arreglo_NuevoLeon=[NSArray arrayWithObjects:@"Abasolo",@"Agualeguas",@"Allende",@"Anáhuac",@"Apodaca",@"Aramberri",@"Bustamante",@"Cadereyta Jiménez",@"Carmen",@"Cerralvo",@"China",@"Ciénega de Flores",@"Dr. Coss",@"Dr. Arroyo",@"Dr. González",@"Galeana",@"García",@"Gral. Escobedo",@"Gral. Terán",@"Gral. Treviño",@"Gral. Zaragoza",@"Gral. Zuazua",@"Gral. Bravo",@"Guadalupe",@"Hidalgo",@"Higueras",@"Hualahuises",@"Iturbide",@"Juárez",@"Lampazos de Naranjo",@"Linares",@"Los Aldamas",@"Los Herreras",@"Los Ramones",@"Marín",@"Melchor Ocampo",@"Mier y Noriega",@"Mina",@"Montemorelos",@"Monterrey",@"Parás",@"Pesquería",@"Rayones",@"Sabinas Hidalgo",@"Salinas Victoria",@"San Nicolás de los Garza",@"San Pedro Garza García",@"Santa Catarina",@"Santiago",@"Vallecillo",@"Villaldama", nil];
    
    
       NSArray *Arreglo_Oaxaca=[NSArray arrayWithObjects:@"Abejones",@"Acatlán de Pérez Figueroa",@"Animas Trujano",@"Asunción Cacalotepec",@"Asunción Cuyotepeji",@"Asunción Ixtaltepec",@"Asunción Nochixtlán",@"Asunción Ocotlán",@"Asunción Tlacolulita",@"Ayoquezco de Aldama",@"Ayotzintepec",@"Calihualá",@"Candelaria Loxicha",@"Capulálpam de Méndez",@"Chahuites",@"Chalcatongo de Hidalgo",@"Chiquihuitlán de Benito Juárez",@"Ciénega de Zimatlán",@"Ciudad Ixtepec",@"Coatecas Altas",@"Coicoyán de las Flores",@"Concepción Buenavista",@"Concepción Pápalo",@"Constancia del Rosario",@"Cosolapa",@"Cosoltepec",@"Cuilápam de Guerrero",@"Cuyamecalco Villa de Zaragoza",@"El Barrio de la Soledad",@"El Espinal",@"Eloxochitlán de Flores Magón",@"Fresnillo de Trujano",@"Guadalupe de Ramírez",@"Guadalupe Etla",@"Guelatao de Juárez",@"Guevea de Humboldt",@"Heroica Ciudad de Ejutla de Crespo",@"Heroica Ciudad de Huajuapan de Leó",@"Heroica Ciudad de Tlaxiaco",@"Huautepec",@"Huautla de Jiménez",@"Ixpantepec Nieves",@"Ixtlán de Juárez",@"Juchitán de Zaragoza",@"La Compañía",@"La Pe",@"La Reforma",@"La Trinidad Vista Hermosa",@"Loma Bonita",@"Magdalena Apasco",@"Magdalena Jaltepec",@"Magdalena Mixtepec",@"Magdalena Ocotlán",@"Magdalena Peñasco",@"Magdalena Teitipac",@"Magdalena Tequisistlán",@"Magdalena Tlacotepec",@"Magdalena Yodocono de Porfirio Día",@"Magdalena Zahuatlán",@"Mariscala de Juárez",@"Mártires de Tacubaya",@"Matías Romero Avendaño",@"Mazatlán Villa de Flores",@"Mesones Hidalgo",@"Miahuatlán de Porfirio Díaz",@"Mixistlán de la Reforma",@"Monjas",@"Natividad",@"Nazareno Etla",@"Nejapa de Madero",@"Nuevo Zoquiapam",@"Oaxaca de Juárez",@"Ocotlán de Morelos",@"Pinotepa de Don Luis",@"Pluma Hidalgo",@"Putla Villa de Guerrero",@"Reforma de Pineda",@"Reyes Etla",@"Rojas de Cuauhtémoc",@"Salina Cruz",@"San Agustín Amatengo",@"San Agustín Atenango",@"San Agustín Chayuco",@"San Agustín de las Juntas",@"San Agustín Etla",@"San Agustín Loxicha",@"San Agustín Tlacotepec",@"San Agustín Yatareni",@"San Andrés Cabecera Nueva",@"San Andrés Dinicuiti",@"San Andrés Huaxpaltepec",@"San Andrés Huayapam",@"San Andrés Ixtlahuaca",@"San Andrés Lagunas",@"San Andrés Nuxiño",@"San Andrés Paxtlán",@"San Andrés Sinaxtla",@"San Andrés Solaga",@"San Andrés Teotilalpam",@"San Andrés Tepetlapa",@"San Andrés Yaá",@"San Andrés Zabache",@"San Andrés Zautla",@"San Antonino Castillo Velasco",@"San Antonino el Alto",@"San Antonino Monte Verde",@"San Antonio Acutla",@"San Antonio de la Cal",@"San Antonio Huitepec",@"San Antonio Nanahuatípam",@"San Antonio Sinicahua",@"San Antonio Tepetlapa",@"San Baltazar Chichicápam",@"San Baltazar Loxicha",@"San Baltazar Yatzachi el Bajo",@"San Bartolo Coyotepec",@"San Bartolo Soyaltepec",@"San Bartolo Yautepec",@"San Bartolomé Ayautla",@"San Bartolomé Loxicha",@"San Bartolomé Quialana",@"San Bartolomé Yucuañe",@"San Bartolomé Zoogocho",@"San Bernardo Mixtepec",@"San Blas Atempa",@"San Carlos Yautepec",@"San Cristóbal Amatlán",@"San Cristóbal Amoltepec",@"San Cristóbal Lachirioag",@"San Cristóbal Suchixtlahuaca",@"San Dionisio del Mar",@"San Dionisio Ocotepec",@"San Dionisio Ocotlán",@"San Esteban Atatlahuca",@"San Felipe Jalapa de Díaz",@"San Felipe Tejalapam",@"San Felipe Usila",@"San Francisco Cahuacuá",@"San Francisco Cajonos",@"San Francisco Chapulapa",@"San Francisco Chindúa",@"San Francisco del Mar",@"San Francisco Huehuetlán",@"San Francisco Ixhuatán",@"San Francisco Jaltepetongo",@"San Francisco Lachigoló",@"San Francisco Logueche",@"San Francisco Nuxaño",@"San Francisco Ozolotepec",@"San Francisco Sola",@"San Francisco Telixtlahuaca",@"San Francisco Teopan",@"San Francisco Tlapancingo",@"San Gabriel Mixtepec",@"San Ildefonso Amatlán",@"San Ildefonso Sola",@"San Ildefonso Villa Alta",@"San Jacinto Amilpas",@"San Jacinto Tlacotepec",@"San Jerónimo Coatlán",@"San Jerónimo Silacayoapilla",@"San Jerónimo Sosola",@"San Jerónimo Taviche",@"San Jerónimo Tecoátl",@"San Jerónimo Tlacochahuaya",@"San Jorge Nuchita",@"San José Ayuquila",@"San José Chiltepec",@"San José del Peñasco",@"San José del Progreso",@"San José Estancia Grande",@"San José Independencia",@"San José Lachiguiri",@"San José Tenango",@"San Juan Ñumí",@"San Juan Achiutla",@"San Juan Atepec",@"San Juan Bautista Atatlahuca",@"San Juan Bautista Coixtlahuaca",@"San Juan Bautista Cuicatlán",@"San Juan Bautista Guelache",@"San Juan Bautista Jayacatlán",@"San Juan Bautista Lo de Soto",@"San Juan Bautista Suchitepec",@"San Juan Bautista Tlachichilco",@"San Juan Bautista Tlacoatzintepec",@"San Juan Bautista Tuxtepec",@"San Juan Bautista Valle Nacional",@"San Juan Cacahuatepec",@"San Juan Chicomezúchil",@"San Juan Chilateca",@"San Juan Cieneguilla",@"San Juan Coatzóspam",@"San Juan Colorado",@"San Juan Comaltepec",@"San Juan Cotzocón",@"San Juan de los Cués",@"San Juan del Estado",@"San Juan del Río",@"San Juan Diuxi",@"San Juan Evangelista Analco",@"San Juan Guelavía",@"San Juan Guichicovi",@"San Juan Ihualtepec",@"San Juan Juquila Mixes",@"San Juan Juquila Vijanos",@"San Juan Lachao",@"San Juan Lachigalla",@"San Juan Lajarcia",@"San Juan Lalana",@"San Juan Mazatlán",@"San Juan Mixtepec",@"San Juan Mixtepec",@"San Juan Ozolotepec",@"San Juan Petlapa",@"San Juan Quiahije",@"San Juan Quiotepec",@"San Juan Sayultepec",@"San Juan Tabaá",@"San Juan Tamazola",@"San Juan Teita",@"San Juan Teitipac",@"San Juan Tepeuxila",@"San Juan Teposcolula",@"San Juan Yaeé",@"San Juan Yatzona",@"San Juan Yucuita",@"San Lorenzo",@"San Lorenzo Albarradas",@"San Lorenzo Cacaotepec",@"San Lorenzo Cuaunecuiltitla",@"San Lorenzo Texmelucan",@"San Lorenzo Victoria",@"San Lucas Camotlán",@"San Lucas Ojitlán",@"San Lucas Quiaviní",@"San Lucas Zoquiápam",@"San Luis Amatlán",@"San Marcial Ozolotepec",@"San Marcos Arteaga",@"San Martín de los Cansecos",@"San Martín Huamelúlpam",@"San Martín Itunyoso",@"San Martín Lachilá",@"San Martín Peras",@"San Martín Tilcajete",@"San Martín Toxpalan",@"San Martín Zacatepec",@"San Mateo Cajonos",@"San Mateo del Mar",@"San Mateo Etlatongo",@"San Mateo Nejápam",@"San Mateo Peñasco",@"San Mateo Piñas",@"San Mateo Río Hondo",@"San Mateo Sindihui",@"San Mateo Tlapiltepec",@"San Mateo Yoloxochitlán",@"San Melchor Betaza",@"San Miguel Achiutla",@"San Miguel Ahuehuetitlán",@"San Miguel Aloápam",@"San Miguel Amatitlán",@"San Miguel Amatlán",@"San Miguel Chicahua",@"San Miguel Chimalapa",@"San Miguel Coatlán",@"San Miguel del Puerto",@"San Miguel del Río",@"San Miguel Ejutla",@"San Miguel el Grande",@"San Miguel Huautla",@"San Miguel Mixtepec",@"San Miguel Panixtlahuaca",@"San Miguel Peras",@"San Miguel Piedras",@"San Miguel Quetzaltepec",@"San Miguel Santa Flor",@"San Miguel Soyaltepec",@"San Miguel Suchixtepec",@"San Miguel Tecomatlán",@"San Miguel Tenango",@"San Miguel Tequixtepec",@"San Miguel Tilquiápam",@"San Miguel Tlacamama",@"San Miguel Tlacotepec",@"San Miguel Tulancingo",@"San Miguel Yotao",@"San Nicolás",@"San Nicolás Hidalgo",@"San Pablo Coatlán",@"San Pablo Cuatro Venados",@"San Pablo Etla",@"San Pablo Huitzo",@"San Pablo Huixtepec",@"San Pablo Macuiltianguis",@"San Pablo Tijaltepec",@"San Pablo Villa de Mitla",@"San Pablo Yaganiza",@"San Pedro Amuzgos",@"San Pedro Apóstol",@"San Pedro Atoyac",@"San Pedro Cajonos",@"San Pedro Comitancillo",@"San Pedro Coxcaltepec Cántaros",@"San Pedro el Alto",@"San Pedro Huamelula",@"San Pedro Huilotepec",@"San Pedro Ixcatlán",@"San Pedro Ixtlahuaca",@"San Pedro Jaltepetongo",@"San Pedro Jicayán",@"San Pedro Jocotipac",@"San Pedro Juchatengo",@"San Pedro Mártir",@"San Pedro Mártir Quiechapa",@"San Pedro Mártir Yucuxaco",@"San Pedro Mixtepec",@"San Pedro Mixtepec",@"San Pedro Molinos",@"San Pedro Nopala",@"San Pedro Ocopetatillo",@"San Pedro Ocotepec",@"San Pedro Pochutla",@"San Pedro Quiatoni",@"San Pedro Sochiapam",@"San Pedro Tapanatepec",@"San Pedro Taviche",@"San Pedro Teozacoalco",@"San Pedro Teutila",@"San Pedro Tidaá",@"San Pedro Topiltepec",@"San Pedro Totolapa",@"San Pedro y San Pablo Ayutla",@"San Pedro y San Pablo Teposcolula",@"San Pedro y San Pablo Tequixtepec",@"San Pedro Yaneri",@"San Pedro Yólox",@"San Pedro Yucunama",@"San Raymundo Jalpan",@"San Sebastián Abasolo",@"San Sebastián Coatlán",@"San Sebastián Ixcapa",@"San Sebastián Nicananduta",@"San Sebastián Río Hondo",@"SanSebastián Tecomaxtlahuaca",@"San Sebastián Teitipac",@"San Sebastián Tutla",@"San Simón Almolongas",@"San Simón Zahuatlán",@"San Vicente Coatlán",@"San Vicente Lachixío",@"San Vicente Nuñú",@"Santa Ana",@"Santa Ana Ateixtlahuaca",@"Santa Ana Cuauhtémoc",@"Santa Ana del Valle",@"Santa Ana Tavela",@"Santa Ana Tlapacoyan",@"Santa Ana Yareni",@"Santa Ana Zegache",@"Santa Catalina Quierí",@"Santa Catarina Cuixtla",@"Santa Catarina Ixtepeji",@"Santa Catarina Juquila",@"Santa Catarina Lachatao",@"Santa Catarina Loxicha",@"Santa Catarina Mechoacán",@"Santa Catarina Minas",@"Santa Catarina Quiané",@"Santa Catarina Quioquitani",@"Santa Catarina Tayata",@"Santa Catarina Ticuá",@"Santa Catarina Yosonotú",@"Santa Catarina Zapoquila",@"Santa Cruz Acatepec",@"Santa Cruz Amilpas",@"Santa Cruz de Bravo",@"Santa Cruz Itundujia",@"Santa Cruz Mixtepec",@"Santa Cruz Nundaco",@"Santa Cruz Papalutla",@"Santa Cruz Tacache de Mina",@"Santa Cruz Tacahua",@"Santa Cruz Tayata",@"Santa Cruz Xitla",@"Santa Cruz Xoxocotlán",@"Santa Cruz Zenzontepec",@"Santa Gertrudis",@"Santa Inés de Zaragoza",@"Santa Inés del Monte",@"Santa Inés Yatzeche",@"Santa Lucía del Camino",@"Santa Lucía Miahuatlán",@"Santa Lucía Monteverde",@"Santa Lucía Ocotlán",@"Santa Magdalena Jicotlán",@"Santa María Alotepec",@"Santa María Apazco",@"Santa María Atzompa",@"Santa María Camotlán",@"Santa María Chachoápam",@"Santa María Chilchotla",@"Santa María Chimalapa",@"Santa María Colotepec",@"Santa María Cortijo",@"Santa María Coyotepec",@"Santa María del Rosario",@"Santa María del Tule",@"Santa María Ecatepec",@"Santa María Guelacé",@"Santa María Guienagati",@"Santa María Huatulco",@"Santa María Huazolotitlán",@"Santa María Ipalapa",@"Santa María Ixcatlán",@"Santa María Jacatepec",@"Santa María Jalapa del Marqués",@"Santa María Jaltianguis",@"Santa María la Asunción",@"Santa María Lachixío",@"Santa María Mixtequilla",@"Santa María Nativitas",@"Santa María Nduayaco",@"Santa María Ozolotepec",@"Santa María Pápalo",@"Santa María Peñoles",@"Santa María Petapa",@"Santa María Quiegolani",@"Santa María Sola",@"Santa María Tataltepec",@"Santa María Tecomavaca",@"Santa María Temaxcalapa",@"Santa María Temaxcaltepec",@"Santa María Teopoxco",@"Santa María Tepantlali",@"Santa María Texcatitlán",@"Santa María Tlahuitoltepec",@"Santa María Tlalixtac",@"Santa María Tonameca",@"Santa María Totolapilla",@"Santa María Xadani",@"Santa María Yalina",@"Santa María Yavesía",@"Santa María Yolotepec",@"Santa María Yosoyúa",@"Santa María Yucuhiti",@"Santa María Zacatepec",@"Santa María Zaniza",@"Santa María Zoquitlán",@"Santiago Amoltepec",@"Santiago Apoala",@"Santiago Apóstol",@"Santiago Astata",@"Santiago Atitlán",@"Santiago Ayuquililla",@"Santiago Cacaloxtepec",@"Santiago Camotlán",@"Santiago Chazumba",@"Santiago Choapam",@"Santiago Comaltepec",@"Santiago del Río",@"Santiago Huajolotitlán",@"Santiago Huauclilla",@"Santiago Ihuitlán Plumas",@"Santiago Ixcuintepec",@"Santiago Ixtayutla",@"Santiago Jamiltepec",@"Santiago Jocotepec",@"Santiago Juxtlahuaca",@"Santiago Lachiguiri",@"Santiago Lalopa",@"Santiago Laollaga",@"Santiago Laxopa",@"Santiago Llano Grande",@"Santiago Matatlán",@"Santiago Miltepec",@"Santiago Minas",@"Santiago Nacaltepec",@"Santiago Nejapilla",@"Santiago Niltepec",@"Santiago Nundiche",@"Santiago Nuyoó",@"Santiago Pinotepa Nacional",@"Santiago Suchilquitongo",@"Santiago Tamazola",@"Santiago Tapextla",@"Santiago Tenango",@"Santiago Tepetlapa",@"Santiago Tetepec",@"Santiago Texcalcingo",@"Santiago Textitlán",@"Santiago Tilantongo",@"Santiago Tillo",@"Santiago Tlazoyaltepec",@"Santiago Xanica",@"Santiago Xiacuí",@"Santiago Yaitepec",@"Santiago Yaveo",@"Santiago Yolomécatl",@"Santiago Yosondúa",@"Santiago Yucuyachi",@"Santiago Zacatepec",@"Santiago Zoochila",@"Santo Domingo Albarradas",@"Santo Domingo Armenta",@"Santo Domingo Chihuitán",@"Santo Domingo de Morelos",@"Santo Domingo Ingenio",@"Santo Domingo Ixcatlán",@"Santo Domingo Nuxaá",@"Santo Domingo Ozolotepec",@"Santo Domingo Petapa",@"Santo Domingo Roayaga",@"Santo Domingo Tehuantepec",@"Santo Domingo Teojomulco",@"Santo Domingo Tepuxtepec",@"Santo Domingo Tlatayápam",@"Santo Domingo Tomaltepec",@"Santo Domingo Tonalá",@"Santo Domingo Tonaltepec",@"Santo Domingo Xagacía",@"Santo Domingo Yanhuitlán",@"Santo Domingo Yodohino",@"Santo Domingo Zanatepec",@"Santo Tomás Jalieza",@"Santo Tomás Mazaltepec",@"Santo Tomás Ocotepec",@"Santo Tomás Tamazulapan",@"Santos Reyes Nopala",@"Santos Reyes Pápalo",@"Santos Reyes Tepejillo",@"Santos Reyes Yucuná",@"Silacayoápam",@"Sitio de Xitlapehua",@"Soledad Etla",@"Tamazulapam del Espíritu Santo",@"Tanetze de Zaragoza",@"Taniche",@"Tataltepec de Valdés",@"Teococuilco de Marcos Pérez",@"Teotitlán de Flores Magón",@"Teotitlán del Valle",@"Teotongo",@"Tepelmeme Villa de Morelos",@"Tezoatlán de Segura y Luna",@"Tlacolula de Matamoros",@"Tlacotepec Plumas",@"Tlalixtac de Cabrera",@"Totontepec Villa de Morelos",@"Trinidad Zaachila",@"Unión Hidalgo",@"Valerio Trujano",@"Villa de Chilapa de Díaz",@"Villa de Etla",@"Villa de Tamazulápam del Progreso",@"Villa de Tututepec de Melchor Ocam",@"Villa de Zaachila",@"Villa Díaz Ordaz",@"Villa Hidalgo",@"Villa Sola de Vega",@"Villa Talea de Castro",@"Villa Tejúpam de la Unión",@"Yaxe",@"Yogana",@"Yutanduchi de Guerrero",@"Zapotitlán del Río",@"Zapotitlán Lagunas",@"Zapotitlán Palmas",@"Zimatlán de Alvarez", nil];
    
    
    
    
    
     NSArray *Arreglo_Puebla=[NSArray arrayWithObjects:@"Acajete",@"Acateno",@"Acatlán",@"Acatzingo",@"Acteopan",@"Ahuacatlán",@"Ahuatlán",@"Ahuazotepec",@"Ahuehuetitla",@"Ajalpan",@"Albino Zertuche",@"Aljojuca",@"Altepexi",@"Amixtlán",@"Amozoc",@"Aquixtla",@"Atempan",@"Atexcal",@"Atlequizayan",@"Atlixco",@"Atoyatempan",@"Atzala",@"Atzitzihuacán",@"Atzitzintla",@"Axutla",@"Ayotoxco de Guerrero",@"Calpan",@"Caltepec",@"Camocuautla",@"Cañada Morelos",@"Caxhuacan",@"Chalchicomula de Sesma",@"Chapulco",@"Chiautla",@"Chiautzingo",@"Chichiquila",@"Chiconcuautla",@"Chietla",@"Chigmecatitlán",@"Chignahuapan",@"Chignautla",@"Chila",@"Chila de la Sal",@"Chilchotla",@"Chinantla",@"Coatepec",@"Coatzingo",@"Cohetzala",@"Cohuecán",@"Coronango",@"Coxcatlán",@"Coyomeapan",@"Coyotepec",@"Cuapiaxtla de Madero",@"Cuautempan",@"Cuautinchán",@"Cuautlancingo",@"Cuayuca de Andrade",@"Cuetzalan del Progreso",@"Cuyoaco",@"Domingo Arenas",@"Eloxochitlán",@"Epatlán",@"Esperanza",@"Francisco Z. Mena",@"General Felipe ?ngeles",@"Guadalupe",@"Guadalupe Victoria",@"Hermenegildo Galeana",@"Honey",@"Huaquechula",@"Huatlatlauca",@"Huauchinango",@"Huehuetla",@"Huehuetlán el Chico",@"Huehuetlán el Grande",@"Huejotzingo",@"Hueyapan",@"Hueytamalco",@"Hueytlalpan",@"Huitzilan de Serdán",@"Huitziltepec",@"Ixcamilpa de Guerrero",@"Ixcaquixtla",@"Ixtacamaxtitlán",@"Ixtepec",@"Izúcar de Matamoros",@"Jalpan",@"Jolalpan",@"Jonotla",@"Jopala",@"Juan C. Bonilla",@"Juan Galindo",@"Juan N. Méndez",@"La Magdalena Tlatlauquitepec",@"Lafragua",@"Libres",@"Los Reyes de Juárez",@"Mazapiltepec de Juárez",@"Mixtla",@"Molcaxac",@"Naupan",@"Nauzontla",@"Nealtican",@"Nicolás Bravo",@"Nopalucan",@"Ocotepec",@"Ocoyucan",@"Olintla",@"Oriental",@"Pahuatlán",@"Palmar de Bravo",@"Pantepec",@"Petlalcingo",@"Piaxtla",@"Puebla",@"Quecholac",@"Quimixtlán",@"Rafael Lara Grajales",@"San Andrés Cholula",@"San Antonio Cañada",@"San Diego la Mesa Tochimiltzingo",@"San Felipe Teotlalcingo",@"San Felipe Tepatlán",@"San Gabriel Chilac",@"San Gregorio Atzompa",@"San Jerónimo Tecuanipan#San Jerónimo Xayacatlán",@"San José Chiapa",@"San José Miahuatlán",@"San Juan Atenco",@"San Juan Atzompa",@"San Martín Texmelucan",@"San Martín Totoltepec",@"San Matías Tlalancaleca",@"San Miguel Ixitlán",@"San Miguel Xoxtla",@"San Nicolás Buenos Aires",@"San Nicolás de los Ranchos",@"San Pablo Anicano",@"San Pedro Cholula",@"San Pedro Yeloixtlahuaca",@"San Salvador el Seco",@"San Salvador el Verde",@"San Salvador Huixcolotla",@"San Sebastián Tlacotepec",@"Santa Catarina Tlaltempan",@"Santa Inés Ahuatempan",@"Santa Isabel Cholula",@"Santiago Miahuatlán",@"Santo Tomás Hueyotlipan",@"Soltepec",@"Tecali de Herrera",@"Tecamachalco",@"Tecomatlán",@"Tehuacán",@"Tehuitzingo",@"Tenampulco",@"Teopantlán",@"Teotlalco",@"Tepanco de López",@"Tepango de Rodríguez",@"Tepatlaxco de Hidalgo",@"Tepeaca",@"Tepemaxalco",@"Tepeojuma",@"Tepetzintla",@"Tepexco",@"Tepexi de Rodríguez",@"Tepeyahualco",@"Tepeyahualco de Cuauhtémoc",@"Tetela de Ocampo",@"Teteles de Avila Castillo",@"Teziutlán",@"Tianguismanalco",@"Tilapa",@"Tlachichuca",@"Tlacotepec de Benito Juárez",@"Tlacuilotepec",@"Tlahuapan",@"Tlaltenango",@"Tlanepantla",@"Tlaola",@"Tlapacoya",@"Tlapanalá",@"Tlatlauquitepec",@"Tlaxco",@"Tochimilco",@"Tochtepec",@"Totoltepec de Guerrero",@"Tulcingo",@"Tuzamapan de Galeana",@"Tzicatlacoyan",@"Venustiano Carranza",@"Vicente Guerrero",@"Xayacatlán de Bravo",@"Xicotepec",@"Xicotlán",@"Xiutetelco",@"Xochiapulco",@"Xochiltepec",@"Xochitlán de Vicente Suárez",@"Xochitlán Todos Santos",@"Yaonáhuac",@"Yehualtepec",@"Zacapala",@"Zacapoaxtla",@"Zacatlán",@"Zapotitlán",@"Zapotitlán de Méndez",@"Zaragoza",@"Zautla",@"Zihuateutla",@"Zinacatepec",@"Zongozotla",@"Zoquiapan",@"Zoquitlán", nil];
    
    
     NSArray *Arreglo_Querétaro=[NSArray arrayWithObjects:@"Amealco de Bonfil",@"Arroyo Seco",@"Cadereyta de Montes",@"Colón",@"Corregidora",@"El Marqués",@"Ezequiel Montes",@"Huimilpan",@"Jalpan de Serra",@"Landa de Matamoros",@"Pedro Escobedo",@"Peñamiller",@"Pinal de Amoles",@"Querétaro",@"San Joaquín",@"San Juan del Río",@"Tequisquiapan",@"Tolimán", nil];
    
    
    
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:, nil];
    
    
    
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:, nil];
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:, nil];
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:, nil];
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:, nil];
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:, nil];
     NSArray *Arreglo_Guerrero=[NSArray arrayWithObjects:, nil];
    
    
    
    
    
    
    
self.UControlador=@"numeros";
    if ([self.UControlador isEqualToString:@"numeros"]) {
        
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    contador=1;
    i=0;
    Valor=0;
    i2=0;
    Punto=0;
        }
    else{
      Caracteres=[[NSMutableArray alloc]init];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)UIButton_0_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
     
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        if (i!=0) {
            i++;
        }
    }
    else{
        
        [self Calc_Con_Caracteres:sender.titleLabel.text];
        
    }

    
}

- (IBAction)UIButton_1_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
    
}
- (IBAction)UIButton_2_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_3_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}
- (IBAction)UIButton_5_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}
- (IBAction)UIButton_4_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}
- (IBAction)UIButton_6_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_7_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_8_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_9_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
   }

- (IBAction)UIButton_Punto_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
        Punto=1;
        Valor_Entero=Resultado;
    }
    else{
      [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_Suma_Action:(UIButton *)sender {
    [self Operacion:Resultado];
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=1;
    }
    else{
        
        Operador=@"+";
        if (Caracteres.count!=0) {
            
            Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
            
        }
    }
}

- (IBAction)UIButton_Resta_Action:(UIButton *)sender {
    
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=2;
    }
    else{
        Operador=@"-";
        if (Caracteres.count!=0) {
            
            Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
            
        }
    }
}

- (IBAction)UIButton_Mult_Action:(UIButton *)sender {
    
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=3;
    }
    else{
        Operador=@"*";
        if (Caracteres.count!=0) {
            
         Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
        
        }
    }
}

- (IBAction)UIButton_Div_Action:(UIButton *)sender {
    
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=4;
    }
    else{
        Operador=@"/";
        if (Caracteres.count!=0) {
            
            Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
            
        }
        
    }
}

- (IBAction)UIButton_Mod_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        Resultado=Resultado/100;
        self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    }
    else{
        
    }
    
    
}

- (IBAction)UIButton_Signo_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        Resultado=Resultado*-1;
        self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    }
    else{
        
    }
    
}

- (IBAction)UIButton_Borrar_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        Valor=0;
        Primer_Valor=0;
        Resultado=0;
        i=0;
        i2=0;
        self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    }
    else{
        
    }
    
}

- (IBAction)UIButton_Igual_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        i=0;
        if (i2==1) {
            Resultado=Resultado+Primer_Valor;
            
        }else if (i2==2)
        {
            Resultado=Primer_Valor-Resultado;
            
        }else if (i2==3)
        {
            Resultado=Resultado*Primer_Valor;
            
        }else if (i2==4)
        {
            Resultado=Primer_Valor/Resultado;
            
        }
        i2=0;
        self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    }
    else{
        
        
        if ([Operador isEqualToString:@"+"]) {
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera+[self.UILabel_Resultado.text floatValue]];
        }else if ([Operador isEqualToString:@"-"]){
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera-[self.UILabel_Resultado.text floatValue]];
        
        }else if ([Operador isEqualToString:@"*"]){
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera*[self.UILabel_Resultado.text floatValue]];
        
        }else if ([Operador isEqualToString:@"/"]){
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera/[self.UILabel_Resultado.text floatValue]];
        
        }
    }
    
    
}

- (IBAction)UIButton__Action:(UIButton *)sender {
}

- (IBAction)UIButton_AC_Action:(UIButton *)sender {
}

- (IBAction)UIButton_:(UIButton *)sender {
}

- (IBAction)UIButton_X_Action:(UIButton *)sender {
}


-(void)EdicciconLabel:(int)entero{
    if ([self.UControlador isEqualToString:@"numeros"]) {
        if (i<10) {
            
            if (Punto==0) {
                
                
                if(i!=0)
                {
                    Valor=Resultado*10;
                    NSLog(@"%f",Valor);
                }
                
                Resultado=Valor+entero;
            }
            if (i!=0&&Punto!=0) {
                float Decimal=0;
                Decimal=(float)entero/(powl(10,i));
                Resultado= Valor_Entero+Decimal;
                Valor_Entero=Resultado;
                NSLog(@"Res:%f",Resultado);
                NSLog(@"Val:%f",Valor_Entero);
                NSLog(@"Decimal:%f",Valor_Entero);
                NSLog(@"Ent:%i",entero);
            }
            
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
        }
  
    }
    else{
        
        
    }
    }

-(void)Operacion:(float)Dato{
    i=0;
    i2=1;
    Primer_Valor=Dato;
    Resultado=0;
    Valor=0;
    Punto=0;
    
}

-(void)Calc_Con_Caracteres:(NSString *) Numero{
    
    [Caracteres addObject:Numero];
    NSLog(@"%@",Numero);
    NSString *Car=[[Caracteres componentsJoinedByString:@","] stringByReplacingOccurrencesOfString:@"," withString:@""];
    NSLog(@"%@",Car);
    self.UILabel_Resultado.text=Car;
    float Caracteres_Numero=[Car floatValue];
    
    
                                 
}



@end
