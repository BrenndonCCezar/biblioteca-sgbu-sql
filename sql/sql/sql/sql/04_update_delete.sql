USE biblioteca_sgbu;

-- ========= UPDATES =========

-- 1) Atualizar status de um empréstimo quando o livro foi devolvido hoje
UPDATE emprestimo
SET 
    data_devolucao = CURRENT_DATE,
    status_emprestimo = 'DEVOLVIDO'
WHERE id_emprestimo = 1;

-- 2) Atualizar telefone de um aluno específico
UPDATE aluno
SET telefone = '34988880099'
WHERE matricula = '2023002';

-- 3) Ajustar quantidade de exemplares de um livro
UPDATE livro
SET quantidade_exemplares = quantidade_exemplares + 1
WHERE titulo = 'Introdução a Banco de Dados';

-- ========= DELETES =========

-- 1) Deletar empréstimos com status 'CANCELADO' (se existirem)
DELETE FROM emprestimo
WHERE status_emprestimo = 'CANCELADO';

-- 2) Deletar categorias que ainda não possuem nenhum livro vinculado
DELETE FROM categoria
WHERE id_categoria NOT IN (
    SELECT DISTINCT id_categoria FROM livro WHERE id_categoria IS NOT NULL
);

-- 3) Deletar alunos que nunca realizaram empréstimos
DELETE FROM aluno
WHERE id_aluno NOT IN (
    SELECT DISTINCT id_aluno FROM emprestimo
);

