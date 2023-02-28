Implement two microservices with CRUD: 1) DB, 2) Core, 3) Gateway.

Gateway — must accept requests and redirect them to the main microservice — Core, as well as log the input data and the result of execution.

Core — CRUD for users, balance, products (you can use any). The service should be able to register users with a two-factor authentication option via mail, collect the following data during authorization: ip, geolocation, browser (from which the request was made, the name is enough); and also create sessions in Redis. Each user can both create their own products and buy products from other users. The purchase of goods should be made as follows: user A bought products from user B, withdrawal of money from user A should be made when he clicks the "pick up the goods" button on the website, at this moment the balance of user B should also be replenished. In this process, the history of the states of the product statuses should be recorded, i.e. "on the way", "delivered", "rejected", "collected" (these statuses are just an example, you can implement the name on your own version).

Technologies: JWT, Redis, PostgreSQL/MongoDB (at its discretion), NATS (for interaction between microservices), NestJS, GraphQL, Docker.

It will be a plus: the architecture of the CORE microservice CORE will be implemented for DDD, functional tests (you can choose any of the "modular", "integration").