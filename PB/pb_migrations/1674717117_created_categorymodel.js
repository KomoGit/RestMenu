migrate((db) => {
  const collection = new Collection({
    "id": "894dowd56n5nd7n",
    "created": "2023-01-26 07:11:57.562Z",
    "updated": "2023-01-26 07:11:57.562Z",
    "name": "categorymodel",
    "type": "base",
    "system": false,
    "schema": [
      {
        "system": false,
        "id": "e9kf7fsc",
        "name": "title",
        "type": "text",
        "required": true,
        "unique": false,
        "options": {
          "min": null,
          "max": null,
          "pattern": ""
        }
      },
      {
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
      }
    ],
    "listRule": null,
    "viewRule": null,
    "createRule": null,
    "updateRule": null,
    "deleteRule": null,
    "options": {}
  });

  return Dao(db).saveCollection(collection);
}, (db) => {
  const dao = new Dao(db);
  const collection = dao.findCollectionByNameOrId("894dowd56n5nd7n");

  return dao.deleteCollection(collection);
})
