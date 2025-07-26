-- attention.sql
-- Computes QK attention and output

-- Query vector computation
CREATE VIEW attention_queries AS
SELECT
  t.sequence_id, t.token_id, t.position,
  p.head_id, p.output_dim,
  SUM(t.embedding_value * p.param_value) AS query_value
FROM tokens t
JOIN parameters p
  ON t.dimension = p.input_dim
WHERE p.component_type = 'query_weight'
GROUP BY t.sequence_id, t.token_id, t.position, p.head_id, p.output_dim;

-- Similarly create attention_keys, attention_scores, softmax_weights and attention_output
