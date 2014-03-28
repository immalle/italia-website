namespace ItalieNieuw.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<ItalieNieuw.Models.ItaliaDb>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(ItalieNieuw.Models.ItaliaDb context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //

            context.Reaction.AddOrUpdate(
                r => r.Message,
                new Models.Reaction
                {
                    Name = "Jos",
                    Date = new DateTime(2014, 3, 28, 12, 00, 00),
                    Message = "Mooi!"
                },
                new Models.Reaction
                {
                    Name = "Willy",
                    Date = new DateTime(2014, 3, 28, 12, 5, 00),
                    Message = "Zeer mooi!"
                }
                );

        }
    }
}
