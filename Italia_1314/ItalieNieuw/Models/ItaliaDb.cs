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

        public DbSet<Reaction> Reaction { get; set; }
        public DbSet<DailyReport> DailyReport { get; set; }
        public DbSet<DailyProgram> DailyProgram { get; set; }

    }
}