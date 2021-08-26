CREATE TABLE cliente(
    idCliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente TEXT NOT NULL,
    cpfCliente VARCHAR(50) NOT NULL,
    telefoneCliente VARCHAR(50) NOT NULL
);

CREATE TABLE pedido(
    idPedido INTEGER PRIMARY KEY AUTOINCREMENT,
    idCliente INT NOT NULL,
    idLivro INT NOT NULL,
    qtd INT NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES cliente(idCliente),
    FOREIGN KEY (idlivro) REFERENCES livro(idLivro)
);

CREATE TABLE livro(
    idLivro INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeLivro TEXT NOT NULL,
    autorLivro TEXT NOT NULL,
    editoraLivro TEXT NOT NULL,
    anoLivro DATE NOT NULL,
    tipoLivro TEXT NOT NULL
);

CREATE TABLE biblioteca(
    idBiblioteca INTEGER PRIMARY KEY AUTOINCREMENT,
    idLivro INT NOT NULL,
    qtdEstoque INT NOT NULL,
    qtdPedidos INT NOT NULL,
    FOREIGN KEY (idLivro) REFERENCES livro(idLivro)
);

INSERT INTO livro (nomelivro, autorlivro, editoralivro, anolivro, tipolivro) VALUES ('Prog III', 'Jonas', 'Casa', 2021, 'Estudo');
INSERT INTO livro (nomelivro, autorlivro, editoralivro, anolivro, tipolivro) VALUES ('Banco de Dados', 'Jonas', 'Casa', 2020, 'Estudo');

INSERT INTO cliente (nomecliente, cpfcliente, telefonecliente) VALUES ('Jonas Castro', '123456-7', '+558632165478');
INSERT INTO cliente (nomecliente, cpfcliente, telefonecliente) VALUES ('Joe', '145656-7', '+5586897654');

INSERT INTO pedido (idcliente, idlivro, qtd) VALUES (1, 1, 5);
INSERT INTO pedido (idcliente, idlivro, qtd) VALUES (2, 2, 15);

/* Esse trecho do código será preciso algum algoritmo para realizar a soma dos valores pedidos por id de livro */
INSERT INTO biblioteca (idlivro, qtdestoque, qtdpedidos) VALUES (1, 20,10);