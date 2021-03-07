import Vapor

func routes(_ app: Application) throws {
  app.get { req in
    return "It works!"
  }
  
  app.get("hello") { req -> String in
    return "Hello, world!"
  }
  
  app.post("info") { req -> String in
    let data = try req.content.decode(InfoData.self)
    return "Hello \(data.name)"
  }
}

struct InfoData: Content {
  let name: String
}
