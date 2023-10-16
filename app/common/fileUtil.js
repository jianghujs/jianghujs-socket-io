const fs = require('fs')
const util = require('util')
const nodePath = require('path')
const exists = util.promisify(fs.exists)
const readdir = util.promisify(fs.readdir)
const unlink = util.promisify(fs.unlink)
const lstat = util.promisify(fs.lstat)
const rmdir = util.promisify(fs.rmdir)
const mkdir = util.promisify(fs.mkdir)
/**
 * Prepare the file path
 * @param  {String} path  The file path
 * @return {Boolean} result
 */
const checkAndPrepareFilePath = async path => {
  const isPathExists = await exists(path)
  if (isPathExists) {
    return true
  }
  const isPrepared = await checkAndPrepareFilePath(nodePath.dirname(path))
  if (isPrepared) {
    try {
      await mkdir(path)
      return true
    } catch (err) {
      console.error(`The path: ${path} prepare failed with ${err.message}`)
    }
  }
  return false
}
/**
   * Delete the file and dir by path with recursion
   * @param path
   * @return boolean
   */
const deleteFileAndDirByPath = async path => {
  try {
    const isPathExists = await exists(path)
    if (isPathExists) {
      const files = await readdir(path)
      for (let i = 0; i < files.length; i++) {
        const curPath = `${path}/${files[i]}`
        const fileStats = await lstat(curPath)
        if (fileStats.isDirectory()) {
          // recurse
          await deleteFileAndDirByPath(curPath)
        } else {
          // delete file
          await unlink(curPath)
        }
      }
      await rmdir(path)
      return true
    }
  } catch (err) {
    console.error(`Delete path: ${path} failed with ${err.message}`)
    return false
  }
  return true
}

module.exports = {
  checkAndPrepareFilePath,
  deleteFileAndDirByPath
};
