SET search_path TO gordon,public;

-- Chips de parmesan à l'origan, page 6
INSERT INTO ingredient (name) VALUES ('parmesan en copeaux');
INSERT INTO ingredient (name) VALUES ('origan séché');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'chips de parmesan',
    '{
        "(, \"Déposez des petits tas de parmesan dans une poêle anti-adhésive bien chaude.\")",
        "(, \"Lorsqu''ils commencent à dorer. saupoudrez d''origan, retournez les chips et laissez cuire 1min de plus.\")",
        "(, \"Égouttez les chips sur du papier absorbant, dégustez froid à l''apéritif\")"
    }',
    1,
    5,
    5,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='chips de parmesan'),
ingredient AS (SELECT id FROM ingredient WHERE name='parmesan en copeaux')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient,quantity, measurement)
SELECT recipe.id, ingredient.id, 150, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='chips de parmesan'),
ingredient AS (SELECT id FROM ingredient WHERE name='origan séché')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient,quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à café'
FROM recipe, ingredient;

-- Feuilletés au fromage, page 7
INSERT INTO ingredient (name) VALUES ('pâte feuilletée');
INSERT INTO ingredient (name) VALUES ('fromage râpé');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'feuilletés au fromage',
    '{
        "(, \"Étalez la pâte feuilletée en laissant le papier de cuisson, répartissez le fromage râpé sur toute la surface. Roulez l''ensemble en serrant avec le papier et placez-le 20 min au congélateur.\")",
        "(, \"Étalez le papier sur une plaque. Coupez la pâte en tranches d''½ cm et placez-les sur la plaque.\")",
        "(, \"Enfournez 25 min à 180°C. Dégustez les feuilletés bien dorés et chauds à l''apéritif.\")"
    }',
    1,
    5,
    25,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='feuilletés au fromage'),
ingredient AS (SELECT id FROM ingredient WHERE name='pâte feuilletée')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient,quantity)
SELECT recipe.id, ingredient.id, 1
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='feuilletés au fromage'),
ingredient AS (SELECT id FROM ingredient WHERE name='fromage râpé')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient,quantity, measurement)
SELECT recipe.id, ingredient.id, 200, 'gramme'
FROM recipe, ingredient;

-- Sablés au parmesan et olives, page 8
INSERT INTO ingredient (name) VALUES ('olives noires');
INSERT INTO ingredient (name) VALUES ('parmesan');
INSERT INTO ingredient (name) VALUES ('beurre');
INSERT INTO ingredient (name) VALUES ('farine');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'sablés au parmesan et olives',
    '{
        "(, \"Hachez les olives et râpez le parmesan.\")",
        "(, \"Mélangez le beurre mou avec le parmesan, la farine et les olives hachées en malaxant.\")",
        "(, \"Formez des boudins et laissez reposer 1h au réfrigérateur. Préchauffez le four à 180°C.\")",
        "(, \"Découpez des rondelles de 1cm d''épaisseur et faites-les cuire 15 min sur une plaque.\")",
        "(, \"Laissez refroidir avant de les détacher.\")"
    }',
    1,
    25,
    15,
    60,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='sablés au parmesan et olives'),
ingredient AS (SELECT id FROM ingredient WHERE name='olives noires')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='sablés au parmesan et olives'),
ingredient AS (SELECT id FROM ingredient WHERE name='parmesan')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 150, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='sablés au parmesan et olives'),
ingredient AS (SELECT id FROM ingredient WHERE name='beurre')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 100, 'gramme'
FROM recipe, ingredient;


WITH
recipe AS (SELECT id FROM recipe WHERE name='sablés au parmesan et olives'),
ingredient AS (SELECT id FROM ingredient WHERE name='farine')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 100, 'gramme'
FROM recipe, ingredient;

-- Pizzetas saucisse, romarin et citron, page 10
INSERT INTO ingredient (name) VALUES ('romarin');
INSERT INTO ingredient (name) VALUES ('pâte à pizza');
INSERT INTO ingredient (name) VALUES ('saucisse de toulouse');
INSERT INTO ingredient (name) VALUES ('citron');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'pizzetas saucisse, romarin et citron',
    '{
        "(, \"Préchauffez le four à 170°C. Effeuillez et hachez le romarin. Étalez la pâte à pizza et découpez 12 ronds de pâte à l''aide d''un petit emporte-pièce.\")",
        "(, \"Taillez la saucisse en 12 tranches. Placez une rondelle de saucisse sur chaque pâton et enfournez 25 min sur une plaque.\")",
        "(, \"Sortez du four, saupoudrez de romarin et du zeste du citron râpé.\")"
    }',
    1,
    15,
    25,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='pizzetas saucisse, romarin et citron'),
ingredient AS (SELECT id FROM ingredient WHERE name='romarin')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'branche'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='pizzetas saucisse, romarin et citron'),
ingredient AS (SELECT id FROM ingredient WHERE name='pâte à pizza')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'boule'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='pizzetas saucisse, romarin et citron'),
ingredient AS (SELECT id FROM ingredient WHERE name='saucisse de toulouse')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 200, 'gramme'
FROM recipe, ingredient;


WITH
recipe AS (SELECT id FROM recipe WHERE name='pizzetas saucisse, romarin et citron'),
ingredient AS (SELECT id FROM ingredient WHERE name='citron')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 1
FROM recipe, ingredient;

-- Crème fouettée au saumon fumé, page 12
INSERT INTO ingredient (name) VALUES ('saumon fumé');
INSERT INTO ingredient (name) VALUES ('aneth');
INSERT INTO ingredient (name) VALUES ('crème fleurette');
-- INSERT INTO ingredient (name) VALUES ('citron');

INSERT INTO
recipe (name, directions, difficulty, preparation, people, category)
VALUES
(
    'crème fouettée au saumon fumé',
    '{
        "(, \"Coupez le saumon en petits dés. Lavez et hachez l''aneth, montez la crème en chantilly avec un fouet électrique dans un bol bien froid.\")",
        "(, \"Ajoutez le saumon, l''aneth, les zestes râpés et le jus des citrons dans la chantilly et dressez dans des ramequins.\")"
    }',
    1,
    10,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème fouettée au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='saumon fumé')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 6, 'tranche'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème fouettée au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='aneth')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'botte'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème fouettée au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='crème fleurette')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 33, 'centilitre'
FROM recipe, ingredient;


WITH
recipe AS (SELECT id FROM recipe WHERE name='crème fouettée au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='citron')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

-- dip de fromage frais et petits pois, page 14
-- INSERT INTO ingredient (name) VALUES ('citron');
INSERT INTO ingredient (name) VALUES ('petits pois');
INSERT INTO ingredient (name) VALUES ('ricotta');
INSERT INTO ingredient (name) VALUES ('huile d''olive');
-- INSERT INTO ingredient (name) VALUES ('origan séché');
INSERT INTO ingredient (name) VALUES ('pain');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'dip de fromage frais et petits pois',
    '{
        "(, \"Râpez le zeste des citrons et pressez le jus.\")",
        "(, \"Plongez les petits pois 2 min dans l''eau bouillante, égouttez-les puis mélangez-les avec la ricotta, l''huile d''olive, l''origan, le jus et le zeste des citrons.\")",
        "(, \"Salez, poivrez et dégustez sur des tranches de pain grillées.\")"
    }',
    1,
    10,
    5,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='dip de fromage frais et petits pois'),
ingredient AS (SELECT id FROM ingredient WHERE name='citron')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='dip de fromage frais et petits pois'),
ingredient AS (SELECT id FROM ingredient WHERE name='petits pois')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 100, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='dip de fromage frais et petits pois'),
ingredient AS (SELECT id FROM ingredient WHERE name='ricotta')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 250, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='dip de fromage frais et petits pois'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='dip de fromage frais et petits pois'),
ingredient AS (SELECT id FROM ingredient WHERE name='origan séché')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='dip de fromage frais et petits pois'),
ingredient AS (SELECT id FROM ingredient WHERE name='pain')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'tranche'
FROM recipe, ingredient;

-- Céleri au saumon fumé, page 16
INSERT INTO ingredient (name) VALUES ('céleri');
--INSERT INTO ingredient (name) VALUES ('saumon fumé');
INSERT INTO ingredient (name) VALUES ('yaourt nature');
INSERT INTO ingredient (name) VALUES ('curry');
--INSERT INTO ingredient (name) VALUES ('huile d''olive');

INSERT INTO
recipe (name, directions, difficulty, preparation, people, category)
VALUES
(
    'céleri au saumon fumé',
    '{
        "(, \"Taillez le céleri en petites branches régulières avec les feuilles ou non.\")",
        "(, \"Enveloppez-les de saumon fumé.\")",
        "(, \"Mélangez les yaourts, le curry et l''huile d''olive.\")",
        "(, \"Salez, poivrez et dégustez en trempant dans la sauce.\")"
    }',
    1,
    10,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='céleri au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='céleri')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'branche'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='céleri au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='saumon fumé')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'tranche'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='céleri au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='yaourt nature')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='céleri au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='curry')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='céleri au saumon fumé'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à soupe'
FROM recipe, ingredient;

-- Abricots farcis, page 18
INSERT INTO ingredient (name) VALUES ('abricot');
INSERT INTO ingredient (name) VALUES ('boudin noir');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'abricots farcis',
    '{
        "(, \"Préchauffez le four à 180°C. Fendez les abricots puis retirez les noyaux.\")",
        "(, \"Retirez la peau du boudin, écrasez la chair avec une fourchette.\")",
        "(, \"Farcissez la moitié des abricots avec le boudin, refermez avec l''autre moitié, placez-les dans un plat et enfournez 25 min.\")",
        "(, \"Dégustez bien chaud avec une salade de roquette.\")"
    }',
    1,
    15,
    25,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='abricots farcis'),
ingredient AS (SELECT id FROM ingredient WHERE name='abricot')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 16
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='abricots farcis'),
ingredient AS (SELECT id FROM ingredient WHERE name='boudin noir')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 200, 'gramme'
FROM recipe, ingredient;

-- Asperges rôties au jambon, page 19
INSERT INTO ingredient (name) VALUES ('asperge verte');
INSERT INTO ingredient (name) VALUES ('jambon cru');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'asperges rôties au jambon',
    '{
        "(, \"Préchauffez le four à 180°C.\")",
        "(, \"Épluchez et équeutez les asperges.\")",
        "(, \"Taillez les tranches de jambon en deux.\")",
        "(, \"Enveloppez chaque asperge avec une tranche de jambon.\")",
        "(, \"Enfournez-les 10 min.\")",
        "(, \"Dégustez tiède avec de la mayonnaise.\")"
    }',
    1,
    5,
    15,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='asperges rôties au jambon'),
ingredient AS (SELECT id FROM ingredient WHERE name='asperge verte')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='asperges rôties au jambon'),
ingredient AS (SELECT id FROM ingredient WHERE name='jambon cru')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 10, 'tranche'
FROM recipe, ingredient;

-- Foie gras chaud à la griotte, page 20
INSERT INTO ingredient (name) VALUES ('foie gras');
INSERT INTO ingredient (name) VALUES ('cerises griottes');
INSERT INTO ingredient (name) VALUES ('vinaigre balsamique');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'foie gras chaud à la griotte',
    '{
        "(, \"Découpez le foie gras en tranches épaisses et saisissez-les dans une poêle brûlante sans matières grasse.\")",
        "(, \"Laissez colorer 2 min de chaque côté.\")",
        "(, \"Ajoutez les griottes et le vinaigre balsamique, laissez cuire 1 min en arrosant le foie gras. Salez, poivrez et dégustez.\")"
    }',
    1,
    5,
    5,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras chaud à la griotte'),
ingredient AS (SELECT id FROM ingredient WHERE name='foie gras')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 400, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras chaud à la griotte'),
ingredient AS (SELECT id FROM ingredient WHERE name='cerises griottes')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras chaud à la griotte'),
ingredient AS (SELECT id FROM ingredient WHERE name='vinaigre balsamique')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'cuillère à soupe'
FROM recipe, ingredient;

-- Sashimi de thon à la pastèque, page 22
INSERT INTO ingredient (name) VALUES ('sauce soja');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');
INSERT INTO ingredient (name) VALUES ('thon');
INSERT INTO ingredient (name) VALUES ('pastèque');

INSERT INTO
recipe (name, directions, difficulty, preparation, people, category)
VALUES
(
    'sashimi de thon à la pastèque',
    '{
        "(, \"Mélangez la sauce soja avec l''huile d''olive.\")",
        "(, \"Découpez le thon en petites tranches épaisses.\")",
        "(, \"Retirez la peau de la pastèque et taillez-la comme le thon.\")",
        "(, \"Disposez les tranches de thon et de pastèque en les alternant dans 4 assiettes.\")",
        "(, \"Réservez au frais. Nappez de sauce 2 min avant de servir et dégustez\")"
    }',
    1,
    10,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='sashimi de thon à la pastèque'),
ingredient AS (SELECT id FROM ingredient WHERE name='sauce soja')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 3, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='sashimi de thon à la pastèque'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 3, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='sashimi de thon à la pastèque'),
ingredient AS (SELECT id FROM ingredient WHERE name='thon')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 600, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='sashimi de thon à la pastèque'),
ingredient AS (SELECT id FROM ingredient WHERE name='pastèque')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 600, 'gramme'
FROM recipe, ingredient;

-- Tartare de saint-jaques et foie gras, page 24
INSERT INTO ingredient (name) VALUES ('avocat');
INSERT INTO ingredient (name) VALUES ('bloc de foie gras cuit');
INSERT INTO ingredient (name) VALUES ('saint-jacques');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');
INSERT INTO ingredient (name) VALUES ('citron vert');

INSERT INTO
recipe (name, directions, difficulty, preparation, people, category)
VALUES
(
    'tartare de saint-jacques et foie gras',
    '{
        "(,\"Épluchez et découpez l''avocant en cubes.\")",
        "(,\"Taillez le foie gras et les saint-jacques en cubes de même taille.\")",
        "(,\"Mélangez tous les ingrédients dans un saladier, salez, poivrez et ajoutez l''huile d''olive et le jus du citron. Dégustez immédiatement avec du pain grillé.\")"
    }',
    1,
    10,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='tartare de saint-jacques et foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='avocat')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 1
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='tartare de saint-jacques et foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='bloc de foie gras cuit')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 150, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='tartare de saint-jacques et foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='saint-jacques')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 12
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='tartare de saint-jacques et foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='tartare de saint-jacques et foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='citron vert')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 1
FROM recipe, ingredient;

-- Cerises au lard, page 26
INSERT INTO ingredient (name) VALUES ('lard');
INSERT INTO ingredient (name) VALUES ('cerise');

INSERT INTO
recipe (name, directions, difficulty, preparation, people, category)
VALUES
(
    'cerises au lard',
    '{
        "(, \"Préchauffez le four à 180°C. Coupez les tranches de lard en deux.\")",
        "(, \"Lavez et séchez les cerises puis enroulez-les dans les tranches de lard.\")",
        "(, \"Disposez dans un plat et enfournez 10 min. Dégustez tiède à l''apéro.\")"
    }',
    1,
    10,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='cerises au lard'),
ingredient AS (SELECT id FROM ingredient WHERE name='lard')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 10, 'tranche'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='cerises au lard'),
ingredient AS (SELECT id FROM ingredient WHERE name='cerise')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

-- Pâté chaud de gibier à la myrtille, page 27
INSERT INTO ingredient (name) VALUES ('gibier haché');
INSERT INTO ingredient (name) VALUES ('myrtille');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'pâté chaud de gibier à la myrtille',
    '{
        "(, \"Préchauffez le four à 180°C. Mélangez dans un saladier le gibier et les myrtilles, salez, poivrez puis malaxez.\")",
        "(, \"Garnissez 4 ramequins en les tassant et faites-les cuire 45 min au bain-marie.\")",
        "(, \"Servez et dégustez chaud accompagné d''une salade.\")"
    }',
    1,
    10,
    45,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='pâté chaud de gibier à la myrtille'),
ingredient AS (SELECT id FROM ingredient WHERE name='gibier haché')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 300, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='pâté chaud de gibier à la myrtille'),
ingredient AS (SELECT id FROM ingredient WHERE name='myrtille')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 150, 'gramme'
FROM recipe, ingredient;

-- Terrine de canard à la pistache, page 28
INSERT INTO ingredient (name) VALUES ('pistaches mondées');
INSERT INTO ingredient (name) VALUES ('cuisses de canard');
INSERT INTO ingredient (name) VALUES ('chair à saucisse');
INSERT INTO ingredient (name) VALUES ('oeuf');
INSERT INTO ingredient (name) VALUES ('cognac');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'terrine de canard à la pistache',
    '{
        "(, \"Préchauffez le four à 170°C. Concassez les pistaches. Désossez et hachez les cuisses de canard dans un robot puis mélangez-les avec les autres ingrédients dans un saladier en malaxant.\")",
        "(, \"Tassez et enfournez 1h15 au bain-marie.\")",
        "(, \"Laissez refroidir au réfrigérateur 24h avant de déguster.\")"
    }',
    1,
    15,
    75,
    1440,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de canard à la pistache'),
ingredient AS (SELECT id FROM ingredient WHERE name='pistaches mondées')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 60, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de canard à la pistache'),
ingredient AS (SELECT id FROM ingredient WHERE name='cuisses de canard')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 800, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de canard à la pistache'),
ingredient AS (SELECT id FROM ingredient WHERE name='chair à saucisse')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 200, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de canard à la pistache'),
ingredient AS (SELECT id FROM ingredient WHERE name='oeuf')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de canard à la pistache'),
ingredient AS (SELECT id FROM ingredient WHERE name='cognac')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'cuillère à soupe'
FROM recipe, ingredient;

-- Terrine de foies de volaille, page 30
INSERT INTO ingredient (name) VALUES ('foies de volaille');
-- INSERT INTO ingredient (name) VALUES ('chair à saucisse');
-- INSERT INTO ingredient (name) VALUES ('oeuf');
INSERT INTO ingredient (name) VALUES ('thym');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'terrine de foies de volaille',
    '{
        "(, \"Préchauffez le four à 170°C. Découpez la moitié des foies de volaille en morceaux, hachez l''autre moitié dans un robot. Malaxez tous les ingrédients dans un saladier.\")",
        "(, \"Versez dans une terrine, tassez et faites cuire 45 min au bain-marie.\")",
        "(, \"Laissez refroidir une nuit au réfrigérateur et dégustez en tranches épaisses.\")"
    }',
    1,
    15,
    45,
    720,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de foies de volaille'),
ingredient AS (SELECT id FROM ingredient WHERE name='foies de volaille')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 500, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de foies de volaille'),
ingredient AS (SELECT id FROM ingredient WHERE name='chair à saucisse')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 400, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de foies de volaille'),
ingredient AS (SELECT id FROM ingredient WHERE name='oeuf')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de foies de volaille'),
ingredient AS (SELECT id FROM ingredient WHERE name='thym')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à café'
FROM recipe, ingredient;

-- Foie gras au pain d'épice, page 32
-- INSERT INTO ingredient (name) VALUES ('foie gras');
INSERT INTO ingredient (name) VALUES ('pain d''épice');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'foie gras au pain d''épice',
    '{
        "(, \"Préchauffez le four à 180°C. Coupez le pain d''épice en trois et le foie gras en cinq, salez, poivrez. Placez le foie gras et le pain d''épice dans un bocal en alternant les couches.\")",
        "(, \"Tassez, fermez le bocal et enfournez 20 min au bain-marie.\")",
        "(, \"Laissez refroidir une nuit au réfrigérateur avant de déguster.\")"
    }',
    1,
    10,
    20,
    720,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras au pain d''épice'),
ingredient AS (SELECT id FROM ingredient WHERE name='foie gras')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'lobe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras au pain d''épice'),
ingredient AS (SELECT id FROM ingredient WHERE name='pain d''épice')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 3, 'tranche'
FROM recipe, ingredient;

-- Foie gras au sel, page 33
-- INSERT INTO ingredient (name) VALUES ('foie gras');
INSERT INTO ingredient (name) VALUES ('gros sel gris');

INSERT INTO
recipe (name, directions, difficulty, preparation, wait, people, category)
VALUES
(
    'foie gras au sel',
    '{
        "(, \"La veille, enveloppez le foie gras dans un ling léger (type compresse de gaz). Placez-;le dans un plat, recouvrez de gros sel et réservez 12h au réfrigérateur.\")",
        "(, \"Le jour même, retirez le sel et le linge, essuyez le foie gras. Découpez en tranches puis dégustez avec des toasts de brioche.\")"
    }',
    1,
    10,
    720,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras au sel'),
ingredient AS (SELECT id FROM ingredient WHERE name='foie gras')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'lobe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras au sel'),
ingredient AS (SELECT id FROM ingredient WHERE name='gros sel gris')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 500, 'gramme'
FROM recipe, ingredient;

-- Foie gras au chou, page 34
INSERT INTO ingredient (name) VALUES ('chou chinois');
-- INSERT INTO ingredient (name) VALUES ('foie gras');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'foie gras au chou',
    '{
        "(, \"Plongez les feuilles de chou, 2 min dans l''eau bouillante. Raffraîchissez-les et coupez-les en deux.\")",
        "(, \"Coupez le foie gras en 8 morceaux, salez, poivrez et enveloppez chaque morceau dans une ½ feuille de chou.\")",
        "(, \"Faites cuire le foie gras 5 min dans un cuit-vapeur, égouttez les morceaux dans un plat et dégustez nature ou avec une vinaigrette.\")"
    }',
    1,
    10,
    20,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras au chou'),
ingredient AS (SELECT id FROM ingredient WHERE name='chou chinois')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 8, 'feuille'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='foie gras au chou'),
ingredient AS (SELECT id FROM ingredient WHERE name='foie gras')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 500, 'gramme'
FROM recipe, ingredient;

-- Terrine de jarret de porc au foie gras, page 35
INSERT INTO ingredient (name) VALUES ('jarret de porc demi-sel');
-- INSERT INTO ingredient (name) VALUES ('foie gras');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'terrine de jarret de porc au foie gras',
    '{
        "(, \"Plongez le jarret 10 min dans l''eau bouillante. Égouttez, laissez tiédir, désossez et découpez la chair avec la couenne en petits morceaux.\")",
        "(, \"Préchauffez le four à 180°C. Placez les morceaux de jarret avec le foie gras coupé en quatre dans une terrine. Tassez bien puis enfournez 20 min.\")",
        "(, \"Placez au frais une nuit. Démoulez et dégustez en tranches épaisses avec une salade.\")"
    }',
    1,
    15,
    30,
    720,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de jarret de porc au foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='jarret de porc demi-sel')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'kilo'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de jarret de porc au foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='foie gras')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 250, 'gramme'
FROM recipe, ingredient;

-- Terrine de jarret à la moutarde, page 36
-- INSERT INTO ingredient (name) VALUES ('jarret de porc demi-sel');
INSERT INTO ingredient (name) VALUES ('moutarde en grains');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'terrine de jarret à la moutarde',
    '{
        "(, \"Plongez le jarret 10 min dans l''eau bouillante.\")",
        "(, \" Égouttez, laissez tiédir, désossez et découpez la chair avec la couenne en petits morceaux.\")",
        "(, \"Mélangez avec la moutarde puis tassez les morceaux de jarret dans une terrine.\")",
        "(, \"Placez au frais une nuit. Démoulez et dégustez en tranches épaisses avec une salade.\")"
    }',
    1,
    15,
    10,
    720,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de jarret à la moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='jarret de porc demi-sel')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'kilo'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='terrine de jarret à la moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='moutarde en grains')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 3, 'cuillère à soupe'
FROM recipe, ingredient;

-- Crème de chou-fleur caramélisé, page 37
INSERT INTO ingredient (name) VALUES ('chou-fleur');
--INSERT INTO ingredient (name) VALUES ('beurre');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'crème de chou-fleur caramélisé',
    '{
        "(, \"Coupez le chou-fleur en petits morceaux et faites-le cuire 20 min dans une casserole avec de l''eau à hauteur. Égouttez-le (gardez l''eau de cuisson).\")",
        "(, \"Faites fondre le beurre dans une casserole, saisissez le chou-fleur dans le beurre brûlant, laissez roussir quelques minutes.\")",
        "(, \"Mouillez avec l''eau de cuisson, portez à ébullition et mixez. Salez, poivrez et dégustez.\")"
    }',
    1,
    10,
    25,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de chou-fleur caramélisé'),
ingredient AS (SELECT id FROM ingredient WHERE name='chou-fleur')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 1
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de chou-fleur caramélisé'),
ingredient AS (SELECT id FROM ingredient WHERE name='beurre')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 100, 'gramme'
FROM recipe, ingredient;

-- Crème d'artichaut au foie gras, page 38
INSERT INTO ingredient (name) VALUES ('fonds d''artichaut');
INSERT INTO ingredient (name) VALUES ('crème');
-- INSERT INTO ingredient (name) VALUES ('bloc de foie gras cuit');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'crème d''artichaut au foie gras',
    '{
        "(, \"Portez à ébullition les fonds d''artichaut, 40 cl d''eau et la crème. Mixez avec un mixeur plongeant, salez, poivrez.\")",
        "(, \"Découpez le foie gras en cubes.\")",
        "(, \"Dressez la crème dans des assiettes creuses, ajoutez le foie gras, l''huile d''olive, poivrez et dégustez.\")"
    }',
    1,
    15,
    10,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème d''artichaut au foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='fonds d''artichaut')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 400, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème d''artichaut au foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='crème')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 30, 'centilitre'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème d''artichaut au foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='bloc de foie gras cuit')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 120, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème d''artichaut au foie gras'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à soupe'
FROM recipe, ingredient;

-- Gaspacho aux asperges, page 40
-- INSERT INTO ingredient (name) VALUES ('jambon cru');
-- INSERT INTO ingredient (name) VALUES ('asperges vertes');
INSERT INTO ingredient (name) VALUES ('asperges blanches');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'gaspacho aux asperges',
    '{
        "(, \"Enfournez 10 min à 180°C les tranches de jambon et les asperges vertes épluchées et équeutées. Découpez l''ensemble en morceaux.\")",
        "(, \"Chauffez les asperges blanches avec leur eau puis mixez-les dans un blender.\")",
        "(, \"Dressez les assiettes et recouvrez d''asperges vertes, de jambon découpé en morceaux et d''un filet d''huile d''olive.\")"
    }',
    1,
    10,
    15,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho aux asperges'),
ingredient AS (SELECT id FROM ingredient WHERE name='jambon cru')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'tranche'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho aux asperges'),
ingredient AS (SELECT id FROM ingredient WHERE name='asperge verte')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 8
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho aux asperges'),
ingredient AS (SELECT id FROM ingredient WHERE name='asperges blanches')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'bocaux'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho aux asperges'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

-- crème de céleri aux oeufs de saumon, page 42
INSERT INTO ingredient (name) VALUES ('céleri-rave');
-- INSERT INTO ingredient (name) VALUES ('crème');
INSERT INTO ingredient (name) VALUES ('oeufs de saumon');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'crème de céleri aux oeufs de saumon',
    '{
        "(, \"Épluchez et découpez le céleri en cubes et faites-les cuire 35 min à l''eau bouillante salée.\")",
        "(, \"Retirez l''eau, ajoutez la crème et laissez cuire 10 min de plus. Salez, poivrez puis mixez l''ensemble et laissez refroidir.\")",
        "(, \"Dressez le céleri dans des petites tasses, répartissez les oeufs de saumon, ajoutez un filet d''huile d''olive et dégustez.\")"
    }',
    1,
    20,
    45,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de céleri aux oeufs de saumon'),
ingredient AS (SELECT id FROM ingredient WHERE name='céleri-rave')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 500, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de céleri aux oeufs de saumon'),
ingredient AS (SELECT id FROM ingredient WHERE name='crème')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 5, 'centilitre'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de céleri aux oeufs de saumon'),
ingredient AS (SELECT id FROM ingredient WHERE name='oeufs de saumon')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de céleri aux oeufs de saumon'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

-- Crème de chou-fleur, huile de sésame, page 44
-- INSERT INTO ingredient (name) VALUES ('chou-fleur');
-- INSERT INTO ingredient (name) VALUES ('crème');
INSERT INTO ingredient (name) VALUES ('graines de sésame');
INSERT INTO ingredient (name) VALUES ('huile de sésame');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'crème de chou-fleur, huile de sésame',
    '{
        "(, \"Découpez le chou-fleur en petits morceaux, mettez-les dans une casserole, mouillez à hauteur avec de l''eau et faites cuire 40 min à feu doux.\")",
        "(, \"Mixez avec un mixeur plongeant, ajoutez la crème, salez, poivrez. Dressez dans des bols individuels, saupoudrez de graines de sésame, ajoutez un filet d''huilde de sésame et dégustez.\")"
    }',
    1,
    15,
    40,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de chou-fleur, huile de sésame'),
ingredient AS (SELECT id FROM ingredient WHERE name='chou-fleur')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 500, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de chou-fleur, huile de sésame'),
ingredient AS (SELECT id FROM ingredient WHERE name='crème')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de chou-fleur, huile de sésame'),
ingredient AS (SELECT id FROM ingredient WHERE name='graines de sésame')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à café'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de chou-fleur, huile de sésame'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile de sésame')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'cuillère à café'
FROM recipe, ingredient;

-- Gaspacho de courgettes au basilic, page 46
INSERT INTO ingredient (name) VALUES ('basilic');
INSERT INTO ingredient (name) VALUES ('courgette');
INSERT INTO ingredient (name) VALUES ('pesto');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'gaspacho de courgettes au basilic',
    '{
        "(, \"Lavez et effeuillez le basilic. Mettez les courgettes, lavées et coupées, à cuire 30 min dans une casserole avec 25 cl d''eau.\")",
        "(, \"Ajoutez le pesto, l''huile d''olive et les ¾ des feuilles de basilic. Mixez avec un mixeur plongeant, salez, poivrez et laissez refroidir.\")",
        "(, \"Ajoutez le reste du basilic et dégustez.\")"
    }',
    1,
    10,
    30,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho de courgettes au basilic'),
ingredient AS (SELECT id FROM ingredient WHERE name='basilic')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'botte'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho de courgettes au basilic'),
ingredient AS (SELECT id FROM ingredient WHERE name='courgette')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 4
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho de courgettes au basilic'),
ingredient AS (SELECT id FROM ingredient WHERE name='pesto')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 3, 'cuillère à café'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho de courgettes au basilic'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 6, 'cuillère à soupe'
FROM recipe, ingredient;

-- Gaspacho tomates et poivrons, page 48
INSERT INTO ingredient (name) VALUES ('poivron rouge');
INSERT INTO ingredient (name) VALUES ('concombre');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');
INSERT INTO ingredient (name) VALUES ('tomates concassées');
INSERT INTO ingredient (name) VALUES ('vinaigre');
INSERT INTO ingredient (name) VALUES ('tomates cerise');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'gaspacho tomates et poivrons',
    '{
        "(, \"Équeutez et videz les poivrons, puis plongez-les 5 min dans une casserole d''eau bouillante.\")",
        "(, \"Épluchez, épépinez et coupez en cubes le concombre. Mixez tous les ingrédients sauf les tomates cerise dans un blender.\")",
        "(, \"Salez, poivrez et ajoutez les tomates cerise coupées en deux. Dégustez.\")"
    }',
    1,
    10,
    5,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho tomates et poivrons'),
ingredient AS (SELECT id FROM ingredient WHERE name='poivron rouge')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho tomates et poivrons'),
ingredient AS (SELECT id FROM ingredient WHERE name='concombre')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 1
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho tomates et poivrons'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 6, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho tomates et poivrons'),
ingredient AS (SELECT id FROM ingredient WHERE name='tomates concassées')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 800, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho tomates et poivrons'),
ingredient AS (SELECT id FROM ingredient WHERE name='vinaigre')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='gaspacho tomates et poivrons'),
ingredient AS (SELECT id FROM ingredient WHERE name='tomates cerise')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 200, 'gramme'
FROM recipe, ingredient;

-- crème de potiron à la noisette, page 50
INSERT INTO ingredient (name) VALUES ('noisette');
INSERT INTO ingredient (name) VALUES ('potiron');
-- INSERT INTO ingredient (name) VALUES ('crème');
INSERT INTO ingredient (name) VALUES ('huile de noisette');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'crème de potiron à la noisette',
    '{
        "(, \"Concassez les noisettes. Épluchez le potiron et découpez la chair en gros cubes.\")",
        "(, \"Mettez-la à cuire 35 min dans une casserole avec de l''eau à hauteur.\")",
        "(, \"Ajoutez la crème et l''huile. Portez à ébullition et mixez avec un mixeur plongeant. Salez, poivrez et dégustez avec les noisettes et un filet d''huile de noisette.\")"
    }',
    1,
    10,
    40,
    4,
    'starter'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de potiron à la noisette'),
ingredient AS (SELECT id FROM ingredient WHERE name='noisette')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de potiron à la noisette'),
ingredient AS (SELECT id FROM ingredient WHERE name='potiron')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 800, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de potiron à la noisette'),
ingredient AS (SELECT id FROM ingredient WHERE name='crème')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 20, 'centilitre'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='crème de potiron à la noisette'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile de noisette')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'cuillère à soupe'
FROM recipe, ingredient;
