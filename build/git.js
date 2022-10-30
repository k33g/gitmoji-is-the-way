const fs = require('fs');

fetch("https://raw.githubusercontent.com/carloscuesta/gitmoji/master/src/data/gitmojis.json")
.then((response) => response.json())
.then((data) => {

  let cases = data.gitmojis.map(element => {

    lines = []
    lines[0] = `  ${element.code.split(":")[1]})`
    lines[1] = `    message="${element.description} $2"`
    lines[2] = `    ;;`
    lines[3] = ``

    return lines.join("\n")
  })

  let strCases = cases.join("\n")

  script = `#!/bin/bash

message=""
case $1 in

${strCases}

  *)
  message="updated. $2"
  ;;

esac

git add .; git commit -m ":$1: $message"; git push
  `

  try {
    fs.writeFileSync('../git.sh', script);
  } catch (err) {
    console.error(err);
  }
});





