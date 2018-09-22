CREATE OR REPLACE PROCEDURE updateSegmercado(
    p_id IN cliente.id%type,
    p_segmercado_id IN cliente.segmercado_id%type
)
IS
BEGIN
    UPDATE cliente SET segmercado_id=p_segmercado_id WHERE id=p_id;
    COMMIT;
END;