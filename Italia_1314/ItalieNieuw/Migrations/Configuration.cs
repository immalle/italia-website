namespace ItalieNieuw.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using System.Web.Security;
    using WebMatrix.WebData;

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

            context.Reactions.AddOrUpdate(
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

            context.DailyPrograms.AddOrUpdate(
                d => d.Volgnummer,
                new Models.DailyProgram
                {
                    Volgnummer = 1,
                    Date = new DateTime(2014, 3, 30, 00, 00, 00),
                    Title = "Vertrek naar Italië!",
                    Info = "Om 23.30 uur vezamelen aan de school. | Om middernacht vertrekken!" // Het '|' teken geeft een Enter aan.
                },
                new Models.DailyProgram
                {
                    Volgnummer = 2,
                    Date = new DateTime(2014, 3, 31, 00, 00, 00),
                    Title = "Busreis",
                    Info = "Busreis naar Italië. | 's Avonds aankomst in Lido di Camaiore."
                },
                new Models.DailyProgram
                {
                    Volgnummer = 3,
                    Date = new DateTime(2014, 4, 1, 00, 00, 00),
                    Title = "Pisa en Firenze",
                    Info = "Pisa: Piazza dei Miracoli. | Toren, dom en baptisterium, campo santo | Firenze: Wandeling langs: Dom, Companile en Domplein, Porcillino, Ponte vecchio, San Miniato, Santa Croce, Piazza Signoria, Palazzo Vecchio."
                },
                new Models.DailyProgram
                {
                    Volgnummer = 4,
                    Date = new DateTime(2014, 4, 2, 00, 00, 00),
                    Title = "Firenze",
                    Info = "Voormiddag: Accademia, San Marcomuseum, Medici Capelle.| Namiddag: vrij"
                },
                new Models.DailyProgram
                {
                    Volgnummer = 5,
                    Date = new DateTime(2014, 4, 3, 00, 00, 00),
                    Title = "Assisi",
                    Info = "Voormiddag: Sint-Franciscusbasiliek. | Namiddag: Santa Clarabasiliek en Santa Maria degli Angeli. | 's Avonds: aankomst in Rome."
                },
                new Models.DailyProgram
                {
                    Volgnummer = 6,
                    Date = new DateTime(2014, 4, 4, 00, 00, 00),
                    Title = "Vaticaanstad",
                    Info = "Voormiddag: Plein en Sint-Pietersbasiliek. | Namiddag: Berniniwandeling of bezoek Vaticaanse Musea."
                },
                new Models.DailyProgram
                {
                    Volgnummer = 7,
                    Date = new DateTime(2014, 4, 5, 00, 00, 00),
                    Title = "Wandeling oude Rome",
                    Info = "Thermen van Caracalle, Forum Boarium, Teatro Marcello, Capitool, Forum Romanum en Palatijn, Colosseum, San Pietro in Vincoli."
                },
                new Models.DailyProgram
                {
                    Volgnummer = 8,
                    Date = new DateTime(2014, 4, 6, 00, 00, 00),
                    Title = "Rome",
                    Info = "Voormiddag: Sint-Pietersplein. | Namiddag: Voetbal/strand."
                },
                                new Models.DailyProgram
                                {
                                    Volgnummer = 9,
                                    Date = new DateTime(2014, 4, 7, 00, 00, 00),
                                    Title = "Siena",
                                    Info = ""
                                },
                new Models.DailyProgram
                {
                    Volgnummer = 10,
                    Date = new DateTime(2014, 4, 8, 00, 00, 00),
                    Title = "Venetië",
                    Info = "Slavenkade, Dogenpaleis, San Marcobasiliek, San Marcoplein, Campanile. | 's Avonds: Vertrek huiswaarts."
                },
                new Models.DailyProgram
                {
                    Volgnummer = 11,
                    Date = new DateTime(2014, 4, 8, 00, 00, 00),
                    Title = "Aankomst school",
                    Info = "Aankomst op school rond de middag."
                }
                );


            WebSecurity.InitializeDatabaseConnection("DefaultConnection", "UserProfile", "UserId", "UserName", autoCreateTables: true);

            var roles = (SimpleRoleProvider)Roles.Provider;
            var membership = (SimpleMembershipProvider)Membership.Provider;

            if (membership.GetUser("admin", false) == null)
            {
                membership.CreateUserAndAccount("admin", "admin");
            }

        }
    }
}
