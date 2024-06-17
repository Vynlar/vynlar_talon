tag: terminal

-

start frontend:
    insert("npm run dev-server-docker")
    key(enter)

start frontend tests:
    insert("npm run test:watch")
    key(enter)

start backend:
    insert("simon-docker run-server")
    key(enter)

start colima:
    insert("colima start --memory 10 --cpu 3 --vm-type vz --mount-type virtiofs")
    key(enter)

simon shell prod:
    insert("simon-docker run prod ./manage.py shell")
    key(enter)

simon shell local:
    insert("simon-docker run dev ./manage.py shell")
    key(enter)

simon run local:
    insert("simon-docker run dev ./manage.py ")

simon run prod:
    insert("simon-docker run prod ./manage.py ")

amazon login:
    insert("aws sso login")
    key(enter)

start dna:
    insert("npm run -w @dna/internal watch:css")
    key(enter)

start playwright [local]:
    insert("npm run e2e:dev:local")
    key(enter)

start storybook:
    insert("npm run storybook")
    key(enter)

start colima:
    insert("colima start --memory 10 --cpu 3 --vm-type vz --mount-type virtiofs")
    key(enter)
