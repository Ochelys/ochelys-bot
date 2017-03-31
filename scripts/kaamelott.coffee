# Description:
#   Kaamelott awesomeness
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot kaamelott -- random Kaamelott awesomeness
#
# Author:
#   PKoin

module.exports = (robot) ->
  kaamelott = {
    'Kadoc': [
      "Pour savoir s’il va y avoir du vent, il faut mettre son doigt dans le cul du coq.",
      "Tatan, elle fait des flans.",
      "Les pattes de canaaaaaaaaaaaaaaaaaaaaaaaaaaaaard !",
      "Elle est où la poulette ?",
      "Le caca des pigeons c'est caca, faut pas manger.",
      "Il faut pas respirer la compote, ça fait tousser.",
    ],
    'Karadoc': [
      "La joie de vivre et le jambon, y'a pas trente-six recettes du bonheur !",
      "Lorsqu'on le tient par la partie sporadique, ou boulière, le fenouil est un objet redondant.",
      "Tout à l’heure, on a vu que le chapelet de saucisses n’était pas un objet redondant. Et pourtant, on a pu lui trouver une utilisation périmétrique en s’en servant comme un fouet.",
    ],
    'Léodagan':  [
      "J'pense pas que deux trous-du-cul soient plus efficaces qu’un seul !",
      "Bon par exemple moi j'adore les fraises, bon bah si j'bouffe 3 bassines de fraises en 1 heure ah bah j'choppe la chiasse hein, j'suis comme tout l'monde hein...",
    ],
    'Perceval': [
      "C’est pas faux.",
      "Faut arrêter ces conneries de nord et de sud ! Une fois pour toutes, le nord, suivant comment on est tourné, ça change tout !",
      "C’est pour ça : j’lis jamais rien. C’est un vrai piège à cons c’t’histoire-là. En plus j’sais pas lire.",
      "Si Joseph d'Arimathie a pas été trop con, vous pouvez être sûr que le Graal, c'est un bocal à anchois.",
      "Dans la vie, j’avais deux ennemis : le vocabulaire et les épinards. Maintenant j’ai la botte secrète et je bouffe plus d’épinards. Merci, de rien, au revoir messieurs-dames.",
      "Non, vous, vous vous maravez. Quand on a pas de technique, il faut y aller à la zob.",
      "À ROULEEEEETTES !! HOULA... J'l'ai un peu trop gueulé ça, non ? À roulettes.",
      "Une maquette ?! Vous avez pas dit qu'c'était une catapulte ?",
      "Dans le Languedoc, ils m'appellent Provençal. Mais c'est moi qui m'suis gouré en disant mon nom. Sinon, en Bretagne, c'est le Gros Faisan au sud, et au nord, c'est juste Ducon...",
    ],
    'Merlin': [
      "Qu'est-ce qui est petit et marron ? 'Un marron.' Putain, il est fort ce con.",
      "Alors le chevalier il crie au Romain : Hey ! Vous vous prenez pour le Colisée !",
      "Vous n’êtes pas le plus fort, Môssieur Élias ! Quand on confond un clafoutis et une part de clafoutis, on vient pas la ramener !",
      "Remarquez que moi j'ai un pote poissonnier qui sait boire du lait à la paille par les trous de nez !",
    ],
    'Tavernier': [
      "La seule solution pour que ce soit encore plus sale, ça serait de demander aux clients de chier directement par terre ! Je vois que ça.",
      "Et deux jus de pomme qui piquent !",
    ],
    'Arthur': [
      "Ah, mais des tanches pareilles, on devrait les mettre sous verre, hein !",
      "J'suis chef de guerre moi, j'suis pas là pour agiter des drapeaux et jouer d'la trompette...",
    ],
    'Roparzh': [
      "Qu'est-ce que vous voulez-vous insinuyer Sire ?",
      "Commencez pas à noyer la peau de l’ours avant d’avoir vendu le poisson.",
    ],
    'Guethenoc': [
      "Ce que je dis, tout le monde s'en tamponne ! Je gueule, je gueule, j'pourrais gueuler dans le cul d'un poney ce serait pareil !",
      "Je lui rembourse mes genoux, et si il a filé la vérole à mes bêtes, chuis chuis un marteau moi ! Je crame tout moi ! Ma ferme, la sienne, celles des autres, le château, j'vais flamber la moitié de la Bretagne.",
    ]
  }

  robot.on 'kaamelott:command', (res) ->
    res.send "Hey @here, c'est l'heure du stand-up :)"
    res.send askAlexandreAstier(res)

  robot.respond /kaamelott/i, (res) ->
    res.send askAlexandreAstier(res)

  askAlexandreAstier = (res) ->
    character = res.random Object.keys(kaamelott)
    quote = res.random kaamelott[character]
    "(Pendant ce temps là, à Kaamelott) #{character} : \"#{quote}\"."
