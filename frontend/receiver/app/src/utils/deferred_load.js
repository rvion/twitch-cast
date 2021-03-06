function loadScript(url) {
  let script = document.createElement('script')

  let promise = new Promise((resolve, _) => {
    script.onload = resolve
  })

  script.src = url
  document.head.appendChild(script)

  return promise
}

function loadLink(url) {
  let link = document.createElement('link')

  link.rel = 'stylesheet'
  link.href = url

  document.head.appendChild(link)
}

module.exports = {
  loadScript: loadScript,
  loadLink: loadLink
}
