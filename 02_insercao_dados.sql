INSERT INTO bairro (nome)
VALUES ('Goiânia Park Sul');

INSERT INTO ponto_coleta (
    nome,
    endereco,
    id_bairro,
    tipo_ponto,
    horario_funcionamento,
    telefone,
    status,
    observacoes
)
VALUES (
    'Ponto de Coleta de Resíduos',
    'Rua 28 de Junho, Goiânia Park Sul',
    1,
    'PONTO_PUBLICO',
    'Todos os dias, das 07:00 às 19:00',
    NULL,
    'EM_FUNCIONAMENTO',
    'Recebe pequenos volumes de entulho, galhadas, pneus, móveis sem utilização, vidros e materiais recicláveis.'
);

SELECT * FROM ponto_coleta;

INSERT INTO tipo_residuo (nome, categoria, descricao)
VALUES
('Entulho', 'Construção civil', 'Pequenos volumes de resíduos de construção.'),
('Galhadas', 'Resíduos vegetais', 'Galhos e resíduos de poda.'),
('Pneus', 'Resíduos especiais', 'Pneus sem utilização.'),
('Móveis sem utilização', 'Resíduos volumosos', 'Móveis descartados ou sem condições de uso.'),
('Vidros', 'Recicláveis', 'Materiais de vidro destinados à reciclagem.'),
('Materiais recicláveis', 'Recicláveis', 'Materiais recicláveis recebidos pelo ponto de coleta.'),
('Tijolos e blocos', 'Construção civil', 'Tijolos e blocos provenientes de pequenas obras.'),
('Concreto e restos de argamassa', 'Construção civil', 'Fragmentos de concreto e argamassa.'),
('Folhas e podas vegetais', 'Resíduos vegetais', 'Folhas e resíduos provenientes de podas.'),
('Garrafas e embalagens de vidro', 'Recicláveis', 'Garrafas e embalagens de vidro para reciclagem.');

INSERT INTO ponto_residuo (id_ponto, id_residuo)
SELECT 1, id_residuo
FROM tipo_residuo;