CREATE DATABASE mapeamento_pontos_residuos;

USE mapeamento_pontos_residuos;

CREATE TABLE bairro (
    id_bairro INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,

    CONSTRAINT pk_bairro
        PRIMARY KEY (id_bairro),

    CONSTRAINT uq_bairro_nome
        UNIQUE (nome)
);

CREATE TABLE ponto_coleta (
    id_ponto INT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    id_bairro INT NOT NULL,
    tipo_ponto VARCHAR(50) NOT NULL,
    horario_funcionamento VARCHAR(100),
    telefone VARCHAR(20),
    status VARCHAR(30) NOT NULL,
    observacoes TEXT,

    CONSTRAINT pk_ponto_coleta
        PRIMARY KEY (id_ponto),

    CONSTRAINT fk_ponto_bairro
        FOREIGN KEY (id_bairro)
        REFERENCES bairro (id_bairro)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT chk_ponto_status
        CHECK (status IN (
            'EM_FUNCIONAMENTO',
            'EM_IMPLANTACAO',
            'PONTO_PROPOSTO',
            'PENDENTE_CONFIRMACAO'
        )),
	CONSTRAINT chk_tipo_ponto
        CHECK (tipo_ponto IN (
            'PONTO_PUBLICO',
            'ECOPONTO',
            'PEV',
            'FARMACIA',
            'COOPERATIVA',
            'SUPERMERCADO',
            'OUTRO'
        ))
);

CREATE TABLE tipo_residuo (
    id_residuo INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(60) NOT NULL,
    descricao TEXT,

    CONSTRAINT pk_tipo_residuo
        PRIMARY KEY (id_residuo),

    CONSTRAINT uq_tipo_residuo_nome
        UNIQUE (nome)
);

CREATE TABLE ponto_residuo (
    id_ponto INT NOT NULL,
    id_residuo INT NOT NULL,
    observacoes TEXT,

    CONSTRAINT pk_ponto_residuo
        PRIMARY KEY (id_ponto, id_residuo),

    CONSTRAINT fk_ponto_residuo_ponto
        FOREIGN KEY (id_ponto)
        REFERENCES ponto_coleta (id_ponto)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_ponto_residuo_residuo
        FOREIGN KEY (id_residuo)
        REFERENCES tipo_residuo (id_residuo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);