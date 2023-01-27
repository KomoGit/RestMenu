migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "rkhotrsi",
    "name": "imgUrl",
    "type": "text",
    "required": true,
    "unique": false,
    "options": {
      "min": null,
      "max": null,
      "pattern": ""
    }
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // remove
  collection.schema.removeField("rkhotrsi")

  return dao.saveCollection(collection)
})
