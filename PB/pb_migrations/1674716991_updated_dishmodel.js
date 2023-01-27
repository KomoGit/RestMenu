migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "fkwpp2kt",
    "name": "price",
    "type": "number",
    "required": false,
    "unique": false,
    "options": {
      "min": null,
      "max": null
    }
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // remove
  collection.schema.removeField("fkwpp2kt")

  return dao.saveCollection(collection)
})
