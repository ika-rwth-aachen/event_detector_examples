db.createUser(
    {
      user: "reader",
      pwd: "password",
      roles: [
        {
          role: "read",
          db: "db"
        }
      ]
    }
)

db.createUser(
    {
      user: "writer",
      pwd: "password",
      roles: [
        {
          role: "readWrite",
          db: "db"
        }
      ]
    }
)
