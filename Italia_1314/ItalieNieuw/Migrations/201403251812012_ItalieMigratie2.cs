namespace ItalieNieuw.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ItalieMigratie2 : DbMigration
    {
        public override void Up()
        {
                        CreateTable(
                "dbo.DailyReports",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Date = c.DateTime(nullable: false),
                        Report = c.String(),
                        Title = c.String(),
                    })
                .PrimaryKey(t => t.Id);
        }
        
        public override void Down()
        {

            
        }
    }
}
