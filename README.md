# node-todo-app
Node Application with node-todo-slim Image
---------------------------------------------------------

docker run -d -p 80:80 node-todo-slim:v14aug25  # To view app at 80 port


docker run -d --name "node-cont" -p 3000:3000 node-todo-slim:v14aug25

docker exec -it 0709ef6885fb sh
