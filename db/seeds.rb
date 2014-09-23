# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.create ([
    {
      name: "Henry Davidson"
    },
    {
      name: "Frank Christopher"
    },
    {
      name: "Georgina Winston"
    },
    {
      name: "Violet Barrington"
    }
  ])

Journal.create ([
    {
      journal_title: "My Daily Journal"
    },
    {
      journal_title: "This is my Life"
    },
    {
      journal_title: "Today's Thoughts"
    },
    {
      journal_title: "Growing up"
    }
  ])

Entry.create([
    {
      entry_title: "First Entry",
      entry_date: "2014-05-21 02:16:29",
      journal_id: 1
    },
    {
      entry_title: "Beginning",
      entry_date: "2014-06-21 02:16:29",
      journal_id: 2
    },
    {
      entry_title: "Starting Over",
      entry_date: "2014-07-21 02:16:29",
      journal_id: 3
    },
    {
      entry_title: "Here we go",
      entry_date: "2014-08-21 02:16:29",
      journal_id: 4
    }
  ])
