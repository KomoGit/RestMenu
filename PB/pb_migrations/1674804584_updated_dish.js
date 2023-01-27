migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  collection.name = "menuitem"

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  collection.name = "dish"

  return dao.saveCollection(collection)
})
