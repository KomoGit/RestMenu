migrate((db) => {
  const collection = new Collection({
    "id": "qgl14n9wzq24ql5",
    "created": "2023-01-26 07:07:48.009Z",
    "updated": "2023-01-26 07:07:48.009Z",
    "name": "dishmodel",
    "type": "base",
    "system": false,
    "schema": [
      {
        "system": false,
        "id": "tumwbkge",
        "name": "title",
        "type": "text",
        "required": false,
        "unique": false,
        "options": {
          "min": null,
          "max": null,
          "pattern": ""
        }
      },
      {
        "system": false,
        "id": "q6duha1x",
        "name": "desc",
        "type": "text",
        "required": false,
        "unique": false,
        "options": {
          "min": null,
          "max": null,
          "pattern": ""
        }
      },
      {
        "system": false,
        "id": "gviopokm",
        "name": "img",
        "type": "url",
        "required": false,
        "unique": false,
        "options": {
          "exceptDomains": null,
          "onlyDomains": null
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
  const collection = dao.findCollectionByNameOrId("qgl14n9wzq24ql5");

  return dao.deleteCollection(collection);
})
