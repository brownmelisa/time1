# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Time1.Repo.insert!(%Time1.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Time1.Repo
alias Time1.Users.User
alias Time1.Jobs.Job

# insert sample data into User
Repo.insert!(%User{
  name: "Alice Anderson",
  email: "alice@acme.com",
  manager: true,
  password: "password1234"})
Repo.insert!(%User{
  name: "Bob Anderson",
  email: "bob@acme.com",
  manager: true,
  password: "password1234"})
Repo.insert!(%User{
  name: "Carol Anderson",
  email: "carol@acme.com",
  manager: false,
  password: "password1234"})
Repo.insert!(%User{
  name: "Dave Anderson",
  email: "dave@acme.com",
  manager: false,
  password: "password1234"})

# insert sample data into Jobs
Repo.insert!(%Job{
  job_code: "VAOR-01",
  budget_hours: 20,
  name: "Cyborg Arm(1)",
  description: "(1)"
})
Repo.insert!(%Job{
  job_code: "VAOR-02",
  budget_hours: 45,
  name: "Sobriety Pill(1)",
  description: "(1)"
})
Repo.insert!(%Job{
  job_code: "VAOR-03",
  budget_hours: 12,
  name: "Rat Cancer",
  description: "(1)"
})



#
#lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
#  Quisque maximus metus nec enim molestie mollis. Curabitur nec tellus mi.
#  Vivamus mi est, sodales nec finibus at, eleifend ac ligula. Praesent semper
#  ultrices felis in tempus. Integer sit amet dui eget ante efficitur porttitor.
#  Curabitur lorem diam, vulputate sit amet odio at, lobortis ornare nisl.
#  Aenean dignissim commodo semper. Curabitur feugiat facilisis aliquet.
#  Class aptent taciti sociosqu ad litora torquent per conubia nostra,
#  per inceptos himenaeos. Proin id mauris tincidunt, viverra nisl quis, ornare turpis.
#
#  Morbi suscipit leo et purus pretium condimentum. Morbi ut maximus sem.
#  Ut vel felis nec erat dapibus auctor finibus quis libero. Aenean massa tellus,
#  auctor sit amet egestas sit amet, ornare sed mauris. Aliquam pharetra nisl non
#  commodo elementum. Fusce vehicula pretium tortor, ut tempor purus tristique vel.
#  Vivamus vehicula consectetur nisl, eget egestas leo feugiat eu.
#
#  Praesent placerat ac dolor condimentum suscipit. Donec vel metus eget quam blandit maximus.
#  Sed a ligula est. Fusce in libero dolor. Aenean quis elementum justo, ut fermentum odio.
#  Cras bibendum sapien mauris, sed porttitor eros rhoncus vel. Donec sed diam ac mi dignissim
#  suscipit eget at erat. Quisque nec ligula semper, dapibus quam viverra, mattis nisi.
#  Proin facilisis vitae erat vel luctus. Aenean fermentum vulputate metus ac finibus.
#  Pellentesque vulputate interdum urna, sit amet luctus metus maximus quis. Quisque eu
#  neque condimentum, semper ante efficitur, vulputate libero. Praesent non sodales ante,
#  et volutpat augue. Etiam at tellus at quam interdum bibendum."
#
