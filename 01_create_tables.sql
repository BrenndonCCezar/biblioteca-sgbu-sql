-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS biblioteca_sgbu;
USE biblioteca_sgbu;

-- Tabela CATEGORIA
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

-- Tabela COORDENADOR
CREATE TABLE coordenador (
    id_coordenador INT AUTO_INCREMENT PRIMARY KEY,
    nome   VARCHAR(150) NOT NULL,
    email  VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela BIBLIOTECARIO
CREATE TABLE bibliotecario (
    id_bibliotecario INT AUTO_INCREMENT PRIMARY KEY,
    nome              VARCHAR(150) NOT NULL,
    registro_funcional VARCHAR(50),
    email             VARCHAR(100),
    telefone          VARCHAR(20),
    id_coordenador    INT,
    CONSTRAINT fk_biblio_coordenador
        FOREIGN KEY (id_coordenador)
        REFERENCES coordenador(id_coordenador)
);

-- Tabela ALUNO
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome      VARCHAR(150) NOT NULL,
    matricula VARCHAR(30)  NOT NULL,
    curso     VARCHAR(100),
    email     VARCHAR(100),
    telefone  VARCHAR(20)
);

-- Tabela LIVRO
CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo   VARCHAR(150) NOT NULL,
    autor    VARCHAR(100),
    editora  VARCHAR(100),
    ano_publicacao INT,
    quantidade_exemplares INT NOT NULL,
    id_categoria INT,
    CONSTRAINT fk_livro_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categoria(id_categoria)
);

-- Tabela EMPRESTIMO
CREATE TABLE emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo         DATE NOT NULL,
    data_prevista_devolucao DATE NOT NULL,
    data_devolucao          DATE,
    status_emprestimo       VARCHAR(30) NOT NULL,
    id_aluno         INT NOT NULL,
    id_livro         INT NOT NULL,
    id_bibliotecario INT NOT NULL,
    CONSTRAINT fk_emprestimo_aluno
        FOREIGN KEY (id_aluno)
        REFERENCES aluno(id_aluno),
    CONSTRAINT fk_emprestimo_livro
        FOREIGN KEY (id_livro)
        REFERENCES livro(id_livro),
    CONSTRAINT fk_emprestimo_bibliotecario
        FOREIGN KEY (id_bibliotecario)
        REFERENCES bibliotecario(id_bibliotecario)
);

