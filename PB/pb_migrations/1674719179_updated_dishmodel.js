migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "ortfvuhl",
    "name": "active",
    "type": "bool",
    "required": false,
    "unique": false,
    "options": {}
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // remove
  collection.schema.removeField("ortfvuhl")

  return dao.saveCollection(collection)
})
