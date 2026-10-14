INSERT INTO perfil (id, nome) VALUES
  (1, 'ADMINISTRADOR'),
  (2, 'BIBLIOTECARIO'),
  (3, 'USUARIO');

INSERT INTO configuracao (chave, valor) VALUES
  ('prazo_emprestimo_dias',  '14'),
  ('limite_emprestimos',     '3'),
  ('multa_diaria',           '1.00'),
  ('renovacoes_max',         '2'),
  ('renovacao_dias',         '7'),
  ('reserva_retirada_horas', '48');
