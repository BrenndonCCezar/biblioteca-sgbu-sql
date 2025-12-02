USE biblioteca_sgbu;

-- 1) Listar todos os livros com o nome da categoria, ordenados por título
SELECT 
    l.id_livro,
    l.titulo,
    l.autor,
    c.nome_categoria
FROM livro l
LEFT JOIN categoria c ON l.id_categoria = c.id_categoria
ORDER BY l.titulo;

-- 2) Listar empréstimos ativos com o nome do aluno e do livro
SELECT 
    e.id_emprestimo,
    a.nome      AS nome_aluno,
    l.titulo    AS titulo_livro,
    e.data_emprestimo,
    e.data_prevista_devolucao,
    e.status_emprestimo
FROM emprestimo e
JOIN aluno a          ON e.id_aluno = a.id_aluno
JOIN livro l          ON e.id_livro = l.id_livro
WHERE e.status_emprestimo = 'ATIVO'
ORDER BY e.data_prevista_devolucao;

-- 3) Top 5 alunos com maior número de empréstimos
SELECT 
    a.id_aluno,
    a.nome,
    COUNT(e.id_emprestimo) AS total_emprestimos
FROM aluno a
LEFT JOIN emprestimo e ON e.id_aluno = a.id_aluno
GROUP BY a.id_aluno, a.nome
ORDER BY total_emprestimos DESC
LIMIT 5;

-- 4) Empréstimos em atraso (previsão < hoje e ainda sem devolução)
SELECT 
    e.id_emprestimo,
    a.nome AS nome_aluno,
    l.titulo AS titulo_livro,
    e.data_prevista_devolucao
FROM emprestimo e
JOIN aluno a ON e.id_aluno = a.id_aluno
JOIN livro l ON e.id_livro = l.id_livro
WHERE e.data_devolucao IS NULL
  AND e.data_prevista_devolucao < CURRENT_DATE;

-- 5) Quantidade de livros por categoria
SELECT 
    c.nome_categoria,
    COUNT(l.id_livro) AS total_livros
FROM categoria c
LEFT JOIN livro l ON l.id_categoria = c.id_categoria
GROUP BY c.nome_categoria
ORDER BY total_livros DESC;

