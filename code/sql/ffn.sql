-- ffn.sql
-- Feed Forward Network with ReLU and Linear layers

-- First linear layer
WITH ffn_hidden AS (
  SELECT
    a.sequence_id, a.token_id, p.output_dim,
    SUM(a.activation_value * p.param_value) AS hidden_value
  FROM activations a
  JOIN parameters p
    ON a.dimension = p.input_dim
  WHERE p.component_type = 'ffn_weight_1'
  GROUP BY a.sequence_id, a.token_id, p.output_dim
),
-- ReLU Activation
relu_output AS (
  SELECT sequence_id, token_id, output_dim,
         CASE WHEN hidden_value > 0 THEN hidden_value ELSE 0 END AS relu_value
  FROM ffn_hidden
)
SELECT * FROM relu_output;
