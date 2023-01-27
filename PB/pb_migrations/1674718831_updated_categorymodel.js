migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  collection.listRule = "@request.auth.id != \"\""
  collection.viewRule = "@request.auth.id != \"\""

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  collection.listRule = null
  collection.viewRule = null

  return dao.saveCollection(collection)
})
