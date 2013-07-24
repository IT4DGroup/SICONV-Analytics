CREATE TABLE dw.dim_estado
(
  sk_estado BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, estado TEXT
)
;CREATE INDEX idx_dim_estado_lookup
 ON dw.dim_estado
( 
  estado
)
;
CREATE INDEX idx_dim_estado_tk
 ON dw.dim_estado
( 
  sk_estado
)
;


CREATE TABLE dw.dim_municipio
(
  sk_municipio BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, cod_municipio BIGINT
, desc_municipio TEXT
)
;CREATE INDEX idx_dim_municipio_lookup
 ON dw.dim_municipio
( 
  cod_municipio
)
;
CREATE INDEX idx_dim_municipio_tk
 ON dw.dim_municipio
( 
  sk_municipio
)
;


CREATE TABLE dw.dim_geografia
(
  sk_geografia BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, cod_municipio BIGINT
, desc_municipio TEXT
, desc_estado TEXT
)
;CREATE INDEX idx_dim_geografia_lookup
 ON dw.dim_geografia
( 
  cod_municipio
)
;
CREATE INDEX idx_dim_geografia_tk
 ON dw.dim_geografia
( 
  sk_geografia
)
;

CREATE TABLE dw.dim_situacao
(
  sk_situacao BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, situacao TEXT
)
;CREATE INDEX idx_dim_situacao_lookup
 ON dw.dim_situacao
( 
  situacao
)
;
CREATE INDEX idx_dim_situacao_tk
 ON dw.dim_situacao
( 
  sk_situacao
)
;

CREATE TABLE dw.dim_orgao_superior
(
  sk_orgao_superior BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, codigo_orgao_superior BIGINT
, orgao_superior TEXT
)
;CREATE INDEX idx_dim_orgao_superior_lookup
 ON dw.dim_orgao_superior
( 
  codigo_orgao_superior
)
;
CREATE INDEX idx_dim_orgao_superior_tk
 ON dw.dim_orgao_superior
( 
  sk_orgao_superior
)
;


CREATE TABLE dw.dim_concedente
(
  sk_concedente BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, codigo_concedente BIGINT
, concedente TEXT
)
;CREATE INDEX idx_dim_concedente_lookup
 ON dw.dim_concedente
( 
  codigo_concedente
)
;
CREATE INDEX idx_dim_concedente_tk
 ON dw.dim_concedente
( 
  sk_concedente
)
;

CREATE TABLE dw.dim_convenente
(
  sk_convenente BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, codigo_convenente TEXT
, convenente TEXT
)
;CREATE INDEX idx_dim_convenente_lookup
 ON dw.dim_convenente
( 
  codigo_convenente
)
;
CREATE INDEX idx_dim_convenente_tk
 ON dw.dim_convenente
( 
  sk_convenente
)
;

CREATE TABLE dw.stg_convenios_sincov
(
  numero_do_convenio BIGINT
, estado TEXT
, codigo_municipio BIGINT
, situacao TEXT
, numero_original TEXT
, objeto_do_convenio TEXT
, codigo_orgao_superior BIGINT
, codigo_concedente BIGINT
, codigo_convenente TEXT
, valor_convenio BIGINT
, valor_liberado BIGINT
, publicacao TIMESTAMP
, inicio_vigencia TIMESTAMP
, fim_vigencia TIMESTAMP
, valor_contrapartida BIGINT
, data_ultima_liberacao TIMESTAMP
, valor_ultima_liberacao BIGINT
)
;
