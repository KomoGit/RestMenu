migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  collection.listRule = "@request.auth.id = \"\" && active = true"
  collection.viewRule = "@request.auth.id = \"\" && active = true"

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  collection.listRule = null
  collection.viewRule = null

  return dao.saveCollection(collection)
})
