CREATE OR REPLACE FUNCTION obterDescricao(p_id IN segmercado.id%type)
    RETURN segmercado.descricao%type
IS
    v_descricao segmercado.descricao%type;
BEGIN
    SELECT descricao INTO v_descricao FROM segmercado WHERE id=p_id;
    RETURN v_descricao;
END;
/* select [nome da função(param)] from dual; */