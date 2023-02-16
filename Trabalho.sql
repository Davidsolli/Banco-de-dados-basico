drop database bd_loja;
create database bd_loja;
use bd_loja;

CREATE TABLE IF NOT EXISTS `bd_loja`.`clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(120) NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `email` VARCHAR(80) NULL,
  `renda` DECIMAL(8,2) NULL,
  `telefone` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;

insert into clientes (nome,cpf,email,renda,telefone) values ('Jose Almeida','02023445645','joseameilda@gmail.com','800.00','85465878');
insert into clientes (nome,cpf,email,renda,telefone) values ('Amanda feitoza','00011122233','amandafeitoza@gmail.com','1000.00','55662211');
insert into clientes (nome,cpf,email,renda,telefone) values ('Almir Sater','21456987455','almirsater@gmail.com','2000.00','22442244');
insert into clientes (nome,cpf,email,renda,telefone) values ('Bruno Henrique','44555566688','brunohenrique@gmail.com','4000.00','11111111');
insert into clientes (nome,cpf,email,renda,telefone) values ('Paulo Coelho','22233322233','paulocoelho@gmail.com','650.00','87878585');
insert into clientes (nome,cpf,email,renda,telefone) values ('Djavan Souza','11100011100','djavansouza@gmail.com','1500.00','45659887');
insert into clientes (nome,cpf,email,renda,telefone) values ('Paula Fernandes','11144477788','paulafernandes@gmail.com','478.00','45456565');
select * from clientes;

CREATE TABLE IF NOT EXISTS `bd_loja`.`vendas` (
  `id_vendas` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `valor` DECIMAL(8,2) NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_vendas`),
  INDEX `fk_vendas_clientes_idx` (`id_cliente` ASC),
  CONSTRAINT `fk_vendas_clientes`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `bd_loja`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into vendas (id_vendas,data,valor,id_cliente) values (1,'2019/12/25','999.99','1');
insert into vendas (id_vendas,data,valor,id_cliente) values (2,'2020/02/12','655.99','2');
insert into vendas (id_vendas,data,valor,id_cliente) values (3,'2020/10/06','789.99','3');
insert into vendas (id_vendas,data,valor,id_cliente) values (4,'2021/02/15','159.99','4');
insert into vendas (id_vendas,data,valor,id_cliente) values (5,'2022/11/07','329.99','5');
insert into vendas (id_vendas,data,valor,id_cliente) values (6,'2021/12/25','795.99','6');
insert into vendas (id_vendas,data,valor,id_cliente) values (7,'2021/12/25','249.99','7');
insert into vendas (id_vendas,data,valor,id_cliente) values (8,'2021/12/25','249.99','7');
insert into vendas (id_vendas,data,valor,id_cliente) values (9,'2021/12/25','249.99','5');
insert into vendas (id_vendas,data,valor,id_cliente) values (10,'2021/09/10','249.99','5');
insert into vendas (id_vendas,data,valor,id_cliente) values (11,'2021/04/29','549.99','3');
insert into vendas (id_vendas,data,valor,id_cliente) values (12,'2021/09/14','119.99','2');
insert into vendas (id_vendas,data,valor,id_cliente) values (13,'2021/10/11','449.99','6');
insert into vendas (id_vendas,data,valor,id_cliente) values (14,'2021/11/21','299.99','5');
insert into vendas (id_vendas,data,valor,id_cliente) values (15,'2021/12/01','199.99','2');
insert into vendas (id_vendas,data,valor,id_cliente) values (16,'2021/02/05','149.99','1');
insert into vendas (id_vendas,data,valor,id_cliente) values (17,'2022/03/17','89.99','1');
insert into vendas (id_vendas,data,valor,id_cliente) values (18,'2022/03/28','99.99','4');
insert into vendas (id_vendas,data,valor,id_cliente) values (19,'2022/04/13','99.99','5');
insert into vendas (id_vendas,data,valor,id_cliente) values (20,'2022/05/25','219.99','7');
select * from vendas;

CREATE TABLE IF NOT EXISTS `bd_loja`.`produtos` (
  `id_produtos` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(120) NOT NULL,
  `categoria` ENUM('teclado', 'mouse', 'memoria', 'acessorio', 'pc') NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `quant_estoque` DECIMAL(4,0) NOT NULL,
  PRIMARY KEY (`id_produtos`),
  UNIQUE INDEX `id_produtos_UNIQUE` (`id_produtos` ASC))
ENGINE = InnoDB;

insert into produtos (descricao,categoria,preco,quant_estoque) values ('Mouse Gamer Redragon Cobra Chroma RGB 12400DPI 7 Botões Preto','mouse','114.90','14');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Mouse Gamer Redragon King Cobra 2 RGB Chroma 24000DPI Sensor Óptico USB Preto - M711-FPS-1','mouse','179.90','8');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Mouse Gamer Redragon Nothosaur 3200DPI Com LED Preto ','mouse','79.90','32');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Mouse Gamer Redragon Storm Lunar White RGB 12400DPI 7 Botões Branco','mouse','349.90','21');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Mouse Multilaser Classic Box Óptico Full Black ','mouse','169.90','18');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Mouse Large Multilaser 1200DPI Plug and Play Preto','mouse','85.90','27');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Teclado com fio USB Logitech K120 Resistente à Respingos e Layout ABNT2','teclado','229.90','22');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Teclado Logitech K835, Mecânico, Compacto, US, Com Estrutura de Alumínio e Switch Red Linear','teclado','258.90','11');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Teclado Logitech K835 Mecanico Tlk Usb','teclado','289.90','14');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Teclado Usb K120 Preto Logitech','teclado','89.90','25');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Teclado Mecânico Logitech K835 Tkl - Padrão Us - Switch Vermelho','teclado','358.90','14');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('PC Gamer OnGaming Powered By Asus Intel Core i7-12700K, 32GB, Geforce RTX 3080 Ti ASUS TUF Gaming 12GB, SSD M.2 1.0 TB','pc','28354.90','8');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('PC Gamer OnGaming Powered By Asus Intel Core i5-12400F, 16GB, ASUS TUF Geforce GTX 1660 SUPER, SSD M.2 480GB','pc','18500.90','11');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('PC Gamer OnPress Powered By Asus, i5 10400F, Geforce GTX 1650 4GB, 16GB, SSD 480GB, 500W 80 Plus White, Linux','pc','5499.90','17');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('PC Gamer On Gaming Powered By Asus i5 10600K Watercooler 240mm RTX 3050 8GB 16GB SSD M.2 480GB','pc','4999.90','15');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Memória Corsair Vengeance LPX 8GB 3200MHz DDR4 CL16 Preta','memoria','179.90','35');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Memória Corsair Vengeance RGB Pro 8GB 3200MHz DDR4 CL16 Preta','memoria','299.90','15');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Memória Corsair Vengeance 8GB 2400MHz DDR4 Notebook C16','memoria','249.90','27');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Memória Corsair Vengeance RGB Pro 32GB (2x16GB) 3600MHz DDR4 C18 Black','memoria','379.90','31');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Headset Gamer HyperX Cloud Stinger Drivers 50mm Múltiplas Plataformas P2 e P3','acessorio','599.90','25');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Headset Gamer HyperX Cloud Stinger Pink Drivers 50mm Microfone com Cancelamento de Ruído','acessorio','179.90','19');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Headset Gamer HyperX Cloud Alpha S Azul Som Surround 7.1 Drivers 50mm USB e P3','acessorio','999.90','15');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Webcam Husky Gaming Snow Preto Full HD 1080p 30 FPS Com Iluminação Foco Ajustável e Microfone Embutido','acessorio','799.90','18');
insert into produtos (descricao,categoria,preco,quant_estoque) values ('Webcam Husky Storm Full HD 1080p Autofoco Tripod','acessorio','499.90','22');
select * from produtos;

CREATE TABLE IF NOT EXISTS `bd_loja`.`itens_venda` (
  `vendas_id_vendas` INT NOT NULL,
  `produtos_id_produtos` INT NOT NULL,
  INDEX `fk_vendas_has_produtos_produtos1_idx` (`produtos_id_produtos` ASC),
  INDEX `fk_vendas_has_produtos_vendas1_idx` (`vendas_id_vendas` ASC),
  CONSTRAINT `fk_vendas_has_produtos_vendas1`
    FOREIGN KEY (`vendas_id_vendas`)
    REFERENCES `bd_loja`.`vendas` (`id_vendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendas_has_produtos_produtos1`
    FOREIGN KEY (`produtos_id_produtos`)
    REFERENCES `bd_loja`.`produtos` (`id_produtos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from itens_venda;

select id_vendas,data,valor,id_cliente from vendas where id_cliente=3 and valor>300;
select renda from clientes where renda>500 order by renda desc;
select renda from clientes where renda <2000 order by renda asc;
select vendas.id_cliente,vendas.valor,vendas.data from vendas inner join clientes on vendas.id_cliente=clientes.id_cliente;