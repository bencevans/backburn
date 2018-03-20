const http = require('http')
const https = require('https')
const morgan = require('morgan')

const createProxy = (b2, bucketName) => {
  const log = morgan('combined');

  return http.createServer((servReq, servRes) => {
    log(servReq, servRes, () => {})
    const target = b2.downloadUrl + '/file/' + bucketName + servReq.url

    https.get(target, (b2Res) => {
      b2Res.pipe(servRes, {
        end: true
      })
    })
  })
}

module.exports = {
  createProxy
}
