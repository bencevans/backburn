const http = require('http')
const https = require('https')

const createProxy = (b2, bucketName) => {
  return http.createServer((servReq, servRes) => {
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
