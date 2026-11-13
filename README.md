# Mapeamento de Pontos de Coleta Seletiva e Descarte Sustentável de Resíduos

## 1. Sobre o projeto

Este projeto foi desenvolvido como parte da atividade acadêmica da disciplina de Banco de Dados, do curso de Análise e Desenvolvimento de Sistemas da Universidade Salgado de Oliveira (UNIVERSO).

O objetivo é desenvolver um banco de dados relacional para organizar, armazenar e disponibilizar informações sobre pontos de coleta seletiva e tipos de resíduos, contribuindo para o acesso da população a essas informações e incentivando práticas de descarte sustentável.

A área de estudo selecionada foi o bairro **Goiânia Park Sul**, localizado em Aparecida de Goiânia – GO.

## 2. Estrutura do banco de dados

O banco de dados foi desenvolvido utilizando MySQL e possui quatro tabelas:

- **bairro:** armazena os dados dos bairros cadastrados.
- **ponto_coleta:** registra informações sobre os pontos de coleta, como nome, endereço, tipo e situação.
- **tipo_residuo:** armazena os tipos de resíduos e suas respectivas categorias.
- **ponto_residuo:** estabelece o relacionamento entre os pontos de coleta e os tipos de resíduos.

## 3. Tecnologias utilizadas

- MySQL Server 8.0
- MySQL Workbench
- SQL

## 4. Organização dos arquivos

| Arquivo | Descrição |
|---|---|
| `01_criacao_tabelas.sql` | Criação do banco de dados, tabelas, chaves e restrições. |
| `02_insercao_dados.sql` | Inserção dos registros nas tabelas. |
| `03_consultas.sql` | Consultas SQL desenvolvidas para obtenção e análise das informações. |

## 5. Consultas SQL

O projeto contempla cinco consultas SQL, utilizando recursos como:

- Relacionamentos entre tabelas (`INNER JOIN` e `LEFT JOIN`);
- Filtragem de registros (`WHERE`);
- Agrupamento (`GROUP BY`);
- Ordenação (`ORDER BY`);
- Funções de agregação (`COUNT` e `AVG`);
- Subconsulta;
- Arredondamento de valores (`ROUND`).

## 6. Autor

**Gleyson Willian Bruno Costa Rocha**

Curso: Análise e Desenvolvimento de Sistemas

Instituição: Universidade Salgado de Oliveira (UNIVERSO)
