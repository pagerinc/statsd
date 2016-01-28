{
  port: 8125
  , backends: [ "statsd-datadog-backend" ]
  , datadogApiKey: process.env.DD_API_KEY
  , datadogPrefix: process.env.NODE_ENV
  , datadogTags: ["pager:tag"]
  , debug: process.env.DEBUG || false
}
