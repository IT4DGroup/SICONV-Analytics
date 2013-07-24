

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

CREATE TABLE dw.fato_convenios_siconv
(
  sk_concedente BIGINT
, sk_convenente BIGINT
, sk_dt_fim_vigencia DOUBLE PRECISION
, sk_dt_inicio_vigencia DOUBLE PRECISION
, sk_dt_publicacao DOUBLE PRECISION
, sk_dt_ultima_liberacao DOUBLE PRECISION
, sk_estado BIGINT
, sk_geografia BIGINT
, sk_municipio BIGINT
, sk_orgao_superior BIGINT
, sk_situacao BIGINT
, dd_num_convenio BIGINT
, dd_num_original TEXT
, dd_obj_convenio TEXT
, m_valor_contrapartida BIGINT
, m_valor_convenio BIGINT
, m_valor_liberado BIGINT
, m_valor_ult_liberacao BIGINT
, m_tempo_contrato_dias DOUBLE PRECISION
)
;

CREATE TABLE dw.dim_tempo
(
  sk_tempo DOUBLE PRECISION
, "data" TIMESTAMP
, data_curta TEXT
, data_media TEXT
, data_comprida TEXT
, data_completa TEXT
, dia_do_ano TEXT
, nome_dia TEXT
, dia_abreviado TEXT
, mes_abreviado TEXT
, nome_mes TEXT
, nome_trimestre TEXT
, ano_trimestre TEXT
, ano_mes_abreviado TEXT
, e_ultimo_dia_do_mes TEXT
, e_primeiro_dia_do_mes TEXT
, ano2 TEXT
, ano4 TEXT
, dia_do_mes TEXT
, semana_do_ano TEXT
, semana_do_mes TEXT
, mes_numero TEXT
, trimestre_numero TEXT
, ano_mes_numero TEXT
, e_ultimo_dia_da_semana TEXT
, e_primeiro_dia_da_semana TEXT
, data_numerica TEXT
)
;

CREATE INDEX idx_dim_tempo_lookup
 ON dw.dim_tempo
( 
  sk_tempo
, "data"
, data_curta
, data_media
, data_comprida
, data_completa
, dia_do_ano
, nome_dia
, dia_abreviado
, mes_abreviado
, nome_mes
, nome_trimestre
, ano_trimestre
, ano_mes_abreviado
, e_ultimo_dia_do_mes
, e_primeiro_dia_do_mes
, ano2
, ano4
, dia_do_mes
, semana_do_ano
, semana_do_mes
, mes_numero
, trimestre_numero
, ano_mes_numero
, e_ultimo_dia_da_semana
, e_primeiro_dia_da_semana
, data_numerica
)
;
