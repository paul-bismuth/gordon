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
    '0/5',
    '0/5',
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
