﻿using DAL;
using DAL.Entities;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public partial class GIBDDContext : IdentityDbContext<User>
    {
        public GIBDDContext(string connection)
    : base(connection)
        {
        }
        public GIBDDContext()
    : base("GIBDDContext")
        { }

        public DbSet<ArticleOffense> ArticleOffenses { get; set; }
        public DbSet<CarDriver> CarDrivers { get; set; }
        public DbSet<CarOwner> CarOwners { get; set; }
        public DbSet<DriverLicense> DriverLicenses { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Offense> Offenses { get; set; }
        public DbSet<Vehicle> Vehicles { get; set; }
        public DbSet<Model> Models { get; set; }
        public DbSet<Color> Colors { get; set; }
        public DbSet<VehicleOffense> VehicleOffenses { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DriverLicense>()
                .HasOptional(c => c.CarOwner)
                .WithOptionalPrincipal(c => c.DriverLicense);

    //        modelBuilder.Entity<CarDriver>()
    //.HasOptional(c => c.Vehicle)
    //.WithOptionalPrincipal(c => c.CarDrivers);



        }
    }
}
