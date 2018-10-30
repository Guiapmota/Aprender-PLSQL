/* -------------------------------------------------------------------------------
         Como criar um script com o uso de par�metros definidos pelo usu�rio
   ------------------------------------------------------------------------------- */
   
-- Bloco de declara��o de vari�veis/Cursor
DECLARE
   
   V_NOME VARCHAR(30);
   
-- Bloco de execu��o
BEGIN 
  
      -- A fun��o NVL � espec�fica do Oracle e s� aceita duas express�es de qualquer tipo como entrada.
      -- Se a primeira express�o for nula, a fun��o retornar� a segunda express�o. Caso contr�rio, ser� retornada a primeira express�o.
      -- "&Nome" O sinal "&" chama a caixa de vari�veis e tudo que vem depois do mesmo � o titulo que o usu�rio ir� visualizar, 
      -- essa "Caixa de vari�veis" que o usu�rio ver� e definir� o valor dessa vari�vel.
      V_NOME := NVL(('&Nome'),NULL);
      
      -- Verifica��o se a vari�vel "V_NOME" n�o � nula
      IF (V_NOME IS NOT NULL) THEN
        
         -- Sa�da com a vari�vel usando "DBMS"
         DBMS_OUTPUT.PUT_LINE('Nome do usu�rio: ' || V_NOME);
      END IF;
END;
