var express = require('express');
var router = express.Router();
const util = require('util');
const exec = util.promisify(require('child_process').exec);
const fs = require('fs');
const uniqid = require('uniqid');

router.post('/', async function(req, res, next) {
  fs.writeFileSync('wordcloud/mytext.txt', req.body.text);

  const filename = uniqid();
  const { stdout, stderr } = await exec(`wordcloud_cli --text wordcloud/mytext.txt --imagefile public/files/${filename}.png --fontfile "wordcloud/WhitneyMedium.ttf" --height 768 --width 1024 --background "#222222"`);
  console.log('stdout:', stdout);
  console.log('stderr:', stderr);

  return res.json({
    'file': `/files/${filename}.png`
  });
});

module.exports = router;
