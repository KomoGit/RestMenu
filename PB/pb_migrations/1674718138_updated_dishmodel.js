migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "aaqdw5t2",
    "name": "category",
    "type": "relation",
    "required": true,
    "unique": false,
    "options": {
      "maxSelect": 1,
      "collectionId": "894dowd56n5nd7n",
      "cascadeDelete": false
    }
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // remove
  collection.schema.removeField("aaqdw5t2")

  return dao.saveCollection(collection)
})
