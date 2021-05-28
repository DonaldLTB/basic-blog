# Blog

Be sure to bundle & yarn install as well as rails db:migrate db:seed

1. create db schema
![schema](./app/assets/images/schema.png)

2 Models with 1:N relation (1 User to many articles)
first model: User with device as gem. Also includes first_name as string and admin as boolean
Second model: Article including title, content as string, public as boolean and publish_date as date. Also foreign key.
2. Using template to create rails app, which includes already bootstrap, simple form, debugging gems and devise install with a generated User model
3. Test quickly if rails server is running. Create repository on git and do first commit, push and change to new branch.
4. Add columns to User model and create Article model with necessary columns.
5. Defining the routes, adding relation from articles to user model and creating articles controller
6. Creating view for article index and start using faker gem for seeding the DB
7. Adding seeds and include default values for admin (User) and public (Article)
8. Including new and create in the articles controller
9. Adding impressionist gem for view count
10. Adding pg-search gem in order to search for articles
