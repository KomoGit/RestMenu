migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  // remove
  collection.schema.removeField("jbsl4g6v")

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

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "jbsl4g6v",
    "name": "img",
    "type": "url",
    "required": true,
    "unique": false,
    "options": {
      "exceptDomains": [],
      "onlyDomains": []
    }
  }))

  // remove
  collection.schema.removeField("b6hbtm3y")

  return dao.saveCollection(collection)
})
