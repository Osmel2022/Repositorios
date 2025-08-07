-- 1_Calcula la suma del presupuesto de todos los departamentos.
SELECT SUM(presupuesto) AS total_presupuesto
    FROM departamentos;

-- 2_Calcula la media del presupuesto de todos los departamentos.
SELECT AVG(presupuesto) AS media_presupuesto
    FROM departamentos;

-- 3_Calcula el valor mínimo del presupuesto de todos los departamentos.
SELECT MIN(presupuesto) AS minimo_presupuesto
    FROM departamentos;

-- 4_Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con menor presupuesto.
SELECT nombre, presupuesto
    FROM departamentos
    WHERE presupuesto = (SELECT MIN(presupuesto) FROM departamentos);

-- 5_Calcula el valor máximo del presupuesto de todos los departamentos.
SELECT MAX(presupuesto) AS maximo_presupuesto
    FROM departamentos;

-- 6_Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con mayor presupuesto.
SELECT nombre, presupuesto
    FROM departamentos
    WHERE presupuesto = (SELECT MAX(presupuesto) FROM departamentos);