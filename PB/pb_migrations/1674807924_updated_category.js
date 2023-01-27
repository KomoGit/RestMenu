migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  collection.listRule = "@request.auth.id = \"\" && active = true "

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  collection.listRule = null

  return dao.saveCollection(collection)
})
