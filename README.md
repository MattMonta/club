# The Mini test Project
### Project Week 6, Day 1

Matthieu Montagne

### Assignment



Pour ce projet, nous allons te demander d'utiliser MiniTests, puisqu'il existe plein d'exemples dans le livre de Hartl.
1. L'application

Pour éviter que tu te prennes la tête à faire du rails toute la journée (le but est de faire les tests après tout), cette apllication sera relativement simple. Cela te permettra de te rendre compte que tu as bien progreessé en Rails depuis le début 🙌

Le site sera un club privé. La page d'accueil affichera un lien vers la page du club, puis on pourra trouver une navbar pour permettre d'afficher soit son profil si l'on est login, soit les liens de login et register si l'on n'est pas login.
1.1. Création d'utilisateurs

Le modèle des utilisateurs comprendra :

    Prénom : qui ne peut être blank
    Nom : qui ne peut être blank
    Adresse email : qui ne peut être blank, et qui doit être unique

Ces trois attributs seront demandés au signup, et seront obligatoires pour l'inscription au site
1.2. Sessions

Pour les sessions, tu feras un système simple comme ce que tu as vu récemment.
1.3. Navigation

La navigation du site se fera de la manière suivante :

    La page d'accueil accueille l'utilisateur. Si ce dernier est login, elle lui donnera le lien pour la page du club. S'il n'est pas login, elle lui dira qu'il faut qu'il se login / inscrive pour accéder à la page du club
    Tout au long du site, il y aura une navbar : à gauche, elle redirigera vers la page d'accueil
        Si l'utilisateur n'est pas login, la navbar affichera un lien pour se login et un lien pour se register
        Si l'utilisateur est connecté, la navbar affichera un lien pour la page du club

1.3. La page du club

La page du club affichera toutes les personnes inscrites au site, avec nom, prénom, adresse email. Si un petit malin s'amuse à rentrer l'URL à la main, la page le redirigera vers l'écran de login en lui disant que le contenu n'est accessible qu'aux personnes login.
2. Les tests

Pour cette première partie, tu feras les tests après avoir conçu le site. La partie TDD sera après, cela permettra de te faire la main sur les tests 😺
2.1. Les tests de modèle

Tu vas commencer par les tests de modèles : il faut tester qu'il soit impossible de créer un user en base sans les bons paramètres (il faut tester d'envoyer un prénom vide, ET un prénom qui ne contient que des espaces). Aussi, impossible de créer un user qui a le même email qu'un autre user.
2.2. Tester les views

Nous allons maintenant tester les différentes views :

    Il faut tester la page d'accueil, et faire en sorte qu'elle affiche les bons liens, en fonction si la personne est connectée ou non
    Ensuite tu vas tester la page d'inscription, qui doit évidemment retourner une erreur si la personne n'a pas rentré les bons champs (email en double, paramètre manquant)
    Il faut tester la page de login, qui doit login la personne si elle rentre un bon ID, et lui renvoyer un message d'erreur si elle ne renvoie pas un bon paramètre
    Il faut tester la navbar, qui doit afficher les bons liens
    Il faut tester la page du club, qui ne doit être accessible qu'aux personnes login. La page doit renvoyer la liste des personnes inscrites au site, donc il faut tester cela.

2.3. Implémentation d'une nouvelle feature

Pour cette partie, nous allons te demander d'implémenter une feature, mais en TDD. C'est à dire que tu vas écrire les tests avant de coder la feature.
2.3.1. La feature

Tu voudrais avoir une page de show pour les utilisateurs inscrits. Le lien de show doit être accessible de la navbar pour toute personne qui est login (il faut tester ceci). La page de show doit afficher les informations de l'utilisateur (il faut tester ceci). Enfin, la page de show ne doit être accessible qu'aux personnes login, et aux personnes concernées. Si une personne non login essaie d'aller sur une page show, le site va la rediriger vers la page de login en lui disant de se login pour aller à ce contenu (il faut tester ceci). Aussi, si une personne login essaie d'aller sur un profil autre que le sien, le site va la rediriger vers la page d'accueil en lui disant que l'accés est restreint (il faut tester ceci aussi).
2.4. Implémentation d'une autre feature

Puisque tu es chaud patate, nous allons te donner une autre feature à implémenter : la possibilité de modifier son profil. Idem comme pour la feature précédente, nous allons te demander d'écrire les tests avant de coder la feature.
2.4.1. La feature

À partir de la page de profil (show), un utilisateur peut modifier son profil. La page d'edit affichera un formulaire similaire à celui du signup, qui va lui demander de changer Prénom, Nom, Email. Le formulaire est prepopulated par les attributs déjà existants. Évidemment, le formulaire doit renvoyer une erreur si un personne ne passe pas les bons paramètres (vide, email identique, etc)

Enfin, comme pour la méthode show, si une personne non login essaie d'aller sur une page edit, le site va la rediriger vers la page de login en lui disant de se login pour aller à ce contenu (il faut tester ceci). Aussi, si une personne login essaie de modifier un profil autre que le sien, le site va la rediriger vers la page d'accueil en lui disant que l'accés est restreint (il faut tester ceci aussi).

Enfin, petit changement, puisque les pages show seront non pas accessibles aux utilisateur connectés et concernés, mais accessibles à tous les utilisateur connectés. Il faudra modifier tes tests 😇 Le lien pour l'edit n'apparait que pour les utilisateurs connectés et concernés.

Dernière chose, les liens vers les pages profils seront accessibles à partir de la page du club : pour chaque utilisateur, nous allons mettre, avec son prénom nom email, un lien vers son profil.



### How to execute the program ? 

1. Clone this repository

2. Install all the gems
```sh
$ bundle install
```
3. Migrate db files
```sh
$ rails db:migrate
```
4. Execute seed file
```sh
$ rails db:seed
```
5. Visit the local version
```sh
$ rails s
```
