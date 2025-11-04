-- Reemplazar la política SELECT de users con una que permita login sin tenant
DROP POLICY IF EXISTS rls_users_select ON public.users;

CREATE POLICY rls_users_select ON public.users
    FOR SELECT
    USING (
        current_setting('app.current_tenant', true) IS NULL OR
        current_setting('app.current_tenant', true) = '' OR
        codigo_sede::text = current_setting('app.current_tenant', true)
    );


-- Eliminar la política actual
DROP POLICY IF EXISTS rls_users_select ON public.users;

-- Crear una política que funcione correctamente para login
CREATE POLICY rls_users_select ON public.users
    FOR SELECT
    USING (
        -- Permitir cuando NO hay tenant (para login)
        (current_setting('app.current_tenant', true) IS NULL) OR
        (length(trim(coalesce(current_setting('app.current_tenant', true), ''))) = 0) OR
        -- O cuando el tenant coincide (operaciones normales)
        (codigo_sede::text = current_setting('app.current_tenant', true))
    );

-- Eliminar la política actual de SELECT en sede
DROP POLICY IF EXISTS rls_sede_select ON public.sede;

-- Crear política que permita login sin tenant
CREATE POLICY rls_sede_select ON public.sede
    FOR SELECT
    USING (
        -- Permitir cuando NO hay tenant (para login y operaciones sin auth)
        (current_setting('app.current_tenant', true) IS NULL) OR
        (length(trim(coalesce(current_setting('app.current_tenant', true), ''))) = 0) OR
        -- O cuando el tenant coincide (operaciones normales)
        (codigo_sede::text = current_setting('app.current_tenant', true))
    );

-- Eliminar la política actual de SELECT en alumno
DROP POLICY IF EXISTS rls_alumno_select ON public.alumno;

-- Crear política que permita login sin tenant
CREATE POLICY rls_alumno_select ON public.alumno
    FOR SELECT
    USING (
        -- Permitir cuando NO hay tenant (para login)
        (current_setting('app.current_tenant', true) IS NULL) OR
        (length(trim(coalesce(current_setting('app.current_tenant', true), ''))) = 0) OR
        -- O cuando el tenant coincide (operaciones normales)
        (codigo_sede::text = current_setting('app.current_tenant', true))
    );