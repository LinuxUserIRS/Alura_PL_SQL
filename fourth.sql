CREATE OR REPLACE PROCEDURE formatCNPJ(
    p_CNPJ IN OUT cliente.CNPJ%type
)
IS
BEGIN
    p_CNPJ:=substr(p_CNPJ, 1, 2)||'/'||substr(p_CNPJ, 3);
END;