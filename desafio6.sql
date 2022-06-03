SELECT
    MIN(plans.value) AS faturamento_minimo,
    MAX(plans.value) AS faturamento_maximo,
    ROUND(AVG(plans.value), 2) AS faturamento_medio,
    SUM(plans.value) AS faturamento_total
FROM
    plans
    INNER JOIN `user` ON plans.id = user.plan_id;