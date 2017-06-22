# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'On crée les restos'
Restaurant.destroy_all
# Review.destroy_all
# Booking.destroy_all

restaurant1 = Restaurant.create(
  name: "Alain Ducasse au Plaza Athénée",
  address: "25, avenue Montaigne",
  city: "Paris",
  zip: "75008",
  phone: "01 58 00 23 43",
  description: "Le grand chef aux vingt-huit restaurants dans le monde a retrouvé la troisième étoile perdue en 2015 pour cause de cuisine trop audacieuse marquée par la naturalité, l’absence de viandes rouges et la prépondérance affichée des poissons, des végétaux, des céréales conjugués à l’influence japonaise: légumes des jardins de Versailles et moutarde pilée, homard bleu, pommes de mer au four, turbot en écailles, tian et le caillé de brebis aux céréales et miel d’arbousier… Tout cela d’un dépouillement rigoureux servi dans un décor blanc et or, mobilier, luminaires, un espace de restauration inégalable à Paris. Une fête des sens qui se paie.
",
  chef: "Alain Ducasse",
  average_rating: 4
 )

restaurant2 = Restaurant.create(
  name: "Le Meurice",
  address: "228, rue de Rivoli",
  city: "Paris",
  zip: "75001",
  phone: "01 44 58 10 55",
  description: "Dans le magnifique palace des Tuileries, le plus ancien de Paris (1835), qui fut le domicile de Salvador Dali au premier étage, le restaurant tout de marbre façon Versailles, à peine amélioré par le désigner Philippe Starck, a hérité d’un nouveau chef auvergnat, Jocelyn Herland, venu du Dorchester de Londres, qui a maintenu le bref intitulé des plats réduits aux produits mis en œuvre: bar, agrumes, fenouil ou pigeon légumes primeurs ou encore volailles et morilles. C’est aux maîtres d’hôtel bien informés de décrire l’allure, le goût, les cuissons, les sauces… Oui, l’appétit vient en écoutant ce qui stimule l’imaginaire. De la haute gastronomie, tout imprégnée de la civilisation de la table.",
  chef: "Jocelyn Herland",
  average_rating: 4
  )

restaurant3 = Restaurant.create(
  name: "Sylvestre",
  address: "79, rue Saint-Dominique",
  city: "Paris",
  zip: "75007",
  phone: "01 47 05 79 79",
  description: "Ancien professeur à l’école de cuisine d’Alain Ducasse, Sylvestre Wahid, Français d’origine pakistanaise, a succédé à Jean-François Piège à l’étage de la brasserie Thoumieux, une bonne adresse. À peine installé, cet artiste de l’assiette a décroché deux étoiles dans ce boudoir intimiste d’un charme fou. Tourteau de Roscoff rafraîchi au caviar, Saint-Jacques de plongée à la courge et truffe blanche, agneau de lait à l’aubergine, tarte au citron et au chocolat. Un très plaisant moment de table.",
  chef: "Sylvestre Wahid",
  average_rating: 5
  )

restaurant4 = Restaurant.create(
  name: "Lucas Carton",
  address: "9, place de la Madeleine",
  city: "Paris",
  zip: "75008",
  phone: "01 42 65 22 90",
  description: "Après le départ en retraite d’Alain Senderens, recréateur de ce monument de la restauration parisienne, Paul-François Vranken, le propriétaire, a confié la cuisine et la carte à Julien Dumas, jeune trentenaire formé dans la dream team d’Alain Ducasse chez Rech. Voici la transformation radicale de la partition, révélant un vrai talent de chef moderne –c’est la renaissance de Lucas 2016. Foie de canard laqué, agneau de lait des Pyrénées, merlan croustillant au sarrasin, Paris-Reims. Le Michelin va suivre.",
  chef: "Alain Senderens",
  average_rating: 5
 )

restaurant5 = Restaurant.create(
  name: "Restaurant Pages",
  address: "4, rue Auguste Vacquerie",
  city: "Paris",
  zip: "75016",
  phone: "01 47 20 74 94",
  description: "Dans le magnifique palace des Tuileries, le plus ancien de Paris (1835), qui fut le domicile de Salvador Dali au premier étage, le restaurant tout de marbre façon Versailles, à peine amélioré par le désigner Philippe Starck, a hérité d’un nouveau chef auvergnat, Jocelyn Herland, venu du Dorchester de Londres, qui a maintenu le bref intitulé des plats réduits aux produits mis en œuvre: bar, agrumes, fenouil ou pigeon légumes primeurs ou encore volailles et morilles. C’est aux maîtres d’hôtel bien informés de décrire l’allure, le goût, les cuissons, les sauces… Oui, l’appétit vient en écoutant ce qui stimule l’imaginaire. De la haute gastronomie, tout imprégnée de la civilisation de la table.",
  chef: "Jocelyn Herland",
  average_rating: 5
  )

restaurant6 = Restaurant.create(
  name: "Histoires",
  address: "85, avenue Kléber",
  city: "Paris",
  zip: "75016",
  phone: "01 70 98 16 35",
  description: "Pour son premier restaurant parisien en solo, sans son père Bernard, créateur de l’Ambroisie, trois étoiles place des Vosges, le fils unique a fait construire, tout près du Trocadéro, un superbe restaurant tout en longueur agencé autour d’alcôves et de canapés de couleur pastel. Magnifique récital: écrevisses pattes rouges gaspacho de cerises, langoustine royale et caviar Golden, volaille de Bresse déglacée au Xérès, croquant chocolat glace mascarpone. Tout cela de grande classe par un chef d’avenir.",
  chef: "Mathieu Pacaud",
  average_rating: 5
  )

restaurant7 = Restaurant.create(
  name: "Neige d’Été",
  address: "12, rue de l’Amiral Roussin",
  city: "Paris",
  zip: "75015",
  phone: "01 42 73 66 66",
  description: "Hideki Nishi s’est pénétré de la gastronomie française au Cinq du Four Seasons George V, dans le sillage des chefs étoilés Legendre et Briffard, d’excellents pédagogues. L’étoile de 2016 a propulsé cette petite boîte franco-nippone à la cuisine apparente dans le cénacle des «must» de la capitale. C’est mérité car ce chef humble et connaisseur, expert en menus imposés, concocte le délicat tourteau à la gelée de homard et caviar, le homard aux cèpes, le canard au foie gras et maïs, la tarte aux figues et crème d’amandes, un régal à chaque préparation. Ah le Michelin a du bon!",
  chef: "Hideki Nishi",
  average_rating: 5
  )

restaurant8 = Restaurant.create(
  name: "Jean-François Piège",
  address: "7, rue d’Aguesseau",
  city: "Paris",
  zip: "75008",
  phone: "01 53 05 00 00",
  description: "Chef de l’année au Grand Restaurant, trente places seulement, à quelques pas de l’Élysée, sous la verrière, des plats signatures: la pomme soufflée à la gelée de crustacés au caviar, gâteau de foies blonds aux écrevisses, chocolat Grand Cru neige de framboises. Une révélation attendue de la part d’un brillant second d’Alain Ducasse.",
  chef: "Jean-François Piège",
  average_rating: 5
  )

restaurant9 = Restaurant.create(
  name: "L’Hôtel de la Monnaie de Guy Savoy",
  address: "11, quai de Conti",
  city: "Paris",
  zip: "75005",
  phone: "01 43 80 40 61",
  description: "L’événement de l’année, la transformation de ce palais du XVIIIe siècle en restaurant de luxe, vue sur la Seine. Huîtres en pot-au-feu, saumon réfrigéré découpé et servi en salle et la fameuse soupe d’artichauts aux truffes, glace au lait d’amandes. L’archétype du grand restaurant français dans un site classé.",
  chef: "Guy Savoy",
  average_rating: 5
  )

restaurant10 = Restaurant.create(
  name: "Elmer",
  address: "30, rue Notre-Dame-de-Nazareth",
  city: "Paris",
  zip: "75003",
  phone: "01 43 56 22 95",
  description: "La révélation de l’année, le restaurant new look de Simon Horwitz, formé dans de grandes maisons étoilées, un répertoire créatif: bonite de ligne aux algues et fenouil, cabillaud et sa rouille, canette de Challans juteuse aux oignons, sablé aux amandes. À découvrir par les passionnés de la fourchette.",
  chef: "Guy Savoy",
  average_rating: 5
  )

restaurant10 = Restaurant.create(
  name: "Teppanyaki Ginza Onodera",
  address: "6, rue des Ciseaux ",
  city: "Paris",
  zip: "75006",
  phone: "01 42 02 72 12",
  description: "Quelques places au comptoir face aux cuisiniers nippons virtuoses des découpes: sashimis de bœuf de Kobé à la plaque, foie gras sauté à l’orange, saumon d’Écosse à l’anchois, riz à l’ail. À retenir, une future grande table.",
  chef: "Takanori Kambe",
  average_rating: 4
  )

restaurant11 = Restaurant.create(
  name: "Les Affranchis",
  address: "5, rue Henry Monnier",
  city: "Paris",
  zip: "75009",
  phone: "01 45 26 26 30",
  description: "Le bistrot très classique de Keenan Ballois et d’Enrico Bertazzo, anciens de l’Ambroisie place des Vosges, trois étoiles. Un beau récital: terrine de campagne, œuf poché carbonara lard et crème, cabillaud escalopé et ses légumes, joue de veau fondante, arlette caramélisée. La bistronomie à son meilleur.",
  chef: "Keenan Ballois",
  average_rating: 4
  )

restaurant12 = Restaurant.create(
  name: "Mensae",
  address: "23, rue Melingue",
  city: "Paris",
  zip: "75019",
  phone: "01 53 19 80 98",
  description: "Du côté de Belleville, deux bons cuisiniers, anciens du Meurice, Thibault Sombardier (Top Chef 2014) et Kevin d’Andrea (Top Chef 2015) ont ouvert ce bistrot lumineux pour concocter un éventail de plats simplissimes: sandwich aux truffes, cuisses de grenouilles à l’ail, pâté de cèpes chaud, mousse au chocolat et noisettes à des prix d’ami. Un tandem de grand avenir.",
  chef: "Keenan Ballois",
  average_rating: 5
  )

restaurant13 = Restaurant.create(
  name: "Le Cinq",
  address: "23, rue Melingue",
  city: "Paris",
  zip: "75008",
  phone: "01 53 19 80 98",
  description: "Pour succéder à Éric Briffard, double étoilé, le Four Seasons George V a engagé le Breton Christian Le Squer, venu de Ledoyen où il avait obtenu trois étoiles, dix-huit ans au sommet. En quelques semaines, à l’été 2015, Le Squer a déployé un talent, une créativité époustouflante dans le registre le plus classique. Produits de luxe (pas toujours, voir la version inédite de la gratinée d’oignons jamais vue), cuissons millimétrées, sauces, jus et macérations de haut vol.
  De cette carte splendide, d’une clarté parfaite, il faut retenir la salade de homard bleu au beurre blanc, le pigeon grillé laqué, truffes, olives, navets, le bar de ligne au caviar, le turbot grillé sur l’arête, crème d’olives citronnées, finger de caramel au citron. En salle, sous les colonnes doriques, le service est supervisé par Éric Beaumard, vice-meilleur sommelier du monde, expert en mariage des mets et des vins, la clé du plaisir au restaurant. La plus belle table de Paris?",
  chef: "Christian Le Squer",
  average_rating: 5
  )

restaurant14 = Restaurant.create(
  name: "L’Abeille au Shangri-La",
  address: "19, avenue d’Iéna",
  city: "Paris",
  zip: "75016",
  phone: "01 53 67 19 90",
  description: "Au sous-sol de ce palace de style chinois, le disciple d’Alain Ducasse, Christophe Moret, triple étoilé au Plaza, puis chef de Lasserre, a propulsé la carte des plats vers les sommets, sans jamais jouer la mode et l’excès prétentieux. Tout est logique dans sa manière, jamais plus de trois éléments dans l’assiette. Grenouilles dorées, girolles et amandes, oursins et caviar en délicate royale, bar de ligne, condiment maison, veau de l’Aveyron de la tête au pied, fraises Ciflorette au vin rouge, le grand style. La troisième étoile brille à l’horizon.",
  chef: "Christophe Moret",
  average_rating: 4
  )

restaurant15 = Restaurant.create(
  name: "Kei",
  address: "5, rue du Coq Héron",
  city: "Paris",
  zip: "75001",
  phone: "01 42 33 14 74",
  description: "Ce chef japonais blond, Kei Kobayashi, arrivé au pays de Brillat-Savarin à l’âge de 17 ans, a fait ses humanités culinaires dans de bonnes maisons françaises. Ses deux maîtres viennent du Plaza: Jean-François Piège et Christophe Moret. Son style moderne et inventif se lit dans ses menus (pas de carte) d’un style raffiné qui enchante ses fidèles. L’ancienne salle à manger de Gérard Besson, les tonalités claires, gris-blanc et argent, est un écrin parfait pour les asperges au crémeux de vin jaune, pour les langoustines translucides, fumées, égales à celles de Le Duc et par le délicat pigeon laqué au miso. En quinze ans au pays de Rabelais, une étoile archi méritée, la deuxième en vue.",
  chef: "Christophe Moret",
  average_rating: 5
  )

restaurant16 = Restaurant.create(
  name: "Restaurant David Toutain",
  address: "29, rue Surcouf",
  city: "Paris",
  zip: "75007",
  phone: "01 45 50 11 10",
  description: "Un as de la cuisine moderne, formé chez Alain Passard, dont toutes les assiettes sont des compositions colorées, délicates et jamais déroutantes. Personne ne cuisine comme ce jeune maître des saveurs, des textures et des arômes dans un décor de bois et de béton, clair et spacieux. Venu de l’Agapé Substance, il est désormais chez lui et toujours penché sur son piano à peine fumant. Maquereau à l’émulsion de pommes de terre, anguille fumée à la crème de sésame noir (chef-d’œuvre), veau rosé aux champignons et café, Tatin à la crème brûlée et marjolaine, une créativité hors normes. Un futur Alain Passard sans additions folles.",
  chef: "David Toutain",
  average_rating: 5
  )

restaurant16 = Restaurant.create(
  name: "Le Gabriel",
  address: "42, avenue Gabriel",
  city: "Paris",
  zip: "75008",
  phone: "01 58 36 60 50",
  description: "À l’emplacement de l’ancienne résidence hôtelière de Pierre Cardin, l’homme d’affaires Michel Reybier, propriétaire du Cos d’Estournel à Saint-Estèphe, a construit un hôtel de luxe décoré par Jacques Garcia, salons rouge vermillon, terrasse sur l’avenue, confort chic. En cuisine officie Jérôme Banctel, ancien chef de Lucas Carton. Un éventail de plats de la tradition personnalisée avec doigté: lisette snackée crème au citron, saumon bio, daïkon, aubergine fumée, homard bleu carbonara, chocolat au lait en mousse. Dîner d’exception, le déjeuner moins brillant.",
  chef: "Jérôme Banctel",
  average_rating: 5
  )

restaurant17 = Restaurant.create(
  name: "La Table d’Eugène",
  address: "18, rue Eugène Sue",
  city: "Paris",
  zip: "75018",
  phone: "01 42 55 61 64",
  description: "Perdu du côté de Barbès, cette petite boîte (Curnonsky) a été lancée par un cuisinier inventif, Geoffroy Maillard, qui n’a pas peur des mariages à risques, des légumes crus et cuits au parmesan, grenouilles et lait fermenté. Ces intitulés à la mode peuvent être surprenants: il n’est jamais question des techniques de cuisson, des façons de faire et des goûts. Mais le savoir-faire est là, emballant: le carpaccio de bar est parfumé à l’avocat fenouil, au combava, mouillé d’un sorbet aux herbes. Et le merlan est escorté de brocolis, pomelos, olives et citrons confits. Un festival de saveurs insolites pour gourmets décidés à manger autrement.",
  chef: "Jérôme Banctel",
  average_rating: 4
  )

restaurant18 = Restaurant.create(
  name: "Caillebotte",
  address: "8, rue Hippolyte Lebas",
  city: "Paris",
  zip: "75009",
  phone: "01 53 20 88 70",
  description: "Derrière sa cuisine vitrée, face au grand comptoir marbré, idéal pour une pause-déjeuner, Franck Baranger (par ailleurs papa du Pantruche) veille au grain : un œil sur les chaises sixties assaillies par ses habitués, l’autre sur son équipe parée à sortir rapidos des petites pépites, comme cette échine de cochon concupiscente, léchée d’une mousseline de carottes au sésame, en glorieux plat du jour. Au menu-carte, même jus : onctueux risotto parmesan-chorizo qui n’étouffe pas son délicat calamar fouetté d’un bouillon au citron ; puis, encore mieux, pavé de maigre aux écailles frites sur peau, avec courgettes jaunes et concassé de green zebra ; avant, au plus près de la saison, des abricots du Roussillon rôtis, glace café et sablé à la marjolaine.",
  chef: "Franck Béranger",
  average_rating: 4
  )









