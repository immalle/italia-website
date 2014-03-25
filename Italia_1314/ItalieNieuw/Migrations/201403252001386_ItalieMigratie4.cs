namespace ItalieNieuw.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ItalieMigratie4 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.DailyPrograms", "Volgnummer", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.DailyPrograms", "Volgnummer");
        }
    }
}
