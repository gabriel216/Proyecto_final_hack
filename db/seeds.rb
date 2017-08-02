usuario = User.new(name:"administrador", lastname:"", cirif:"1111", phone: "1111", reputation: "1")
    usuario.email = "opcionvenezuelaorg@gmail.com"
    usuario.password = '12345678'
    puts "USUARIO #{usuario.inspect}"
    usuario.save!
usuario = User.new(name:"Antonio", lastname:"Franceskin", cirif:"52582637", phone: "04242057071", reputation: "1")
    usuario.email = "antonio.franceskin@gmail.com"
    usuario.password = '12345678'
    puts "USUARIO #{usuario.inspect}"
    usuario.save!
usuario = User.new(name:"Gabriel", lastname:"Gomez", cirif:"265302676", phone: "04242057071", reputation: "3")
    usuario.email = "gabrielgomez353@gmail.com"
    usuario.password = '12345678'
    puts "USUARIO #{usuario.inspect}"
    usuario.save!


publicidad_list = [
    ["Evento", "Acelera tu empresa en Europa", 
    	"Verano Gourmet
Diversos emprendedores de pro- ductos gourmet como quesos, cerveza, pan sin gluten y galletas presentarán sus productos en el showroom del coworking Spacioss. Los expositores hablarán sobre cómo surge su producto, cómo lo fabrican y distribuyen. Se prevé la participación de entre 10 a 15 expositores que compartirán su historia y resolverán dudas de los asistentes que deseen incursionar en este mercado. 

Fecha: 3 de agosto
Sede: Spacioss Coworking, CDMX
Costo: Entrada libre
Contacto: (55) 5536 4976 Ext. 26167", 
    	"20/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "1"],
    ["Evento", "Teamlabs SparkUp", 
    	"ExpoWeed, feria del cannabis
Conferencistas y talleristas internacionales ilustrarán a los visitantes sobre los usos medicinales, industriales y ancestrales de la planta del cannabis. En el evento sobre esta industria en auge, que se realiza en México por segundo año consecutivo, se podrán conseguir artículos elaborados con este material como: champú, cremas, gomitas de sabores y hasta cerveza. 

Fecha: 18, 19 y 20 de agosto
Sede: WTC, CDMX. Salón: Maya 3. Horario: 10:00 a 14:00 horas
Costo: $200
Contacto: leopoldorivera@gmail.com", 
    	"19/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "4"],
    ["Foro", "Be-Hub! Verano 2017", 
    	"Si tu empresa es proveedora de la industria de hoteles, restau- rantes, cafeterías y catering, esta exposición comercial para mayoristas es para ti. En cuatro días de encuentros de negocios y más de 400 expositores, los expertos compartirán las tendencias e innovaciones en este mercado. 

Fecha: 18, 19 y 20 de agosto
Sede: Centro Citibanamex, CDMX
Costo: $200
Contacto: (55) 5536 4976", 
    	"22/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Jóvenes con futuro", 
    	"Exposición dedicada a promover los productos derivados del agave: Sotol, Raicilla, Bacanora, Mezcal y Pulque. Rescata y difunde los productos generados a partir de la destilación de esta planta. Es un foro para que pro- ductores y distribuidores hagan contactos y generen negocios con los profesionales del retail.   

Fecha: 31 de agosto
Sede: WTC, CDMX
Costo: $120 por día, Horario: 12:00 a 20:30
Contacto: (55) 5604 4900 Ext. 122 y 216 ", 
    	"19/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "1"],
    ["Taller", "5ª Edición Coworking EOI Madrid", 
    	"Con el fin de fortalecer la comercialización de productos hechos en México, que impulsen el desarrollo de las micro, pequeñas y medianas empresas, este foro es una vitrina para productos como textiles, artesanías, manufactura, alimentos, financiamiento, bebidas, industria e innovación tecnológica. El evento es ideal para generar alianzas de negocio y ventas.  

Fecha: 29, 30 y 31 de agosto
Sede: WTC, CDMX.
Contacto: (922) 2235 051/ 30731 y contacto@consumeloquemexicoproduce.mx", 
    	"21/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "8"],   
    ["Documental", "Business Plan Presentation Powerpoint Template", 
    	"Un evento para emprendedores y empresarios. En esta edición podrás vivir de cerca las industrias del futuro a través de 10 ecosistemas, más de 400 conferencias y talleres. Contarán con actividades innova- doras como el Disruptivo Fest, Bazar Emprendedor, food trucks y foro abierto para las industrias creativas.    

Fecha: 11 al 15 de septiembre
Sede: Centro Citibanamex, CDMX
Costo: Prerregistro.
Contacto: (018004) 462 336", 
		"13/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],
    ["Foro", "Premios Creatic", 
    	"Este 24 de agosto, en el Centro Citibanamex, Entrepreneur te presenta Growth 2017, un evento donde te daremos seis claves para crecer, pese a la crisis, y donde también podrás inspirarte con las historias de emprendedores que triunfan ante cualquier tormenta.

Fecha: 24 de agosto
Sede: Centro Citibanamex, CDMX 
Costo: Entrada Libre
Contacto:  Growth2017.mx", 
    	"11/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Mañana inauguran ExpoGastronomía Venezuela", 
    	"El  intercambio comercial Panamá–Venezuela se ha incrementado en los últimos trimestres ya que la deuda que se tenía con los secretarios en la Zona Libre de Colón ya fue pagada por el gobierno. Así lo informó el presidente de la Cámara de Integración Venezolana-Panameña (CIVENPA) Francisco De Sola en entrevista con el periódico El Emprendedor.

En este orden de ideas, De Sola aseveró que lo anterior ha multiplicado las inversiones entre ambas naciones. “En Panamá llega toda la mercancía de todas las partes del mundo, es mucho más fácil tener acceso a esa materia prima allá (…) En la cámara nosotros siempre estamos impulsando esos intercambios”, sostuvo.

Oportunidad de inversión

Así mismo, el titular de CIVENPA anunció que a partir de este 30 de abril al 06 de mayo, realizarán una misión empresarial que comenzará con un seminario de dos días, luego una visita a la Zona Libre de Colón, después  a Panamá Pacífico y a las Zonas Francas para que todos los asistentes puedan tener ruedas de negocios con los empresarios panameños.

“El empresario se va a encontrar con algo bien interesante, ya que el tiempo vale oro y ellos, en dos días, van a tener un enfoque de cómo invertir y cómo su empresa se puede mover en Panamá, cómo su empresa puede importar desde allá, cómo su empresa puede hacer relaciones con otras pares panameñas y de otras partes del mundo”, expresó.

Adicionalmente, De Sola dijo que los asistentes obtendrán un enfoque rápido de una semana acerca de cómo vivir en Panamá, cómo hacer negocios allá y además, cómo hacer más productiva su empresa aquí en Venezuela.

“Esta nueva visita empresarial va a tener muchos más retos para el empresariado porque ya Panamá tiene una competitividad en el tapete, donde no solamente va la gente de Venezuela, sino de distintas partes del mundo para gozar de los beneficios tributarios con los que cuenta”, agregó el vocero.", 
    	"15/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "10"],
    ["Taller", "Las novedades más impactantes del CES 2017", 
    	"Seguidamente, el presidente de CIVENPA detalló que “ahorita es buen momento de invertir allá, ya que la ampliación de esa misma zona (Zona Libre de Colón), hace que los precios sean atractivos para el empresario que desea alquilar galpones u obtener su mercancía allí y no pagar impuestos”.

En esta nueva visita empresarial asistirán empresarios en el área de colchones, de ferretería y muebles, “que se hacen aquí y que están ofreciendo sus acabados allá en Panamá para las construcciones nuevas, para los hoteles y todo lo que se está desarrollando en ese país”, precisó.

Finalmente, De Sola concluyó haciendo un llamado al empresario venezolano que desea asistir a esta visita empresarial y añadió que también harán presencia representantes de firmas de contadores, quienes darán un enfoque diferente a los empresarios acerca de los pasos a seguir para poder invertir en Panamá.

(Para mayor información comuníquese a: 0212 636 03 72 – 04143710219 - email: info@civenpa.org  - web: www.civenpa.org)", 
    	"19/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "2"],
    ["Documental", "Programa Oportunidades energéticas en Venezuela", 
    	"La Cámara Inmobiliaria de Venezuela (CIV) y la Cámara Inmobiliaria Metropolitana (CIM), reunirán a líderes del sector para ofrecer sus perspectivas sobre cómo estimular las ventas y la producción en estos tiempos de crisis. Dicho encuentro empresarial cuenta con la colaboración o co-patrocinio del periódico El Emprendedor como medio de comunicación.

La Cima del Éxito Inmobiliario es el nombre de la reunión de los profesionales de bienes raíces más destacados de Venezuela que se realizará este miércoles 29 de marzo en la Torre BOD, en La Castellana, informó el ente mediante nota de prensa.

El presidente de la Cámara Inmobiliaria de Venezuela, Carlos González Contreras, expresó que el gremio privado ofrece una respuesta positiva ante la crisis. “Este evento promoverá acciones y métodos creativos en tiempos de incertidumbre. Muchos profesionales venezolanos ven en el sector inmobiliario una oportunidad de crecimiento y de hacer una carrera productiva”.", 
    	"20/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Premios Generacción", 
    	"“Con la Cima del Éxito Inmobiliario reunimos a expertos que con sus recorridos profesionales nos señalarán nuevas formas de mejorar la productividad de los corredores y aumentar las ventas de las empresas del sector”, indicó González Contreras.

Por su parte, el presidente de la Cámara Inmobiliaria Metropolitana, Roberto Orta Martínez, añadió que “este es un día de aprendizaje sobre qué podemos hacer desde nuestra área profesional para, creativamente, proponer soluciones productivas a un mercado complejo. Las empresas inmobiliarias deben reinventar sus procesos de comercialización y adecuarlos a las nuevas generaciones y tecnologías”.

Durante la Cima del Éxito Inmobiliario, los asistentes escucharán las siguientes ponencias: “Competitividad Inmobiliaria”, de Héctor Tosta, Vicepresidente de la Cámara Inmobiliaria Metropolitana; “6 pasos para abatir la adversidad”, de Nelson Quintero Weffer, presidente de la Cámara Inmobiliaria del Zulia;  “El arte supremo de vender”, de Juan Carlos Jiménez, experto en comunicación y mercadeo; “El valor razonable de un inmueble en escenarios de alta incertidumbre económica y jurídica”, de Arturo Facchin, especialista en avalúos.", 
    	"25/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
	["Evento", "Para startups en la industria aérea", 
		"En días recientes, un total de 50 estudiantes de Ingeniería Mecatrónica de la Universidad Nacional Experimental Politécnica Luis Caballero Mejías, presentaron 80 proyectos innovadores los cuales brindan soluciones a problemas que puedan presentarse en la industria, reseñó ÚN.

En el marco de la V Feria de Mecatrónica, el estudiante de sexto semestre Rafael Catalá, presentó junto a sus compañeros un vehículo que fabricaron controlado con una aplicación Android que puede desplazarse en un espacio donde se registre un incendio.

Entre los inventos exhibidos se encuentran una incubadora que controla temperatura y humedad, un aparato que refleja letras, palabras, frases y números con luces Led, máquinas para controlar el llenado de tanques de agua, dispensadoras de jugo y chucherías, un carrito Baja Sae con que han participado en eventos internacionales y muchos más dispositivos.", 
		"29/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "3"],
    ["Foro", "SEOPLUS Congress 2017", 
    	"Renny Campos, coordinador de la carrera de Ingeniería Mecatrónica, informó que actualmente se encuentran formando a 450 estudiantes que al egresar serán contratados en empresas locales y del país. También precisó que algunos egresados consiguen puestos de trabajo en Panamá, Canadá, Argentina, Bolivia, México y Perú, entre otros.

Así mismo, el coordinador del taller de mecatrónica, Ignacio Campos anunció que “si una empresa se interesa en un proyecto, existe la posibilidad de fabricarse con el tamaño que la industria requiera”, comentó.

En este orden de ideas, Campos agregó que una ventaja primordial de estas propuestas es que los estudiantes ofrecen alternativas más económicas de las que actualmente se encuentran disponibles en el mercado. ", 
    	"19/09/2017",
        "2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15","04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Starting a Business ", 
    	"Lorem ipsum dolor sit amet", 
    	"19/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "5"],
    ["Taller", "Franchise 500 ", 
    	"Estimular un análisis de la situación petrolera actual y ofrecer herramientas para generar impactos positivos en Venezuela es una de las premisas fundamentales del programa Venezuela, liderazgo y petróleo. Gregory Rondón, director de formación de la fundación Futuro Presente y Hellen Barrios, coordinadora del programa, asistieron al espacio A Tiempo de Unión Radio donde asomaron las múltiples oportunidades “ocultas” en el panorama actual venezolano.

No es un secreto la crisis que actualmente atraviesa el mercado petrolero mundial debido a la abrupta caída en los precios desde el 2015. Mismo año en el cual ha venido en aumento la producción en países como EE.UU por medio de técnicas como el fracking.

No obstante, la atención constante solamente en el rubro petrolero, no ha permitido contemplar en todo su esplendor el desarrollo de la industria energética internacional la cual avanza cada vez más rápido debido a los grandes avances tecnológicos, lo que ha propiciado el uso de nuevas fuentes de energía como la eólica, solar, biomasa, carbón, entre otras, reseña EN.", 
    	"20/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "7"],
    ["Documental", "II edición European Coworkings EOI", 
    	"En los programas “analizamos cómo es que se ha tratado de manera rentista y cómo lo podemos llevar ahora a una reforma, que si bien es un recurso, sus ingresos se deben utilizar para potenciar todos los sistemas productivos del país y no quedarnos en solamente la renta, sino diversificarlo”, expresó Barrios.

Por su parte, Gregory Rondón, director de formación explicó que “Cada vez más son los jóvenes que no necesariamente involucrados con la industria petrolera quieren participar desde su nicho en romper estos paradigmas rentistas para hacer de Venezuela un país mucho mejor y más eficiente económicamente”.

 “Nosotros buscamos personas que apuesten por Venezuela y ese es el factor diferenciador y la propuesta de valor que nosotros ofrecemos, estamos enfrentándonos a un éxodo juvenil muy alto, pero también hay mucha gente que quiere quedarse y que quieren apostar al país”, precisó.

A lo largo del programa radial se tocó también el tema de la administración de las distintas fuentes energéticas del país, mencionando que hay tantos proyectos gasíferos que están pendientes, se citó el ejemplo de analistas que afirman que mientras en Venezuela el 90% de los habitantes recibe el gas a través de las bombonas, en Colombia hay más de 100 ciudades que reciben gas directo.

“No sólo tenemos el petróleo, está la industria del gas, la industria petroquímica, la <migración energética>, energía nuclear, tema del cual no se habla en Venezuela. Existen otras fuentes de energía que deben ser sumamente aprovechables, en la actualidad no se habla de que exista otra cosa a parte del petróleo”, expresó barrios.

El Programa Venezuela, Liderazgo y Petróleo tuvo una primera cohorte, donde se formaron 50 líderes de diferentes lugares del país, en el área de la industria petrolera y el área energética a nivel mundial. Los requisitos para postularse son ser mayor de 18 años, bachiller graduado y tener un perfil de liderazgo o de impacto en su entorno. Para inscribirse hay que ingresar en www.futuropresente.com  y completar el formulario en la sección VLP NP

Los jóvenes ofrecen también un programa llamado Liderazgo Sustentable “donde precisamente rompemos el paradigma de siempre ver todo lo sustentable como ecológico, sino que lo sustentable tiene que ver con las políticas económicas que se tomen, políticas financieras que atañen a toda la sociedad”, puntualizó Barrios.

Modificado por última vez enJueves, 02 Febrero 2017 21:08


Noticias que expanden tu mente y tu negocio 
RECIBE LAS 10 MEJORES NOTICIAS 
DE LA SEMANA EN TU CORREO

 
SUSCRIBETE AHORA GRATIS




 



Visto 965
Imprimir
Email
1 2 3 4 5
(0 votos)
", 
    	"10/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Focus Pyme y Emprendimiento", 
    	"Los amantes del buen comer tienen una buena razón para estar más contentos que niño con juguete nuevo: mañana se inaugura la novena edición de ExpoGastronomía Venezuela en los espacios de la plaza Alfredo Sadel de Las Mercedes. Esta actividad estará abierta al público desde las 11:00 am hasta las 9:00 pm hasta el venidero 17 de abril.

Se trata de un espacio de encuentro donde chefs y aspirantes, sibaritas y aficionados gastronómicos se reencontrarán una vez más para desplegar un abanico de sabores y satisfacer paladares, informó una nota de prensa emitida por los organizadores de este evento y cuya entrada es gratuita.

ExpoGastronomía Venezuela, como en ediciones anteriores, continuará ofreciendo su atractivo más emblemático: el Pabellón de Países. En esta sección, emprendedores, representaciones diplomáticas, restaurantes, empresas de catering y exponentes de la nueva escena culinaria nacional presentan propuestas típicas provenientes de otras latitudes. Este año habrá gastronomía de Alemania, Argentina, España, Estados Unidos, Francia, Grecia, Irán, Italia, México, Perú y Venezuela.", 
    	"05/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
    ["Evento", "6ª Jornadas de Empleo y Emprendimiento", 
    	"ExpoGastronomía Venezuela, como en ediciones anteriores, continuará ofreciendo su atractivo más emblemático: el Pabellón de Países. En esta sección, emprendedores, representaciones diplomáticas, restaurantes, empresas de catering y exponentes de la nueva escena culinaria nacional presentan propuestas típicas provenientes de otras latitudes. Este año habrá gastronomía de Alemania, Argentina, España, Estados Unidos, Francia, Grecia, Irán, Italia, México, Perú y Venezuela.

El área de expositores artesanales y puestos promocionales complementarán las actividades del evento, siendo centro de acopio para aquellos emprendedores que colocan a disposición del público sus creaciones culinarias.

Esta novena edición se realizará gracias al apoyo del Grupo CGYM, en alianza con el la Alcaldía de Baruta, en beneficio de la  Fundación Mano e’ Tambor, programa impulsado por la Dirección de Arte y Cultura del citado gobierno local. ", 
    	"19/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "4"],
    ["Foro", "Mujer, Creatividad y Liderazgo Emprendedor", 
    	"Organización Aliadas en su misión de apoyo a las mujeres conmemora esta importante fecha con el evento “Semana de la Mujer 2016”, realizando un conjunto de actividades, desde el lunes 07 de marzo hasta el viernes 11 de marzo en nuestros seis (6) Núcleos Aliadas en Tecnología, a nivel nacional ubicados en Caracas (El Valle, Las Acacias y Catia), Barquisimeto, Maracaibo y Valencia. Estas actividades totalmente gratuitas para la comunidad en general incluirán charlas y talleres relacionados a los Derechos Humanos de la mujeres y temas de Igualdad de Género. Además de ofrecer servicios gratuitos referentes a salud, nutrición, prevención de la violencia, orientación en el área de salud sexual y reproductiva, así como actividades culturales.

En esta edición de la “Semana de la Mujer 2016”, contamos con el apoyo de ONG´s, ODS, instituciones públicas y privadas, entre las cuales se encuentran: Centro Termific, Farmatodo, Herbalife, Hias, Coordinación de Salud Sexual y Reproductiva del Edo. Zulia, División de Extensión de la Facultad de Medicina del Edo Zulia, SIACE, Unidad de Investigación y Estudio de Género “Bellacarla Girón Camacaro”, Casa de la Mujer del Edo.Carabobo, Senosayuda, INAMUJER, Salud y Familia Anauco, Rotaract Club Cacique Baruta, Plafam, Cania, Acción Solidaria, Musas de Venezuela, Escuela de DDHH, Fundaribas, Distrito Sanitario 4, Avesa,entre otras. En esta fecha conmemorativa Organización Aliadas se suma al esfuerzo de ONU MUJERES en promulgar para el Día Internacional de la Mujer 2016 el lema; Por un Planeta 50-50 en 2030: Demos el paso para la igualdad de género.

Las Naciones Unidas impulsa los nuevos Objetivos de Desarrollo Sostenible (Agenda 2030) con esta iniciativa “Demos el paso” de ONU Mujeres repaldando de esta manera sus compromisos en materia de igualdad de género, empoderamiento y derechos humanos de las mujeres.

", 
    	"13/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Demo Day Madrid EOI", 
    	"
BBVA abrió el plazo de registro para la 8ª edición de su competencia Open Talent, que pretende encontrar a los mejores emprendedores que están cambiando los servicios financieros a través de la innovación digital, según nota de prensa. 

En los últimos cinco años, más de 3.250 compañías han pasado por este programa y los ganadores han acumulado inversiones de más de 116 millones de euros. 

¿Cómo participar?

La inscripción para participar en BBVA Open Talent 2016 puede realizarse en www.bbvaopentalent.com hasta el 27 de junio. Para seleccionar a los finalistas, el jurado tendrá en cuenta la capacidad para transformar la industria financiera del proyecto, la escalabilidad, el equipo que lo respalda y el modelo de negocio. ", 
    	"15/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "1"],
    ["Taller", "Concurso de Emprendedores de IEBS", 
    	"Roosvelt Amaro, director de la citada institución, informó que el encuentro cuenta con el apoyo de Fedecámaras Carabobo y la Camara de Comercio de Valencia, con el objeto de ofrecer herramientas formativas a todas aquellas personas interesadas en desarrollar una visión global e innovadora en el mundo de los negocios. “Nuestro programa ofrece servicios de consultoría, asesorías y capacitación en las áreas de ventas, mercadeo, liderazgo, finanzas e inversiones con el fin de incrementar la productividad en las empresas. De allí la intención de realizar este foro”, destacó.

Entre las premisas de la actividad también se hallan: dar a conocer las nuevas tendencias y estrategias en ventas, mercadeo, liderazgo e inversiones que ayuden a los participantes del evento a tomar decisiones más acertadas a la hora de expandir y construir nuevos negocios.

En tal sentido, las personas interesadas en ser parte de este importante encuentro pueden contactar al citado director a través del correo director@escueladenegocios.org.ve, al teléfono 0426-165.42.47 o la página www.escueladenegocios.org.ve 

ROOSVELT AMARO
Director
Escuela de Negocios Venezuela
Movil: 0426-165.42.47", 
    	"10/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "10"],  
    ["Documental", "Business Plan Presentation Powerpoint Template", 
    	"Es muy común escuchar hoy en día por motivos diversos a muchas personas decir, pensar o evaluar en irse del país intentando buscar realidades distintas para sus vidas. Sin embargo,  tomar esta decisión no sólo es un proceso lógico que hay que afrontar, este proceso va mucho más allá de eso, es un proceso que incluye fortaleza mental, emocional y hasta espiritual, para poder afrontar todo lo que ello conlleva, no es fácil pensar en comenzar una vida nueva en un lugar distinto y separarse de los seres queridos e incluso muchas veces renunciar a sueños y metas que tenías pensados en tu lugar de origen.

Después del éxito obtenido en Caracas batiendo record de taquilla en dos ocasiones a petición de público y de haber visitado las ciudades de MATURÍN, MARACAY y MÉRIDA, continúa la gira nacional de la Conferencia titulada “Me voy o me quedo”. El próximo 31 de OCTUBRE estará en  PUERTO ORDAZ; 7 de noviembre en MARGARITA, 12 de noviembre en SAN CRISTÓBAL, 18 de noviembre en CUMANÁ;  20 de noviembre en VALENCIA y 25 de noviembre en CARACAS. Esta conferencia será  dictada por el reconocido periodista @IsnardoBravo en compañía de Coach y Conferencista Internacional @GregoryWisdom, para la cual invitamos a todo aquel que desee disfrutar de este espacio de crecimiento personal y profesional.", 
    	"21/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Premios CEEI-IVACE 2017", 
    	"El evento dedicado a la producción bien hecha a mano en Venezuela, titulado Bazar artesanal ExpresArte Navidad, encuentro que, este 2015, arriba a su cuarta edición, inaugurando la temporada más alegre del año.

Bombones, trufas, exóticas mermeladas, miel, esculturas en chocolate, lámparas, bisutería, orfebrería, jabones, bolsos, obras pictóricas y una amplia gama de objetos utilitario-decorativos para el hogar, la oficina y toda la familia, se podrán adquirir en este Bazar, organizado por La Escuela Itinerante Cooperativa Artesanal Cirila, institución autónoma fundada en 1974, orientada a promover, a través de talleres y bazares, el emprendimiento en Venezuela.

ExpresArte, reúne a 52 productores artesanales nacionales, quienes garantizan calidad a precios amigables, con servicio de punto de venta, estacionamiento, total seguridad y, como atractivos adicionales, rifas gratuitas con más de cien premios, más una nutrida programación cultural diaria a la 1 de la tarde, con agrupaciones profesionales de música cañonera, gaitas, géneros caribeños, academias de modelaje; aunado a coloridos espectáculos de danza, donde los bailadores se moverán al ritmo del joropo recio y los tambores. ¡Imperdible! ¡No falten!", 
    	"10/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
   ["Evento", "Acelera tu empresa en Europa", 
        "Verano Gourmet
Diversos emprendedores de pro- ductos gourmet como quesos, cerveza, pan sin gluten y galletas presentarán sus productos en el showroom del coworking Spacioss. Los expositores hablarán sobre cómo surge su producto, cómo lo fabrican y distribuyen. Se prevé la participación de entre 10 a 15 expositores que compartirán su historia y resolverán dudas de los asistentes que deseen incursionar en este mercado. 

Fecha: 3 de agosto
Sede: Spacioss Coworking, CDMX
Costo: Entrada libre
Contacto: (55) 5536 4976 Ext. 26167", 
        "19/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "1"],
    ["Evento", "Teamlabs SparkUp", 
        "ExpoWeed, feria del cannabis
Conferencistas y talleristas internacionales ilustrarán a los visitantes sobre los usos medicinales, industriales y ancestrales de la planta del cannabis. En el evento sobre esta industria en auge, que se realiza en México por segundo año consecutivo, se podrán conseguir artículos elaborados con este material como: champú, cremas, gomitas de sabores y hasta cerveza. 

Fecha: 18, 19 y 20 de agosto
Sede: WTC, CDMX. Salón: Maya 3. Horario: 10:00 a 14:00 horas
Costo: $200
Contacto: leopoldorivera@gmail.com", 
        "05/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "4"],
    ["Foro", "Be-Hub! Verano 2017", 
        "Si tu empresa es proveedora de la industria de hoteles, restau- rantes, cafeterías y catering, esta exposición comercial para mayoristas es para ti. En cuatro días de encuentros de negocios y más de 400 expositores, los expertos compartirán las tendencias e innovaciones en este mercado. 

Fecha: 18, 19 y 20 de agosto
Sede: Centro Citibanamex, CDMX
Costo: $200
Contacto: (55) 5536 4976", 
        "09/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Jóvenes con futuro", 
        "Exposición dedicada a promover los productos derivados del agave: Sotol, Raicilla, Bacanora, Mezcal y Pulque. Rescata y difunde los productos generados a partir de la destilación de esta planta. Es un foro para que pro- ductores y distribuidores hagan contactos y generen negocios con los profesionales del retail.   

Fecha: 31 de agosto
Sede: WTC, CDMX
Costo: $120 por día, Horario: 12:00 a 20:30
Contacto: (55) 5604 4900 Ext. 122 y 216 ", 
        "01/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "1"],
    ["Taller", "5ª Edición Coworking EOI Madrid", 
        "Con el fin de fortalecer la comercialización de productos hechos en México, que impulsen el desarrollo de las micro, pequeñas y medianas empresas, este foro es una vitrina para productos como textiles, artesanías, manufactura, alimentos, financiamiento, bebidas, industria e innovación tecnológica. El evento es ideal para generar alianzas de negocio y ventas.  

Fecha: 29, 30 y 31 de agosto
Sede: WTC, CDMX.
Contacto: (922) 2235 051/ 30731 y contacto@consumeloquemexicoproduce.mx", 
        "25/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "8"],   
    ["Documental", "Business Plan Presentation Powerpoint Template", 
        "Un evento para emprendedores y empresarios. En esta edición podrás vivir de cerca las industrias del futuro a través de 10 ecosistemas, más de 400 conferencias y talleres. Contarán con actividades innova- doras como el Disruptivo Fest, Bazar Emprendedor, food trucks y foro abierto para las industrias creativas.    

Fecha: 11 al 15 de septiembre
Sede: Centro Citibanamex, CDMX
Costo: Prerregistro.
Contacto: (018004) 462 336", 
        "20/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],
    ["Foro", "Premios Creatic", 
        "Este 24 de agosto, en el Centro Citibanamex, Entrepreneur te presenta Growth 2017, un evento donde te daremos seis claves para crecer, pese a la crisis, y donde también podrás inspirarte con las historias de emprendedores que triunfan ante cualquier tormenta.

Fecha: 24 de agosto
Sede: Centro Citibanamex, CDMX 
Costo: Entrada Libre
Contacto:  Growth2017.mx", 
        "04/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Mañana inauguran ExpoGastronomía Venezuela", 
        "El  intercambio comercial Panamá–Venezuela se ha incrementado en los últimos trimestres ya que la deuda que se tenía con los secretarios en la Zona Libre de Colón ya fue pagada por el gobierno. Así lo informó el presidente de la Cámara de Integración Venezolana-Panameña (CIVENPA) Francisco De Sola en entrevista con el periódico El Emprendedor.

En este orden de ideas, De Sola aseveró que lo anterior ha multiplicado las inversiones entre ambas naciones. “En Panamá llega toda la mercancía de todas las partes del mundo, es mucho más fácil tener acceso a esa materia prima allá (…) En la cámara nosotros siempre estamos impulsando esos intercambios”, sostuvo.

Oportunidad de inversión

Así mismo, el titular de CIVENPA anunció que a partir de este 30 de abril al 06 de mayo, realizarán una misión empresarial que comenzará con un seminario de dos días, luego una visita a la Zona Libre de Colón, después  a Panamá Pacífico y a las Zonas Francas para que todos los asistentes puedan tener ruedas de negocios con los empresarios panameños.

“El empresario se va a encontrar con algo bien interesante, ya que el tiempo vale oro y ellos, en dos días, van a tener un enfoque de cómo invertir y cómo su empresa se puede mover en Panamá, cómo su empresa puede importar desde allá, cómo su empresa puede hacer relaciones con otras pares panameñas y de otras partes del mundo”, expresó.

Adicionalmente, De Sola dijo que los asistentes obtendrán un enfoque rápido de una semana acerca de cómo vivir en Panamá, cómo hacer negocios allá y además, cómo hacer más productiva su empresa aquí en Venezuela.

“Esta nueva visita empresarial va a tener muchos más retos para el empresariado porque ya Panamá tiene una competitividad en el tapete, donde no solamente va la gente de Venezuela, sino de distintas partes del mundo para gozar de los beneficios tributarios con los que cuenta”, agregó el vocero.", 
        "15/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "10"],
    ["Taller", "Las novedades más impactantes del CES 2017", 
        "Seguidamente, el presidente de CIVENPA detalló que “ahorita es buen momento de invertir allá, ya que la ampliación de esa misma zona (Zona Libre de Colón), hace que los precios sean atractivos para el empresario que desea alquilar galpones u obtener su mercancía allí y no pagar impuestos”.

En esta nueva visita empresarial asistirán empresarios en el área de colchones, de ferretería y muebles, “que se hacen aquí y que están ofreciendo sus acabados allá en Panamá para las construcciones nuevas, para los hoteles y todo lo que se está desarrollando en ese país”, precisó.

Finalmente, De Sola concluyó haciendo un llamado al empresario venezolano que desea asistir a esta visita empresarial y añadió que también harán presencia representantes de firmas de contadores, quienes darán un enfoque diferente a los empresarios acerca de los pasos a seguir para poder invertir en Panamá.

(Para mayor información comuníquese a: 0212 636 03 72 – 04143710219 - email: info@civenpa.org  - web: www.civenpa.org)", 
        "10/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "2"],
    ["Documental", "Programa Oportunidades energéticas en Venezuela", 
        "La Cámara Inmobiliaria de Venezuela (CIV) y la Cámara Inmobiliaria Metropolitana (CIM), reunirán a líderes del sector para ofrecer sus perspectivas sobre cómo estimular las ventas y la producción en estos tiempos de crisis. Dicho encuentro empresarial cuenta con la colaboración o co-patrocinio del periódico El Emprendedor como medio de comunicación.

La Cima del Éxito Inmobiliario es el nombre de la reunión de los profesionales de bienes raíces más destacados de Venezuela que se realizará este miércoles 29 de marzo en la Torre BOD, en La Castellana, informó el ente mediante nota de prensa.

El presidente de la Cámara Inmobiliaria de Venezuela, Carlos González Contreras, expresó que el gremio privado ofrece una respuesta positiva ante la crisis. “Este evento promoverá acciones y métodos creativos en tiempos de incertidumbre. Muchos profesionales venezolanos ven en el sector inmobiliario una oportunidad de crecimiento y de hacer una carrera productiva”.", 
        "18/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Premios Generacción", 
        "“Con la Cima del Éxito Inmobiliario reunimos a expertos que con sus recorridos profesionales nos señalarán nuevas formas de mejorar la productividad de los corredores y aumentar las ventas de las empresas del sector”, indicó González Contreras.

Por su parte, el presidente de la Cámara Inmobiliaria Metropolitana, Roberto Orta Martínez, añadió que “este es un día de aprendizaje sobre qué podemos hacer desde nuestra área profesional para, creativamente, proponer soluciones productivas a un mercado complejo. Las empresas inmobiliarias deben reinventar sus procesos de comercialización y adecuarlos a las nuevas generaciones y tecnologías”.

Durante la Cima del Éxito Inmobiliario, los asistentes escucharán las siguientes ponencias: “Competitividad Inmobiliaria”, de Héctor Tosta, Vicepresidente de la Cámara Inmobiliaria Metropolitana; “6 pasos para abatir la adversidad”, de Nelson Quintero Weffer, presidente de la Cámara Inmobiliaria del Zulia;  “El arte supremo de vender”, de Juan Carlos Jiménez, experto en comunicación y mercadeo; “El valor razonable de un inmueble en escenarios de alta incertidumbre económica y jurídica”, de Arturo Facchin, especialista en avalúos.", 
        "14/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
    ["Evento", "Para startups en la industria aérea", 
        "En días recientes, un total de 50 estudiantes de Ingeniería Mecatrónica de la Universidad Nacional Experimental Politécnica Luis Caballero Mejías, presentaron 80 proyectos innovadores los cuales brindan soluciones a problemas que puedan presentarse en la industria, reseñó ÚN.

En el marco de la V Feria de Mecatrónica, el estudiante de sexto semestre Rafael Catalá, presentó junto a sus compañeros un vehículo que fabricaron controlado con una aplicación Android que puede desplazarse en un espacio donde se registre un incendio.

Entre los inventos exhibidos se encuentran una incubadora que controla temperatura y humedad, un aparato que refleja letras, palabras, frases y números con luces Led, máquinas para controlar el llenado de tanques de agua, dispensadoras de jugo y chucherías, un carrito Baja Sae con que han participado en eventos internacionales y muchos más dispositivos.", 
        "15/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "3"],
    ["Foro", "SEOPLUS Congress 2017", 
        "Renny Campos, coordinador de la carrera de Ingeniería Mecatrónica, informó que actualmente se encuentran formando a 450 estudiantes que al egresar serán contratados en empresas locales y del país. También precisó que algunos egresados consiguen puestos de trabajo en Panamá, Canadá, Argentina, Bolivia, México y Perú, entre otros.

Así mismo, el coordinador del taller de mecatrónica, Ignacio Campos anunció que “si una empresa se interesa en un proyecto, existe la posibilidad de fabricarse con el tamaño que la industria requiera”, comentó.

En este orden de ideas, Campos agregó que una ventaja primordial de estas propuestas es que los estudiantes ofrecen alternativas más económicas de las que actualmente se encuentran disponibles en el mercado. ", 
        "12/11/2017",
        "2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15","04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Starting a Business ", 
        "Lorem ipsum dolor sit amet", 
        "20/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "5"],
    ["Taller", "Franchise 500 ", 
        "Estimular un análisis de la situación petrolera actual y ofrecer herramientas para generar impactos positivos en Venezuela es una de las premisas fundamentales del programa Venezuela, liderazgo y petróleo. Gregory Rondón, director de formación de la fundación Futuro Presente y Hellen Barrios, coordinadora del programa, asistieron al espacio A Tiempo de Unión Radio donde asomaron las múltiples oportunidades “ocultas” en el panorama actual venezolano.

No es un secreto la crisis que actualmente atraviesa el mercado petrolero mundial debido a la abrupta caída en los precios desde el 2015. Mismo año en el cual ha venido en aumento la producción en países como EE.UU por medio de técnicas como el fracking.

No obstante, la atención constante solamente en el rubro petrolero, no ha permitido contemplar en todo su esplendor el desarrollo de la industria energética internacional la cual avanza cada vez más rápido debido a los grandes avances tecnológicos, lo que ha propiciado el uso de nuevas fuentes de energía como la eólica, solar, biomasa, carbón, entre otras, reseña EN.", 
        "23/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "7"],
    ["Documental", "II edición European Coworkings EOI", 
        "En los programas “analizamos cómo es que se ha tratado de manera rentista y cómo lo podemos llevar ahora a una reforma, que si bien es un recurso, sus ingresos se deben utilizar para potenciar todos los sistemas productivos del país y no quedarnos en solamente la renta, sino diversificarlo”, expresó Barrios.

Por su parte, Gregory Rondón, director de formación explicó que “Cada vez más son los jóvenes que no necesariamente involucrados con la industria petrolera quieren participar desde su nicho en romper estos paradigmas rentistas para hacer de Venezuela un país mucho mejor y más eficiente económicamente”.

 “Nosotros buscamos personas que apuesten por Venezuela y ese es el factor diferenciador y la propuesta de valor que nosotros ofrecemos, estamos enfrentándonos a un éxodo juvenil muy alto, pero también hay mucha gente que quiere quedarse y que quieren apostar al país”, precisó.

A lo largo del programa radial se tocó también el tema de la administración de las distintas fuentes energéticas del país, mencionando que hay tantos proyectos gasíferos que están pendientes, se citó el ejemplo de analistas que afirman que mientras en Venezuela el 90% de los habitantes recibe el gas a través de las bombonas, en Colombia hay más de 100 ciudades que reciben gas directo.

“No sólo tenemos el petróleo, está la industria del gas, la industria petroquímica, la <migración energética>, energía nuclear, tema del cual no se habla en Venezuela. Existen otras fuentes de energía que deben ser sumamente aprovechables, en la actualidad no se habla de que exista otra cosa a parte del petróleo”, expresó barrios.

El Programa Venezuela, Liderazgo y Petróleo tuvo una primera cohorte, donde se formaron 50 líderes de diferentes lugares del país, en el área de la industria petrolera y el área energética a nivel mundial. Los requisitos para postularse son ser mayor de 18 años, bachiller graduado y tener un perfil de liderazgo o de impacto en su entorno. Para inscribirse hay que ingresar en www.futuropresente.com  y completar el formulario en la sección VLP NP

Los jóvenes ofrecen también un programa llamado Liderazgo Sustentable “donde precisamente rompemos el paradigma de siempre ver todo lo sustentable como ecológico, sino que lo sustentable tiene que ver con las políticas económicas que se tomen, políticas financieras que atañen a toda la sociedad”, puntualizó Barrios.

Modificado por última vez enJueves, 02 Febrero 2017 21:08


Noticias que expanden tu mente y tu negocio 
RECIBE LAS 10 MEJORES NOTICIAS 
DE LA SEMANA EN TU CORREO

 
SUSCRIBETE AHORA GRATIS




 



Visto 965
Imprimir
Email
1 2 3 4 5
(0 votos)
", 
        "24/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Focus Pyme y Emprendimiento", 
        "Los amantes del buen comer tienen una buena razón para estar más contentos que niño con juguete nuevo: mañana se inaugura la novena edición de ExpoGastronomía Venezuela en los espacios de la plaza Alfredo Sadel de Las Mercedes. Esta actividad estará abierta al público desde las 11:00 am hasta las 9:00 pm hasta el venidero 17 de abril.

Se trata de un espacio de encuentro donde chefs y aspirantes, sibaritas y aficionados gastronómicos se reencontrarán una vez más para desplegar un abanico de sabores y satisfacer paladares, informó una nota de prensa emitida por los organizadores de este evento y cuya entrada es gratuita.

ExpoGastronomía Venezuela, como en ediciones anteriores, continuará ofreciendo su atractivo más emblemático: el Pabellón de Países. En esta sección, emprendedores, representaciones diplomáticas, restaurantes, empresas de catering y exponentes de la nueva escena culinaria nacional presentan propuestas típicas provenientes de otras latitudes. Este año habrá gastronomía de Alemania, Argentina, España, Estados Unidos, Francia, Grecia, Irán, Italia, México, Perú y Venezuela.", 
        "16/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
    ["Evento", "6ª Jornadas de Empleo y Emprendimiento", 
        "ExpoGastronomía Venezuela, como en ediciones anteriores, continuará ofreciendo su atractivo más emblemático: el Pabellón de Países. En esta sección, emprendedores, representaciones diplomáticas, restaurantes, empresas de catering y exponentes de la nueva escena culinaria nacional presentan propuestas típicas provenientes de otras latitudes. Este año habrá gastronomía de Alemania, Argentina, España, Estados Unidos, Francia, Grecia, Irán, Italia, México, Perú y Venezuela.

El área de expositores artesanales y puestos promocionales complementarán las actividades del evento, siendo centro de acopio para aquellos emprendedores que colocan a disposición del público sus creaciones culinarias.

Esta novena edición se realizará gracias al apoyo del Grupo CGYM, en alianza con el la Alcaldía de Baruta, en beneficio de la  Fundación Mano e’ Tambor, programa impulsado por la Dirección de Arte y Cultura del citado gobierno local. ", 
        "17/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "4"],
    ["Foro", "Mujer, Creatividad y Liderazgo Emprendedor", 
        "Organización Aliadas en su misión de apoyo a las mujeres conmemora esta importante fecha con el evento “Semana de la Mujer 2016”, realizando un conjunto de actividades, desde el lunes 07 de marzo hasta el viernes 11 de marzo en nuestros seis (6) Núcleos Aliadas en Tecnología, a nivel nacional ubicados en Caracas (El Valle, Las Acacias y Catia), Barquisimeto, Maracaibo y Valencia. Estas actividades totalmente gratuitas para la comunidad en general incluirán charlas y talleres relacionados a los Derechos Humanos de la mujeres y temas de Igualdad de Género. Además de ofrecer servicios gratuitos referentes a salud, nutrición, prevención de la violencia, orientación en el área de salud sexual y reproductiva, así como actividades culturales.

En esta edición de la “Semana de la Mujer 2016”, contamos con el apoyo de ONG´s, ODS, instituciones públicas y privadas, entre las cuales se encuentran: Centro Termific, Farmatodo, Herbalife, Hias, Coordinación de Salud Sexual y Reproductiva del Edo. Zulia, División de Extensión de la Facultad de Medicina del Edo Zulia, SIACE, Unidad de Investigación y Estudio de Género “Bellacarla Girón Camacaro”, Casa de la Mujer del Edo.Carabobo, Senosayuda, INAMUJER, Salud y Familia Anauco, Rotaract Club Cacique Baruta, Plafam, Cania, Acción Solidaria, Musas de Venezuela, Escuela de DDHH, Fundaribas, Distrito Sanitario 4, Avesa,entre otras. En esta fecha conmemorativa Organización Aliadas se suma al esfuerzo de ONU MUJERES en promulgar para el Día Internacional de la Mujer 2016 el lema; Por un Planeta 50-50 en 2030: Demos el paso para la igualdad de género.

Las Naciones Unidas impulsa los nuevos Objetivos de Desarrollo Sostenible (Agenda 2030) con esta iniciativa “Demos el paso” de ONU Mujeres repaldando de esta manera sus compromisos en materia de igualdad de género, empoderamiento y derechos humanos de las mujeres.

", 
        "29/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Demo Day Madrid EOI", 
        "
BBVA abrió el plazo de registro para la 8ª edición de su competencia Open Talent, que pretende encontrar a los mejores emprendedores que están cambiando los servicios financieros a través de la innovación digital, según nota de prensa. 

En los últimos cinco años, más de 3.250 compañías han pasado por este programa y los ganadores han acumulado inversiones de más de 116 millones de euros. 

¿Cómo participar?

La inscripción para participar en BBVA Open Talent 2016 puede realizarse en www.bbvaopentalent.com hasta el 27 de junio. Para seleccionar a los finalistas, el jurado tendrá en cuenta la capacidad para transformar la industria financiera del proyecto, la escalabilidad, el equipo que lo respalda y el modelo de negocio. ", 
        "30/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "1"],
    ["Taller", "Concurso de Emprendedores de IEBS", 
        "Roosvelt Amaro, director de la citada institución, informó que el encuentro cuenta con el apoyo de Fedecámaras Carabobo y la Camara de Comercio de Valencia, con el objeto de ofrecer herramientas formativas a todas aquellas personas interesadas en desarrollar una visión global e innovadora en el mundo de los negocios. “Nuestro programa ofrece servicios de consultoría, asesorías y capacitación en las áreas de ventas, mercadeo, liderazgo, finanzas e inversiones con el fin de incrementar la productividad en las empresas. De allí la intención de realizar este foro”, destacó.

Entre las premisas de la actividad también se hallan: dar a conocer las nuevas tendencias y estrategias en ventas, mercadeo, liderazgo e inversiones que ayuden a los participantes del evento a tomar decisiones más acertadas a la hora de expandir y construir nuevos negocios.

En tal sentido, las personas interesadas en ser parte de este importante encuentro pueden contactar al citado director a través del correo director@escueladenegocios.org.ve, al teléfono 0426-165.42.47 o la página www.escueladenegocios.org.ve 

ROOSVELT AMARO
Director
Escuela de Negocios Venezuela
Movil: 0426-165.42.47", 
        "18/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "10"],  
    ["Documental", "Business Plan Presentation Powerpoint Template", 
        "Es muy común escuchar hoy en día por motivos diversos a muchas personas decir, pensar o evaluar en irse del país intentando buscar realidades distintas para sus vidas. Sin embargo,  tomar esta decisión no sólo es un proceso lógico que hay que afrontar, este proceso va mucho más allá de eso, es un proceso que incluye fortaleza mental, emocional y hasta espiritual, para poder afrontar todo lo que ello conlleva, no es fácil pensar en comenzar una vida nueva en un lugar distinto y separarse de los seres queridos e incluso muchas veces renunciar a sueños y metas que tenías pensados en tu lugar de origen.

Después del éxito obtenido en Caracas batiendo record de taquilla en dos ocasiones a petición de público y de haber visitado las ciudades de MATURÍN, MARACAY y MÉRIDA, continúa la gira nacional de la Conferencia titulada “Me voy o me quedo”. El próximo 31 de OCTUBRE estará en  PUERTO ORDAZ; 7 de noviembre en MARGARITA, 12 de noviembre en SAN CRISTÓBAL, 18 de noviembre en CUMANÁ;  20 de noviembre en VALENCIA y 25 de noviembre en CARACAS. Esta conferencia será  dictada por el reconocido periodista @IsnardoBravo en compañía de Coach y Conferencista Internacional @GregoryWisdom, para la cual invitamos a todo aquel que desee disfrutar de este espacio de crecimiento personal y profesional.", 
        "12/09/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Premios CEEI-IVACE 2017", 
        "El evento dedicado a la producción bien hecha a mano en Venezuela, titulado Bazar artesanal ExpresArte Navidad, encuentro que, este 2015, arriba a su cuarta edición, inaugurando la temporada más alegre del año.

Bombones, trufas, exóticas mermeladas, miel, esculturas en chocolate, lámparas, bisutería, orfebrería, jabones, bolsos, obras pictóricas y una amplia gama de objetos utilitario-decorativos para el hogar, la oficina y toda la familia, se podrán adquirir en este Bazar, organizado por La Escuela Itinerante Cooperativa Artesanal Cirila, institución autónoma fundada en 1974, orientada a promover, a través de talleres y bazares, el emprendimiento en Venezuela.

ExpresArte, reúne a 52 productores artesanales nacionales, quienes garantizan calidad a precios amigables, con servicio de punto de venta, estacionamiento, total seguridad y, como atractivos adicionales, rifas gratuitas con más de cien premios, más una nutrida programación cultural diaria a la 1 de la tarde, con agrupaciones profesionales de música cañonera, gaitas, géneros caribeños, academias de modelaje; aunado a coloridos espectáculos de danza, donde los bailadores se moverán al ritmo del joropo recio y los tambores. ¡Imperdible! ¡No falten!", 
        "19/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
    ["Evento", "Acelera tu empresa en Europa", 
        "Verano Gourmet
Diversos emprendedores de pro- ductos gourmet como quesos, cerveza, pan sin gluten y galletas presentarán sus productos en el showroom del coworking Spacioss. Los expositores hablarán sobre cómo surge su producto, cómo lo fabrican y distribuyen. Se prevé la participación de entre 10 a 15 expositores que compartirán su historia y resolverán dudas de los asistentes que deseen incursionar en este mercado. 

Fecha: 3 de agosto
Sede: Spacioss Coworking, CDMX
Costo: Entrada libre
Contacto: (55) 5536 4976 Ext. 26167", 
        "19/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "1"],
    ["Evento", "Teamlabs SparkUp", 
        "ExpoWeed, feria del cannabis
Conferencistas y talleristas internacionales ilustrarán a los visitantes sobre los usos medicinales, industriales y ancestrales de la planta del cannabis. En el evento sobre esta industria en auge, que se realiza en México por segundo año consecutivo, se podrán conseguir artículos elaborados con este material como: champú, cremas, gomitas de sabores y hasta cerveza. 

Fecha: 18, 19 y 20 de agosto
Sede: WTC, CDMX. Salón: Maya 3. Horario: 10:00 a 14:00 horas
Costo: $200
Contacto: leopoldorivera@gmail.com", 
        "19/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "4"],
    ["Foro", "Be-Hub! Verano 2017", 
        "Si tu empresa es proveedora de la industria de hoteles, restau- rantes, cafeterías y catering, esta exposición comercial para mayoristas es para ti. En cuatro días de encuentros de negocios y más de 400 expositores, los expertos compartirán las tendencias e innovaciones en este mercado. 

Fecha: 18, 19 y 20 de agosto
Sede: Centro Citibanamex, CDMX
Costo: $200
Contacto: (55) 5536 4976", 
        "19/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Jóvenes con futuro", 
        "Exposición dedicada a promover los productos derivados del agave: Sotol, Raicilla, Bacanora, Mezcal y Pulque. Rescata y difunde los productos generados a partir de la destilación de esta planta. Es un foro para que pro- ductores y distribuidores hagan contactos y generen negocios con los profesionales del retail.   

Fecha: 31 de agosto
Sede: WTC, CDMX
Costo: $120 por día, Horario: 12:00 a 20:30
Contacto: (55) 5604 4900 Ext. 122 y 216 ", 
        "16/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "1"],
    ["Taller", "5ª Edición Coworking EOI Madrid", 
        "Con el fin de fortalecer la comercialización de productos hechos en México, que impulsen el desarrollo de las micro, pequeñas y medianas empresas, este foro es una vitrina para productos como textiles, artesanías, manufactura, alimentos, financiamiento, bebidas, industria e innovación tecnológica. El evento es ideal para generar alianzas de negocio y ventas.  

Fecha: 29, 30 y 31 de agosto
Sede: WTC, CDMX.
Contacto: (922) 2235 051/ 30731 y contacto@consumeloquemexicoproduce.mx", 
        "15/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "8"],   
    ["Documental", "Business Plan Presentation Powerpoint Template", 
        "Un evento para emprendedores y empresarios. En esta edición podrás vivir de cerca las industrias del futuro a través de 10 ecosistemas, más de 400 conferencias y talleres. Contarán con actividades innova- doras como el Disruptivo Fest, Bazar Emprendedor, food trucks y foro abierto para las industrias creativas.    

Fecha: 11 al 15 de septiembre
Sede: Centro Citibanamex, CDMX
Costo: Prerregistro.
Contacto: (018004) 462 336", 
        "01/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],
    ["Foro", "Premios Creatic", 
        "Este 24 de agosto, en el Centro Citibanamex, Entrepreneur te presenta Growth 2017, un evento donde te daremos seis claves para crecer, pese a la crisis, y donde también podrás inspirarte con las historias de emprendedores que triunfan ante cualquier tormenta.

Fecha: 24 de agosto
Sede: Centro Citibanamex, CDMX 
Costo: Entrada Libre
Contacto:  Growth2017.mx", 
        "16/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Mañana inauguran ExpoGastronomía Venezuela", 
        "El  intercambio comercial Panamá–Venezuela se ha incrementado en los últimos trimestres ya que la deuda que se tenía con los secretarios en la Zona Libre de Colón ya fue pagada por el gobierno. Así lo informó el presidente de la Cámara de Integración Venezolana-Panameña (CIVENPA) Francisco De Sola en entrevista con el periódico El Emprendedor.

En este orden de ideas, De Sola aseveró que lo anterior ha multiplicado las inversiones entre ambas naciones. “En Panamá llega toda la mercancía de todas las partes del mundo, es mucho más fácil tener acceso a esa materia prima allá (…) En la cámara nosotros siempre estamos impulsando esos intercambios”, sostuvo.

Oportunidad de inversión

Así mismo, el titular de CIVENPA anunció que a partir de este 30 de abril al 06 de mayo, realizarán una misión empresarial que comenzará con un seminario de dos días, luego una visita a la Zona Libre de Colón, después  a Panamá Pacífico y a las Zonas Francas para que todos los asistentes puedan tener ruedas de negocios con los empresarios panameños.

“El empresario se va a encontrar con algo bien interesante, ya que el tiempo vale oro y ellos, en dos días, van a tener un enfoque de cómo invertir y cómo su empresa se puede mover en Panamá, cómo su empresa puede importar desde allá, cómo su empresa puede hacer relaciones con otras pares panameñas y de otras partes del mundo”, expresó.

Adicionalmente, De Sola dijo que los asistentes obtendrán un enfoque rápido de una semana acerca de cómo vivir en Panamá, cómo hacer negocios allá y además, cómo hacer más productiva su empresa aquí en Venezuela.

“Esta nueva visita empresarial va a tener muchos más retos para el empresariado porque ya Panamá tiene una competitividad en el tapete, donde no solamente va la gente de Venezuela, sino de distintas partes del mundo para gozar de los beneficios tributarios con los que cuenta”, agregó el vocero.", 
        "19/08/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "10"],
    ["Taller", "Las novedades más impactantes del CES 2017", 
        "Seguidamente, el presidente de CIVENPA detalló que “ahorita es buen momento de invertir allá, ya que la ampliación de esa misma zona (Zona Libre de Colón), hace que los precios sean atractivos para el empresario que desea alquilar galpones u obtener su mercancía allí y no pagar impuestos”.

En esta nueva visita empresarial asistirán empresarios en el área de colchones, de ferretería y muebles, “que se hacen aquí y que están ofreciendo sus acabados allá en Panamá para las construcciones nuevas, para los hoteles y todo lo que se está desarrollando en ese país”, precisó.

Finalmente, De Sola concluyó haciendo un llamado al empresario venezolano que desea asistir a esta visita empresarial y añadió que también harán presencia representantes de firmas de contadores, quienes darán un enfoque diferente a los empresarios acerca de los pasos a seguir para poder invertir en Panamá.

(Para mayor información comuníquese a: 0212 636 03 72 – 04143710219 - email: info@civenpa.org  - web: www.civenpa.org)", 
        "21/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "2"],
    ["Documental", "Programa Oportunidades energéticas en Venezuela", 
        "La Cámara Inmobiliaria de Venezuela (CIV) y la Cámara Inmobiliaria Metropolitana (CIM), reunirán a líderes del sector para ofrecer sus perspectivas sobre cómo estimular las ventas y la producción en estos tiempos de crisis. Dicho encuentro empresarial cuenta con la colaboración o co-patrocinio del periódico El Emprendedor como medio de comunicación.

La Cima del Éxito Inmobiliario es el nombre de la reunión de los profesionales de bienes raíces más destacados de Venezuela que se realizará este miércoles 29 de marzo en la Torre BOD, en La Castellana, informó el ente mediante nota de prensa.

El presidente de la Cámara Inmobiliaria de Venezuela, Carlos González Contreras, expresó que el gremio privado ofrece una respuesta positiva ante la crisis. “Este evento promoverá acciones y métodos creativos en tiempos de incertidumbre. Muchos profesionales venezolanos ven en el sector inmobiliario una oportunidad de crecimiento y de hacer una carrera productiva”.", 
        "05/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Premios Generacción", 
        "“Con la Cima del Éxito Inmobiliario reunimos a expertos que con sus recorridos profesionales nos señalarán nuevas formas de mejorar la productividad de los corredores y aumentar las ventas de las empresas del sector”, indicó González Contreras.

Por su parte, el presidente de la Cámara Inmobiliaria Metropolitana, Roberto Orta Martínez, añadió que “este es un día de aprendizaje sobre qué podemos hacer desde nuestra área profesional para, creativamente, proponer soluciones productivas a un mercado complejo. Las empresas inmobiliarias deben reinventar sus procesos de comercialización y adecuarlos a las nuevas generaciones y tecnologías”.

Durante la Cima del Éxito Inmobiliario, los asistentes escucharán las siguientes ponencias: “Competitividad Inmobiliaria”, de Héctor Tosta, Vicepresidente de la Cámara Inmobiliaria Metropolitana; “6 pasos para abatir la adversidad”, de Nelson Quintero Weffer, presidente de la Cámara Inmobiliaria del Zulia;  “El arte supremo de vender”, de Juan Carlos Jiménez, experto en comunicación y mercadeo; “El valor razonable de un inmueble en escenarios de alta incertidumbre económica y jurídica”, de Arturo Facchin, especialista en avalúos.", 
        "22/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
    ["Evento", "Para startups en la industria aérea", 
        "En días recientes, un total de 50 estudiantes de Ingeniería Mecatrónica de la Universidad Nacional Experimental Politécnica Luis Caballero Mejías, presentaron 80 proyectos innovadores los cuales brindan soluciones a problemas que puedan presentarse en la industria, reseñó ÚN.

En el marco de la V Feria de Mecatrónica, el estudiante de sexto semestre Rafael Catalá, presentó junto a sus compañeros un vehículo que fabricaron controlado con una aplicación Android que puede desplazarse en un espacio donde se registre un incendio.

Entre los inventos exhibidos se encuentran una incubadora que controla temperatura y humedad, un aparato que refleja letras, palabras, frases y números con luces Led, máquinas para controlar el llenado de tanques de agua, dispensadoras de jugo y chucherías, un carrito Baja Sae con que han participado en eventos internacionales y muchos más dispositivos.", 
        "16/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "3"],
    ["Foro", "SEOPLUS Congress 2017", 
        "Renny Campos, coordinador de la carrera de Ingeniería Mecatrónica, informó que actualmente se encuentran formando a 450 estudiantes que al egresar serán contratados en empresas locales y del país. También precisó que algunos egresados consiguen puestos de trabajo en Panamá, Canadá, Argentina, Bolivia, México y Perú, entre otros.

Así mismo, el coordinador del taller de mecatrónica, Ignacio Campos anunció que “si una empresa se interesa en un proyecto, existe la posibilidad de fabricarse con el tamaño que la industria requiera”, comentó.

En este orden de ideas, Campos agregó que una ventaja primordial de estas propuestas es que los estudiantes ofrecen alternativas más económicas de las que actualmente se encuentran disponibles en el mercado. ", 
        "24/12/2017",
        "2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15","04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Starting a Business ", 
        "Lorem ipsum dolor sit amet", 
        "19/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "5"],
    ["Taller", "Franchise 500 ", 
        "Estimular un análisis de la situación petrolera actual y ofrecer herramientas para generar impactos positivos en Venezuela es una de las premisas fundamentales del programa Venezuela, liderazgo y petróleo. Gregory Rondón, director de formación de la fundación Futuro Presente y Hellen Barrios, coordinadora del programa, asistieron al espacio A Tiempo de Unión Radio donde asomaron las múltiples oportunidades “ocultas” en el panorama actual venezolano.

No es un secreto la crisis que actualmente atraviesa el mercado petrolero mundial debido a la abrupta caída en los precios desde el 2015. Mismo año en el cual ha venido en aumento la producción en países como EE.UU por medio de técnicas como el fracking.

No obstante, la atención constante solamente en el rubro petrolero, no ha permitido contemplar en todo su esplendor el desarrollo de la industria energética internacional la cual avanza cada vez más rápido debido a los grandes avances tecnológicos, lo que ha propiciado el uso de nuevas fuentes de energía como la eólica, solar, biomasa, carbón, entre otras, reseña EN.", 
        "03/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "7"],
    ["Documental", "II edición European Coworkings EOI", 
        "En los programas “analizamos cómo es que se ha tratado de manera rentista y cómo lo podemos llevar ahora a una reforma, que si bien es un recurso, sus ingresos se deben utilizar para potenciar todos los sistemas productivos del país y no quedarnos en solamente la renta, sino diversificarlo”, expresó Barrios.

Por su parte, Gregory Rondón, director de formación explicó que “Cada vez más son los jóvenes que no necesariamente involucrados con la industria petrolera quieren participar desde su nicho en romper estos paradigmas rentistas para hacer de Venezuela un país mucho mejor y más eficiente económicamente”.

 “Nosotros buscamos personas que apuesten por Venezuela y ese es el factor diferenciador y la propuesta de valor que nosotros ofrecemos, estamos enfrentándonos a un éxodo juvenil muy alto, pero también hay mucha gente que quiere quedarse y que quieren apostar al país”, precisó.

A lo largo del programa radial se tocó también el tema de la administración de las distintas fuentes energéticas del país, mencionando que hay tantos proyectos gasíferos que están pendientes, se citó el ejemplo de analistas que afirman que mientras en Venezuela el 90% de los habitantes recibe el gas a través de las bombonas, en Colombia hay más de 100 ciudades que reciben gas directo.

“No sólo tenemos el petróleo, está la industria del gas, la industria petroquímica, la <migración energética>, energía nuclear, tema del cual no se habla en Venezuela. Existen otras fuentes de energía que deben ser sumamente aprovechables, en la actualidad no se habla de que exista otra cosa a parte del petróleo”, expresó barrios.

El Programa Venezuela, Liderazgo y Petróleo tuvo una primera cohorte, donde se formaron 50 líderes de diferentes lugares del país, en el área de la industria petrolera y el área energética a nivel mundial. Los requisitos para postularse son ser mayor de 18 años, bachiller graduado y tener un perfil de liderazgo o de impacto en su entorno. Para inscribirse hay que ingresar en www.futuropresente.com  y completar el formulario en la sección VLP NP

Los jóvenes ofrecen también un programa llamado Liderazgo Sustentable “donde precisamente rompemos el paradigma de siempre ver todo lo sustentable como ecológico, sino que lo sustentable tiene que ver con las políticas económicas que se tomen, políticas financieras que atañen a toda la sociedad”, puntualizó Barrios.

Modificado por última vez enJueves, 02 Febrero 2017 21:08


Noticias que expanden tu mente y tu negocio 
RECIBE LAS 10 MEJORES NOTICIAS 
DE LA SEMANA EN TU CORREO

 
SUSCRIBETE AHORA GRATIS




 



Visto 965
Imprimir
Email
1 2 3 4 5
(0 votos)
", 
        "04/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Focus Pyme y Emprendimiento", 
        "Los amantes del buen comer tienen una buena razón para estar más contentos que niño con juguete nuevo: mañana se inaugura la novena edición de ExpoGastronomía Venezuela en los espacios de la plaza Alfredo Sadel de Las Mercedes. Esta actividad estará abierta al público desde las 11:00 am hasta las 9:00 pm hasta el venidero 17 de abril.

Se trata de un espacio de encuentro donde chefs y aspirantes, sibaritas y aficionados gastronómicos se reencontrarán una vez más para desplegar un abanico de sabores y satisfacer paladares, informó una nota de prensa emitida por los organizadores de este evento y cuya entrada es gratuita.

ExpoGastronomía Venezuela, como en ediciones anteriores, continuará ofreciendo su atractivo más emblemático: el Pabellón de Países. En esta sección, emprendedores, representaciones diplomáticas, restaurantes, empresas de catering y exponentes de la nueva escena culinaria nacional presentan propuestas típicas provenientes de otras latitudes. Este año habrá gastronomía de Alemania, Argentina, España, Estados Unidos, Francia, Grecia, Irán, Italia, México, Perú y Venezuela.", 
        "14/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"],
    ["Evento", "6ª Jornadas de Empleo y Emprendimiento", 
        "ExpoGastronomía Venezuela, como en ediciones anteriores, continuará ofreciendo su atractivo más emblemático: el Pabellón de Países. En esta sección, emprendedores, representaciones diplomáticas, restaurantes, empresas de catering y exponentes de la nueva escena culinaria nacional presentan propuestas típicas provenientes de otras latitudes. Este año habrá gastronomía de Alemania, Argentina, España, Estados Unidos, Francia, Grecia, Irán, Italia, México, Perú y Venezuela.

El área de expositores artesanales y puestos promocionales complementarán las actividades del evento, siendo centro de acopio para aquellos emprendedores que colocan a disposición del público sus creaciones culinarias.

Esta novena edición se realizará gracias al apoyo del Grupo CGYM, en alianza con el la Alcaldía de Baruta, en beneficio de la  Fundación Mano e’ Tambor, programa impulsado por la Dirección de Arte y Cultura del citado gobierno local. ", 
        "17/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "http://academia.devtohack.com/", "4"],
    ["Foro", "Mujer, Creatividad y Liderazgo Emprendedor", 
        "Organización Aliadas en su misión de apoyo a las mujeres conmemora esta importante fecha con el evento “Semana de la Mujer 2016”, realizando un conjunto de actividades, desde el lunes 07 de marzo hasta el viernes 11 de marzo en nuestros seis (6) Núcleos Aliadas en Tecnología, a nivel nacional ubicados en Caracas (El Valle, Las Acacias y Catia), Barquisimeto, Maracaibo y Valencia. Estas actividades totalmente gratuitas para la comunidad en general incluirán charlas y talleres relacionados a los Derechos Humanos de la mujeres y temas de Igualdad de Género. Además de ofrecer servicios gratuitos referentes a salud, nutrición, prevención de la violencia, orientación en el área de salud sexual y reproductiva, así como actividades culturales.

En esta edición de la “Semana de la Mujer 2016”, contamos con el apoyo de ONG´s, ODS, instituciones públicas y privadas, entre las cuales se encuentran: Centro Termific, Farmatodo, Herbalife, Hias, Coordinación de Salud Sexual y Reproductiva del Edo. Zulia, División de Extensión de la Facultad de Medicina del Edo Zulia, SIACE, Unidad de Investigación y Estudio de Género “Bellacarla Girón Camacaro”, Casa de la Mujer del Edo.Carabobo, Senosayuda, INAMUJER, Salud y Familia Anauco, Rotaract Club Cacique Baruta, Plafam, Cania, Acción Solidaria, Musas de Venezuela, Escuela de DDHH, Fundaribas, Distrito Sanitario 4, Avesa,entre otras. En esta fecha conmemorativa Organización Aliadas se suma al esfuerzo de ONU MUJERES en promulgar para el Día Internacional de la Mujer 2016 el lema; Por un Planeta 50-50 en 2030: Demos el paso para la igualdad de género.

Las Naciones Unidas impulsa los nuevos Objetivos de Desarrollo Sostenible (Agenda 2030) con esta iniciativa “Demos el paso” de ONU Mujeres repaldando de esta manera sus compromisos en materia de igualdad de género, empoderamiento y derechos humanos de las mujeres.

", 
        "13/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],
    ["Curso", "Demo Day Madrid EOI", 
        "
BBVA abrió el plazo de registro para la 8ª edición de su competencia Open Talent, que pretende encontrar a los mejores emprendedores que están cambiando los servicios financieros a través de la innovación digital, según nota de prensa. 

En los últimos cinco años, más de 3.250 compañías han pasado por este programa y los ganadores han acumulado inversiones de más de 116 millones de euros. 

¿Cómo participar?

La inscripción para participar en BBVA Open Talent 2016 puede realizarse en www.bbvaopentalent.com hasta el 27 de junio. Para seleccionar a los finalistas, el jurado tendrá en cuenta la capacidad para transformar la industria financiera del proyecto, la escalabilidad, el equipo que lo respalda y el modelo de negocio. ", 
        "14/12/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/", "1"],
    ["Taller", "Concurso de Emprendedores de IEBS", 
        "Roosvelt Amaro, director de la citada institución, informó que el encuentro cuenta con el apoyo de Fedecámaras Carabobo y la Camara de Comercio de Valencia, con el objeto de ofrecer herramientas formativas a todas aquellas personas interesadas en desarrollar una visión global e innovadora en el mundo de los negocios. “Nuestro programa ofrece servicios de consultoría, asesorías y capacitación en las áreas de ventas, mercadeo, liderazgo, finanzas e inversiones con el fin de incrementar la productividad en las empresas. De allí la intención de realizar este foro”, destacó.

Entre las premisas de la actividad también se hallan: dar a conocer las nuevas tendencias y estrategias en ventas, mercadeo, liderazgo e inversiones que ayuden a los participantes del evento a tomar decisiones más acertadas a la hora de expandir y construir nuevos negocios.

En tal sentido, las personas interesadas en ser parte de este importante encuentro pueden contactar al citado director a través del correo director@escueladenegocios.org.ve, al teléfono 0426-165.42.47 o la página www.escueladenegocios.org.ve 

ROOSVELT AMARO
Director
Escuela de Negocios Venezuela
Movil: 0426-165.42.47", 
        "12/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "10"],  
    ["Documental", "Business Plan Presentation Powerpoint Template", 
        "Es muy común escuchar hoy en día por motivos diversos a muchas personas decir, pensar o evaluar en irse del país intentando buscar realidades distintas para sus vidas. Sin embargo,  tomar esta decisión no sólo es un proceso lógico que hay que afrontar, este proceso va mucho más allá de eso, es un proceso que incluye fortaleza mental, emocional y hasta espiritual, para poder afrontar todo lo que ello conlleva, no es fácil pensar en comenzar una vida nueva en un lugar distinto y separarse de los seres queridos e incluso muchas veces renunciar a sueños y metas que tenías pensados en tu lugar de origen.

Después del éxito obtenido en Caracas batiendo record de taquilla en dos ocasiones a petición de público y de haber visitado las ciudades de MATURÍN, MARACAY y MÉRIDA, continúa la gira nacional de la Conferencia titulada “Me voy o me quedo”. El próximo 31 de OCTUBRE estará en  PUERTO ORDAZ; 7 de noviembre en MARGARITA, 12 de noviembre en SAN CRISTÓBAL, 18 de noviembre en CUMANÁ;  20 de noviembre en VALENCIA y 25 de noviembre en CARACAS. Esta conferencia será  dictada por el reconocido periodista @IsnardoBravo en compañía de Coach y Conferencista Internacional @GregoryWisdom, para la cual invitamos a todo aquel que desee disfrutar de este espacio de crecimiento personal y profesional.", 
        "09/11/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "3", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],    
    ["Otro", "Premios CEEI-IVACE 2017", 
        "El evento dedicado a la producción bien hecha a mano en Venezuela, titulado Bazar artesanal ExpresArte Navidad, encuentro que, este 2015, arriba a su cuarta edición, inaugurando la temporada más alegre del año.

Bombones, trufas, exóticas mermeladas, miel, esculturas en chocolate, lámparas, bisutería, orfebrería, jabones, bolsos, obras pictóricas y una amplia gama de objetos utilitario-decorativos para el hogar, la oficina y toda la familia, se podrán adquirir en este Bazar, organizado por La Escuela Itinerante Cooperativa Artesanal Cirila, institución autónoma fundada en 1974, orientada a promover, a través de talleres y bazares, el emprendimiento en Venezuela.

ExpresArte, reúne a 52 productores artesanales nacionales, quienes garantizan calidad a precios amigables, con servicio de punto de venta, estacionamiento, total seguridad y, como atractivos adicionales, rifas gratuitas con más de cien premios, más una nutrida programación cultural diaria a la 1 de la tarde, con agrupaciones profesionales de música cañonera, gaitas, géneros caribeños, academias de modelaje; aunado a coloridos espectáculos de danza, donde los bailadores se moverán al ritmo del joropo recio y los tambores. ¡Imperdible! ¡No falten!", 
        "15/10/2017","2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
        "04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"]                         
]
cont = 1
publicidad_list.each do |category_type1, title1, description1, start_date1,
    duration1, start_hour1, end_hour1, location1, cost1, phone1, user1, website1, prioridad1|
    publicidad = Category.new( category_type: category_type1, title: title1,
        description:description1, start_date:start_date1,
        duration: duration1, start_hour:start_hour1, end_hour:end_hour1,
        location:location1, cost:cost1, phone:phone1, user_id:user1, web_site:website1, priority: prioridad1, status:true)
    publicidad.avatar1 = File.open("#{Rails.root}/imagenes/#{cont}.jpg")
    publicidad.avatar2 = File.open("#{Rails.root}/imagenes/#{cont+1}.jpg")
    publicidad.avatar3 = File.open("#{Rails.root}/imagenes/#{cont+2}.jpg")
    cont += 3
    if cont >= 42 then
        cont = 1
    end    
    publicidad.save!
end
