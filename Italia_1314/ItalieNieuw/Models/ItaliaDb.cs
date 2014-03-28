using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ItalieNieuw.Models
{
    public class ItaliaDb : DbContext
    {
        public ItaliaDb() : base("DefaultConnection")
        { 
        }

        public DbSet<Reaction> Reactions { get; set; }
        public DbSet<DailyReport> DailyReports { get; set; }
        public DbSet<DailyProgram> DailyPrograms { get; set; }
        public DbSet<Picture> Pictures { get; set; }

    }
}