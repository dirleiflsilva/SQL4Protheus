/* Script criado para preencher o campo A5_NOMEFOR, 
   da tabela SA5-Produto x Fornecedores, buscando 
   dados da tabela SA2-Cadastro Fornecedores
   
   Lembre que o nome das tabelas no Protheus consideram
   a empresa, neste exemplo estou usando a empresa 99-TESTE!
*/
MERGE SA5990 AS SA5
USING(SELECT * FROM SA2990) AS SA2
ON SA5.A5_FORNECE = SA2.A2_COD
AND SA5.A5_LOJA = SA2.A2_LOJA
WHEN MATCHED THEN UPDATE SET
SA5.A5_NOMEFOR = SA2.A2_NOME;
