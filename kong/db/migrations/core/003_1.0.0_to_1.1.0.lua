return {
  postgres = {
    up = [[

      UPDATE consumers SET created_at = DATE_TRUNC('seconds', created_at);
      UPDATE plugins   SET created_at = DATE_TRUNC('seconds', created_at);
      UPDATE upstreams SET created_at = DATE_TRUNC('seconds', created_at);
      UPDATE targets   SET created_at = DATE_TRUNC('milliseconds', created_at);

    ]],
  },

  cassandra = {
    up = [[
    ]],
  },
}
