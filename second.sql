CREATE OR REPLACE PROCEDURE inserirCliente
    (p_id IN cliente.id%type,
    P_razao_social IN cliente.razao_social%type,
    p_CNPJ IN cliente.CNPJ%type,
    p_segmercado_id IN cliente.segmercado_id%type,
    p_faturamento_previsto IN cliente.faturamento_previsto%type)
IS
    v_categoria cliente.categoria%type;
    /* Vou mudar o valor do CNPJ, então tenho que copiar o valor do param em uma variavel */
    v_CNPJ cliente.CNPJ%type:=p_CNPJ;
BEGIN
    /* Chamo o proedure pra formatar o cnpj */
    formatCNPJ(v_CNPJ);
    v_categoria:=categoriaCliente(p_faturamento_previsto);
    INSERT INTO cliente VALUES (p_id, upper(p_razao_social), p_CNPJ, p_segmercado_id, SYSDATE, p_faturamento_previsto, upper(v_categoria));
    COMMIT;
END;