migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "oe70j15a",
    "name": "active",
    "type": "bool",
    "required": false,
    "unique": false,
    "options": {}
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  // remove
  collection.schema.removeField("oe70j15a")

  return dao.saveCollection(collection)
})
