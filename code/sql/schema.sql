-- schema.sql
CREATE TABLE tokens (
  sequence_id INT,
  token_id INT,
  position INT,
  dimension INT,
  embedding_value REAL
);

CREATE TABLE parameters (
  layer_id INT,
  component_type TEXT,
  head_id INT,
  input_dim INT,
  output_dim INT,
  param_value REAL
);

CREATE TABLE model_config (
  config_key TEXT PRIMARY KEY,
  config_value TEXT
);

CREATE TABLE activations (
  sequence_id INT,
  layer_id INT,
  token_id INT,
  head_id INT,
  dimension INT,
  activation_value REAL
);
