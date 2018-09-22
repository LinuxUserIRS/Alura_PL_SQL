CREATE OR REPLACE FUNCTION categoriaCliente(p_faturamento_previsto IN cliente.faturamento_previsto%type)
    RETURN cliente.categoria%type
IS
    v_categoria cliente.categoria%type;
BEGIN
    IF p_faturamento_previsto < 10000 THEN
        v_categoria := 'PEQUENO';
    ELSIF p_faturamento_previsto < 50000 THEN
        v_categoria := 'MEDIO';
    ELSIF p_faturamento_previsto < 100000 THEN
        v_categoria := 'MEDIO GRANDE';
    ELSE
        v_categoria := 'GRANDE';
    END IF;
    RETURN v_categoria;
END;