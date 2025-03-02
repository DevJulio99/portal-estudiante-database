--CREAR TABLA obligacion_pagada
CREATE TABLE IF NOT EXISTS obligacion_pagada (
    "ID_OBLIG_PAGADA" SERIAL PRIMARY KEY,
    "ID_ALUMNO" INTEGER NOT NULL,
    "ID_PERIODO" INTEGER NOT NULL,
    "FECHA_PAGO" DATE NOT NULL,
    "CONCEPTO" VARCHAR(255) NOT NULL,
    "NUMERO_DOCUMENTO_PAGO" VARCHAR(50) NOT NULL,
    "NUMERO_CUOTA" INTEGER NOT NULL,
    "IMPORTE" NUMERIC(10,2) NOT NULL,
    "MONTO_PAGADO" NUMERIC(10,2) NOT NULL,
    CONSTRAINT fk_obligacion_alumno FOREIGN KEY ("ID_ALUMNO")
        REFERENCES alumno(id_alumno) ON DELETE CASCADE,
    CONSTRAINT fk_obligacion_periodo FOREIGN KEY ("ID_PERIODO")
        REFERENCES periodoacademico(id_periodo) ON DELETE CASCADE
);


--FUNCION pbtener_obligaciones_pagadas
CREATE OR REPLACE FUNCTION obtener_obligaciones_pagadas_por_alumno(id_alumno_param INTEGER)
RETURNS TABLE (
    periodo VARCHAR(255),
    fecha_pago DATE,
    concepto VARCHAR(255),
    numero_documento_pago VARCHAR(50),
    numero_cuota INTEGER,
    importe NUMERIC(10,2),
    monto_pagado NUMERIC(10,2)
) AS $$
BEGIN
    RETURN QUERY 
    SELECT 
        pa.descripcion_periodo AS periodo,
        op."FECHA_PAGO",
        op."CONCEPTO",
        op."NUMERO_DOCUMENTO_PAGO",
        op."NUMERO_CUOTA",
        op."IMPORTE",
        op."MONTO_PAGADO"
    FROM obligacion_pagada op
    JOIN periodoacademico pa ON op."ID_PERIODO" = pa.id_periodo
    WHERE op."ID_ALUMNO" = id_alumno_param
    ORDER BY pa.fecha_inicio DESC, op."FECHA_PAGO" DESC;
END;
$$ LANGUAGE plpgsql;
