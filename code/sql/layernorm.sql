-- layernorm.sql
-- Basic implementation of layer normalization

WITH stats AS (
  SELECT sequence_id, token_id,
         AVG(activation_value) AS mean_val,
         STDDEV_POP(activation_value) AS std_val
  FROM activations
  GROUP BY sequence_id, token_id
),
normalized AS (
  SELECT
    a.sequence_id, a.token_id, a.dimension,
    (a.activation_value - s.mean_val) / NULLIF(s.std_val, 0) AS norm_val
  FROM activations a
  JOIN stats s USING (sequence_id, token_id)
)
SELECT * FROM normalized;
