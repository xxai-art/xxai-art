+ DEFAULT_TITLE, TITLE

setTitle = (title)=>
  TITLE = DEFAULT_TITLE = title
  setTitle = =>
    document.title = title or DEFAULT_TITLE
    return
  setTitle title
  return

export default (t)=>
  setTitle t
  return
