migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // remove
  collection.schema.removeField("gviopokm")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "jz9fx2w6",
    "name": "img",
    "type": "file",
    "required": true,
    "unique": false,
    "options": {
      "maxSelect": 1,
      "maxSize": 5242880,
      "mimeTypes": [
        "image/jpg",
        "image/jpeg",
        "image/png",
        "image/webp"
      ],
      "thumbs": [
        "240x240"
      ]
    }
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "gviopokm",
    "name": "img",
    "type": "url",
    "required": true,
    "unique": false,
    "options": {
      "exceptDomains": null,
      "onlyDomains": null
    }
  }))

  // remove
  collection.schema.removeField("jz9fx2w6")

  return dao.saveCollection(collection)
})
