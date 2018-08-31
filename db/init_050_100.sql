SET search_path TO gordon,public;

-- Bouillon repas/saumon sauce colombo, page 52
INSERT INTO ingredient (name) VALUES ('brocoli');
INSERT INTO ingredient (name) VALUES ('vermicelles de riz');
INSERT INTO ingredient (name) VALUES ('fond de volaille');
INSERT INTO ingredient (name) VALUES ('pâte à colombo');
INSERT INTO ingredient (name) VALUES ('filets de saumon');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'bouillon repas/saumon sauce colombo',
    '{
        "(, \"Taillez le brocoli en petits morceaux.\")",
        "(, \"Réunissez tous les ingrédients sauf le saumon dans une grande casserole avec 1,2 l d''eau. Laissez cuire 5 min à feu doux en remuant.\")",
        "(, \"Coupez le saumon en cubes, ajoutez-le dans le bouillon, laissez cuire 2 min de plus.\")",
        "(, \"Dressez dans des grands bols et dégustez bien chaud.\")"
    }',
    1,
    10,
    7,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/saumon sauce colombo'),
ingredient AS (SELECT id FROM ingredient WHERE name='brocoli')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 250, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/saumon sauce colombo'),
ingredient AS (SELECT id FROM ingredient WHERE name='vermicelles de riz')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 70, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/saumon sauce colombo'),
ingredient AS (SELECT id FROM ingredient WHERE name='fond de volaille')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'tablette'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/saumon sauce colombo'),
ingredient AS (SELECT id FROM ingredient WHERE name='pâte à colombo')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/saumon sauce colombo'),
ingredient AS (SELECT id FROM ingredient WHERE name='filets de saumon')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 700, 'gramme'
FROM recipe, ingredient;

-- Bouillon repas/crevettes, coco, curry, page 54
INSERT INTO ingredient (name) VALUES ('basilic asiatique');
INSERT INTO ingredient (name) VALUES ('crevette crue');
-- INSERT INTO ingredient (name) VALUES ('vermicelles de riz');
-- INSERT INTO ingredient (name) VALUES ('fond de volaille');
-- INSERT INTO ingredient (name) VALUES ('curry');
INSERT INTO ingredient (name) VALUES ('lait de coco');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'bouillon repas/crevettes, coco, curry',
    '{
        "(, \"Lavez et hachez le basilic. Décortiquez les crevettes.\")",
        "(, \"Réunissez tous les ingrédients dans une cocotte avec 60 cl d''eau, sauf le basilic et le vermicelle. Faites cuire 15 min à feu doux.\")",
        "(, \"Ajoutez le basilic et le vermicelle. Laissez reposer 5 min, mélangez et dégustez.\")"
    }',
    1,
    10,
    15,
    5,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/crevettes, coco, curry'),
ingredient AS (SELECT id FROM ingredient WHERE name='basilic asiatique')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 20, 'feuille'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/crevettes, coco, curry'),
ingredient AS (SELECT id FROM ingredient WHERE name='crevette crue')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/crevettes, coco, curry'),
ingredient AS (SELECT id FROM ingredient WHERE name='vermicelles de riz')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 80, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/crevettes, coco, curry'),
ingredient AS (SELECT id FROM ingredient WHERE name='fond de volaille')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'tablette'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/crevettes, coco, curry'),
ingredient AS (SELECT id FROM ingredient WHERE name='curry')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/crevettes, coco, curry'),
ingredient AS (SELECT id FROM ingredient WHERE name='lait de coco')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 80, 'centilitre'
FROM recipe, ingredient;

-- Bouillon repas/poulet courgette, page 56
-- INSERT INTO ingredient (name) VALUES ('basilic');
-- INSERT INTO ingredient (name) VALUES ('courgette');
INSERT INTO ingredient (name) VALUES ('oignon vert');
INSERT INTO ingredient (name) VALUES ('blanc de poulet');
-- INSERT INTO ingredient (name) VALUES ('fond de volaille');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'bouillon repas/poulet courgette',
    '{
        "(, \"Lavez et hachez le basilic. Équeutez puis émincez les courgettes et les oignons.\")",
        "(, \"Découpez le poulet en morceaux. Réunissez tous les ingrédients sauf le basilic dans une cocotte avec 1,2 l d''eau. Faites cuire 20 min à feu doux.\")",
        "(, \"Ajoutez le basilic. Laissez reposer 5 min, mélangez et dégustez.\")"
    }',
    1,
    10,
    20,
    5,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/poulet courgette'),
ingredient AS (SELECT id FROM ingredient WHERE name='basilic')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 20, 'feuille'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/poulet courgette'),
ingredient AS (SELECT id FROM ingredient WHERE name='courgette')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/poulet courgette'),
ingredient AS (SELECT id FROM ingredient WHERE name='oignon vert')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/poulet courgette'),
ingredient AS (SELECT id FROM ingredient WHERE name='blanc de poulet')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 4
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/poulet courgette'),
ingredient AS (SELECT id FROM ingredient WHERE name='fond de volaille')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'tablette'
FROM recipe, ingredient;

-- Bouillon repas/boeuf, moutarde, page 58
-- INSERT INTO ingredient (name) VALUES ('tomates cerise');
INSERT INTO ingredient (name) VALUES ('boeuf haché');
-- INSERT INTO ingredient (name) VALUES ('fond de volaille');
INSERT INTO ingredient (name) VALUES ('moutarde de dijon');
-- INSERT INTO ingredient (name) VALUES ('thym');
INSERT INTO ingredient (name) VALUES ('coquillettes');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, wait, people, category)
VALUES
(
    'bouillon repas/boeuf, moutarde',
    '{
        "(, \"Lavez et découpez les tomates cerise en deux. Moulez le boeuf en petites boulettes.\")",
        "(, \"Réunissez tous les ingrédients dans une cocotte avec 1,2 l d''eau, sauf les boulettes de boeuf. Faites cuire 20 min à feu vif, en remuant de temps en temps.\")",
        "(, \"Ajoutez les boulettes. Laissez reposer 5 min, mélangez et dégustez.\")"
    }',
    1,
    10,
    20,
    5,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/boeuf, moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='tomates cerise')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/boeuf, moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='boeuf haché')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 300, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/boeuf, moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='fond de volaille')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'tablette'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/boeuf, moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='moutarde de dijon')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 1, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/boeuf, moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='thym')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à café'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='bouillon repas/boeuf, moutarde'),
ingredient AS (SELECT id FROM ingredient WHERE name='coquillettes')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 80, 'gramme'
FROM recipe, ingredient;

-- Chèvres chauds sur salade croquante, page 60
-- INSERT INTO ingredient (name) VALUES ('asperge verte');
INSERT INTO ingredient (name) VALUES ('haricots verts');
INSERT INTO ingredient (name) VALUES ('crottin de chavignol');
INSERT INTO ingredient (name) VALUES ('pain baguette');
INSERT INTO ingredient (name) VALUES ('miel');
INSERT INTO ingredient (name) VALUES ('vinaigre de cidre');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'chèvres chauds sur salade croquante',
    '{
        "(, \"Épluchez et faites cuire les asperges et les haricots verts à l''eau bouillante salée.\")",
        "(, \"Coupez les crottings en deux et posez-les dans un plat sur les tranches de pain, arrosez de miel et enfournez 10 min à 180°C.\")",
        "(, \"Placez les asperges et les haricots verts dans un plat, ajoutez les toasts chauds, assaisonnez avec le vinaigre et dégustez.\")"
    }',
    1,
    15,
    20,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='chèvres chauds sur salade croquante'),
ingredient AS (SELECT id FROM ingredient WHERE name='asperge verte')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='chèvres chauds sur salade croquante'),
ingredient AS (SELECT id FROM ingredient WHERE name='haricots verts')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 400, 'gramme'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='chèvres chauds sur salade croquante'),
ingredient AS (SELECT id FROM ingredient WHERE name='crottin de chavignol')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 4
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='chèvres chauds sur salade croquante'),
ingredient AS (SELECT id FROM ingredient WHERE name='pain baguette')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 8, 'tranche'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='chèvres chauds sur salade croquante'),
ingredient AS (SELECT id FROM ingredient WHERE name='miel')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='chèvres chauds sur salade croquante'),
ingredient AS (SELECT id FROM ingredient WHERE name='vinaigre de cidre')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 2, 'cuillère à soupe'
FROM recipe, ingredient;

-- Asperges, parmesan, oeuf mollet, page 60
-- INSERT INTO ingredient (name) VALUES ('asperge verte');
-- INSERT INTO ingredient (name) VALUES ('huile d''olive');
INSERT INTO ingredient (name) VALUES ('orange');
-- INSERT INTO ingredient (name) VALUES ('oeuf');
-- INSERT INTO ingredient (name) VALUES ('parmesan en copeaux');

INSERT INTO
recipe (name, directions, difficulty, preparation, cook, people, category)
VALUES
(
    'asperges, parmesan, oeuf mollet',
    '{
        "(, \"Épluchez et faites cuire les asperges 5 min à l''eau bouillante salée. Mélangez l''huile d''olive, les zestes et le jus des oranges.\")",
        "(, \"Faites cuire les oeufs 5 min précises à l''eau bouillante. Épluchez-les dans l''eau fraîche.\")",
        "(, \"Dressez les asperges dans un plat, posez les oeufs dessus. Recouvrez de sauce à l''orange et de parmesan, salez et poivrez.\")"
    }',
    1,
    15,
    10,
    4,
    'main'
);

WITH
recipe AS (SELECT id FROM recipe WHERE name='asperges, parmesan, oeuf mollet'),
ingredient AS (SELECT id FROM ingredient WHERE name='asperge verte')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 20
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='asperges, parmesan, oeuf mollet'),
ingredient AS (SELECT id FROM ingredient WHERE name='huile d''olive')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 4, 'cuillère à soupe'
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='asperges, parmesan, oeuf mollet'),
ingredient AS (SELECT id FROM ingredient WHERE name='orange')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 2
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='asperges, parmesan, oeuf mollet'),
ingredient AS (SELECT id FROM ingredient WHERE name='oeuf')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity)
SELECT recipe.id, ingredient.id, 4
FROM recipe, ingredient;

WITH
recipe AS (SELECT id FROM recipe WHERE name='asperges, parmesan, oeuf mollet'),
ingredient AS (SELECT id FROM ingredient WHERE name='parmesan en copeaux')
INSERT INTO recipe_ingredients (fk_recipe, fk_ingredient, quantity, measurement)
SELECT recipe.id, ingredient.id, 150, 'gramme'
FROM recipe, ingredient;
