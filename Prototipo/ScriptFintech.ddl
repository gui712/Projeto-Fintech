-- Gerado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   em:        2023-05-29 22:51:51 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_despesas (
    id_despesas          INTEGER NOT NULL,
    nm_despesa           VARCHAR2(50) NOT NULL,
    dt_despesa           DATE NOT NULL,
    vl_despesa           NUMBER NOT NULL,
    t_usuario_id_usuario INTEGER NOT NULL
);

ALTER TABLE t_despesas ADD CONSTRAINT t_despesas_pk PRIMARY KEY ( id_despesas,
                                                                  t_usuario_id_usuario );

CREATE TABLE t_email (
    t_usuario_id_usuario INTEGER NOT NULL,
    id_email             INTEGER NOT NULL,
    ds_email             VARCHAR2(30) NOT NULL
);

ALTER TABLE t_email ADD CONSTRAINT t_email_pk PRIMARY KEY ( t_usuario_id_usuario );

CREATE TABLE t_endereco (
    id_endereco          INTEGER NOT NULL,
    t_usuario_id_usuario INTEGER NOT NULL,
    nmr_cep              VARCHAR2(10) NOT NULL,
    ds_logradouro        VARCHAR2(100) NOT NULL,
    nm_cidade            VARCHAR2(3) NOT NULL,
    nm_estado            VARCHAR2(3) NOT NULL
);

CREATE UNIQUE INDEX t_endereco__idx ON
    t_endereco (
        t_usuario_id_usuario
    ASC );

ALTER TABLE t_endereco ADD CONSTRAINT t_endereco_pk PRIMARY KEY ( id_endereco,
                                                                  t_usuario_id_usuario );

CREATE TABLE t_receita (
    id_receita           INTEGER NOT NULL,
    nm_receita           VARCHAR2(50) NOT NULL,
    dt_receita           DATE NOT NULL,
    vl_receita           NUMBER NOT NULL,
    t_usuario_id_usuario INTEGER NOT NULL
);

ALTER TABLE t_receita ADD CONSTRAINT t_receita_pk PRIMARY KEY ( id_receita,
                                                                t_usuario_id_usuario );

CREATE TABLE t_senha (
    id_senha             INTEGER NOT NULL,
    t_usuario_id_usuario INTEGER NOT NULL,
    nr_senha             VARCHAR2(30) NOT NULL
);

CREATE UNIQUE INDEX t_senha__idx ON
    t_senha (
        t_usuario_id_usuario
    ASC );

ALTER TABLE t_senha ADD CONSTRAINT t_senha_pk PRIMARY KEY ( id_senha,
                                                            t_usuario_id_usuario );

CREATE TABLE t_telefone (
    t_usuario_id_usuario INTEGER NOT NULL,
    id_telefone          INTEGER NOT NULL,
    nm_telefone          VARCHAR2(15) NOT NULL
);

CREATE UNIQUE INDEX t_telefone__idx ON
    t_telefone (
        t_usuario_id_usuario
    ASC );

ALTER TABLE t_telefone ADD CONSTRAINT t_telefone_pk PRIMARY KEY ( id_telefone,
                                                                  t_usuario_id_usuario );

CREATE TABLE t_usuario (
    id_usuario INTEGER NOT NULL,
    nm_usuario VARCHAR2(50) NOT NULL,
    nr_cpf     VARCHAR2(15) NOT NULL,
    ds_sexo    CHAR(1) NOT NULL
);

ALTER TABLE t_usuario ADD CONSTRAINT t_usuario_pk PRIMARY KEY ( id_usuario );

ALTER TABLE t_despesas
    ADD CONSTRAINT t_despesas_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_email
    ADD CONSTRAINT t_email_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_receita
    ADD CONSTRAINT t_receita_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_senha
    ADD CONSTRAINT t_senha_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_telefone
    ADD CONSTRAINT t_telefone_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             3
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
