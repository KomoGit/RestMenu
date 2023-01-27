migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  // remove
  collection.schema.removeField("b6hbtm3y")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "ka6silu2",
    "name": "img",
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
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "b6hbtm3y",
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
        "image/svg+xml",
        "image/webp"
      ],
      "thumbs": [
        "50x50"
      ]
    }
  }))

  // remove
  collection.schema.removeField("ka6silu2")

  return dao.saveCollection(collection)
})
