INSERT INTO clients (Fnome, Minit, LName, CPF, Adress)
VALUES
    ('Albert', 'A', 'Einstein', '111.111.111-11', 'Rua Principal, 100'),
    ('Alan', 'B', 'Turin', '222.222.222-22', 'Avenida Central, 101'),
    ('Mary', 'C', 'Curie', '333.333.333-33', 'Travessa do Comércio, 200'),
    ('Walt', 'D', 'Whitman', '444.444.444-44', 'Praça da Paz, 202'),
    ('Liev', 'E', 'Tolstói', '555.555.555-55', 'Alameda das Flores, 300');
	('Jane', 'E', 'Austen', '666.666.666-66', 'Alameda dos Pássaros, 303');
    
INSERT INTO product (Pname, classification_kids, category, rating, size)
VALUES
    ('Televisão', false, 'eletrônico', 4.3, 'Grande'),
    ('Jeans', false, 'vestuário', 4.0, 'G'),
    ('Carrinho de Controle Remoto', true, 'brinquedos', 4.6, 'Pequeno'),
    ('Câmera Fotográfica', false, 'eletrônico', 4.2, 'Médio'),
    ('Bicicleta', true, 'esporte', 4.5, 'Grande');

INSERT INTO payments (idPayment, idClient, typePayment, limitAvaliable)
VALUES
    (1, 5, 'Cartão débito', 350),
    (2, 2, 'Cartão crédito', 1500),
    (3, 3, 'Boleto', 700),
    (4, 4, 'Pix', 900),
    (5, 5, 'Depósito', 250);

INSERT INTO request (idClient, status, description, freightage, paymentCash, idPayment)
VALUES
    (1, 'Processando', 'Pedido 1', 12.5, true, 1),
    (2, 'confirmado', 'Pedido 2', 8.0, false, 2),
    (3, 'cancelado', 'Pedido 3', 15.2, false, 3),
    (4, 'confirmado', 'Pedido 4', 10.0, true, 4),
    (5, 'Processando', 'Pedido 5', 20.0, false, 5);

INSERT INTO productStorage (idProductStarage, location, quantity)
VALUES
    (1, 'Estoque 01', 150),
    (2, 'Estoque 02', 85),
    (3, 'Estoque 03', 30),
    (4, 'Estoque 04', 15),
    (5, 'Estoque 05', 67);

INSERT INTO Supplier (idSupplier, CNPJ, socialName, contact)
VALUES
    (1, '666.666.666-66', 'Novo Fornecedor 1 Ltda.', '11111111111'),
    (2, '555.555.555-55', 'Novo Fornecedor 2 S/A', '22222222222'),
    (3, '444.444.444-44', 'Novo Fornecedor 3 EIRELI', '33333333333'),
    (4, '333.333.333-33', 'Novo Fornecedor 4 MEI', '44444444444'),
    (5, '222.222.222-22', 'Novo Fornecedor 5 LTDA', '55555555555');

INSERT INTO seller (idSeller, CNPJ, CPF, socialName, AbsName, contact, Adress)
VALUES
    (1, '10001000100', '111111111', 'Novo Vendedor 1', 'Vendedor A', '11111111111', 'Nova Rua 1, 123'),
    (2, '20002000200', '222222222', 'Novo Vendedor 2', 'Vendedor B', '22222222222', 'Nova Avenida 2, 456'),
    (3, '20002000200', '333333333', 'Novo Vendedor 3', 'Vendedor C', '33333333333', 'Nova Rua 3, 789'),
    (4, '30003000300', '444444444', 'Novo Vendedor 4', 'Vendedor D', '44444444444', 'Nova Avenida 4, 987'),
    (5, '40004000400', '555555555', 'Novo Vendedor 5', 'Vendedor E', '55555555555', 'Nova Rua 5, 654');

INSERT INTO product_seller (idproduct, idSeller, quantity)
VALUES
    (1, 1, 15),
    (2, 2, 20),
    (3, 3, 13),
    (4, 4, 8),
    (5, 5, 7);

INSERT INTO product_request (idProduct, idRequest, quantity, status)
VALUES
    (1, 1, 2, 'confirmado'),
    (2, 1, 1, 'cancelado'),
    (3, 2, 3, 'confirmado'),
    (4, 2, 1, 'Processando'),
    (5, 3, 5, 'confirmado');

INSERT INTO storage_location (idProduct, idStorage, location)
VALUES
    (1, 1, 'Estoque 01, Prateleira A'),
    (2, 2, 'Estoque 02, Prateleira B'),
    (3, 3, 'Estoque 03, Prateleira C'),
    (4, 4, 'Estoque 04, Prateleira D'),
    (5, 5, 'Estoque 05, Prateleira E');

INSERT INTO productSupplier (idSupplier, idProduct, quantity)
VALUES
    (1, 1, 32),
    (2, 1, 45),
    (3, 2, 67),
    (4, 3, 80),
    (5, 3, 21);