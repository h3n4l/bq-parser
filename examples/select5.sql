SELECT *
FROM UNNEST(
  ARRAY<
    STRUCT<
      x INT64,
      y STRING,
      z STRUCT<a INT64, b INT64>>>[
        (1, 'foo', (10, 11)),
        (3, 'bar', (20, 21))])