USE biblioteca_sgbu;

-- Categorias
INSERT INTO categoria (nome_categoria) VALUES
('Tecnologia'),
('Administração'),
('Literatura'),
('Engenharia');

-- Coordenadores
INSERT INTO coordenador (nome, email, telefone) VALUES
('Maria Silva', 'maria.silva@universidade.br', '34999990001'),
('João Pereira', 'joao.pereira@universidade.br', '34999990002');

-- Bibliotecários
INSERT INTO bibliotecario (nome, registro_funcional, email, telefone, id_coordenador) VALUES
('Ana Souza', 'BIB001', 'ana.souza@universidade.br', '34999990010', 1),
('Carlos Lima', 'BIB002', 'carlos.lima@universidade.br', '34999990011', 1),
('Fernanda Alves', 'BIB003', 'fernanda.alves@universidade.br', '34999990012', 2);

-- Alunos
INSERT INTO aluno (nome, matricula, curso, email, telefone) VALUES
('Bruno Costa', '2023001', 'Engenharia de Produção', 'bruno.costa@aluno.br', '34988880001'),
('Juliana Rocha', '2023002', 'Sistemas de Informação', 'juliana.rocha@aluno.br', '34988880002'),
('Larissa Menezes', '2023003', 'Administração', 'larissa.menezes@aluno.br', '34988880003');

-- Livros
INSERT INTO livro (titulo, autor, editora, ano_publicacao, quantidade_exemplares, id_categoria) VALUES
('Introdução a Banco de Dados', 'Silberschatz', 'Elsevier', 2019, 5, 1),
('Engenharia de Software Moderna', 'Pressman', 'McGraw-Hill', 2018, 3, 1),
('Fundamentos de Administração', 'Chiavenato', 'Atlas', 2016, 4, 2),
('Dom Casmurro', 'Machado de Assis', 'Companhia das Letras', 2000, 2, 3);

-- Empréstimos
INSERT INTO emprestimo (
    data_emprestimo, data_prevista_devolucao, data_devolucao,
    status_emprestimo, id_aluno, id_livro, id_bibliotecario
) VALUES
('2025-11-20', '2025-12-04', NULL,           'ATIVO',     1, 1, 1),
('2025-11-15', '2025-11-29', '2025-11-27',   'DEVOLVIDO', 2, 2, 2),
('2025-11-10', '2025-11-24', '2025-12-01',   'ATRASADO',  3, 3, 1),
('2025-11-25', '2025-12-09', NULL,           'ATIVO',     2, 4, 3);

