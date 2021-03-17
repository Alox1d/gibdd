﻿// <auto-generated />
using System;
using DAL;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace DAL_ASP_5.Migrations
{
    [DbContext(typeof(GIBDDContext))]
    [Migration("20210317182125_col")]
    partial class col
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.3")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("CategoryDriverLicense", b =>
                {
                    b.Property<int>("CategoriesId")
                        .HasColumnType("int");

                    b.Property<int>("DriverLicensesId")
                        .HasColumnType("int");

                    b.HasKey("CategoriesId", "DriverLicensesId");

                    b.HasIndex("DriverLicensesId");

                    b.ToTable("CategoryDriverLicense");
                });

            modelBuilder.Entity("DAL.Entities.ArticleOffense", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Number")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Penalty")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("ArticleOffenses");
                });

            modelBuilder.Entity("DAL.Entities.CarDriver", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("FIO")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("IsCarOwner")
                        .HasColumnType("bit");

                    b.Property<int?>("VehicleId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("VehicleId");

                    b.ToTable("CarDrivers");
                });

            modelBuilder.Entity("DAL.Entities.CarOwner", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("DriverLicenseId")
                        .HasColumnType("int");

                    b.Property<string>("FIO")
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("PassportData")
                        .HasColumnType("bigint");

                    b.HasKey("Id");

                    b.HasIndex("DriverLicenseId")
                        .IsUnique();

                    b.ToTable("CarOwners");
                });

            modelBuilder.Entity("DAL.Entities.Category", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("DAL.Entities.Color", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Colors");
                });

            modelBuilder.Entity("DAL.Entities.DriverLicense", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("IsInvalid")
                        .HasColumnType("bit");

                    b.Property<long>("Number")
                        .HasColumnType("bigint");

                    b.Property<DateTime>("ReleaseDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.ToTable("DriverLicenses");
                });

            modelBuilder.Entity("DAL.Entities.Model", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Models");
                });

            modelBuilder.Entity("DAL.Entities.Offense", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("CarDriverId")
                        .HasColumnType("int");

                    b.Property<DateTime>("Date")
                        .HasColumnType("datetime2");

                    b.Property<double>("SumPenalty")
                        .HasColumnType("float");

                    b.HasKey("Id");

                    b.HasIndex("CarDriverId");

                    b.ToTable("Offenses");
                });

            modelBuilder.Entity("DAL.Entities.TakeStroke", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("DriverLicenseId")
                        .HasColumnType("int");

                    b.Property<DateTime>("ReturnDate")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("TakeDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.HasIndex("DriverLicenseId");

                    b.ToTable("TakeStroke");
                });

            modelBuilder.Entity("DAL.Entities.Vehicle", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("CarOwnerId")
                        .HasColumnType("int");

                    b.Property<int?>("CategoryId")
                        .HasColumnType("int");

                    b.Property<int?>("ColorId")
                        .HasColumnType("int");

                    b.Property<int?>("DriverLicenseId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("MaintenanceDate")
                        .HasColumnType("datetime2");

                    b.Property<bool>("MaintenanceSuccess")
                        .HasColumnType("bit");

                    b.Property<int?>("ModelId")
                        .HasColumnType("int");

                    b.Property<string>("RegistrationNumber")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("CarOwnerId");

                    b.HasIndex("CategoryId");

                    b.HasIndex("ColorId");

                    b.HasIndex("DriverLicenseId");

                    b.HasIndex("ModelId");

                    b.ToTable("Vehicles");
                });

            modelBuilder.Entity("DAL.Entities.VehicleOffense", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("ArticleOffenseId")
                        .HasColumnType("int");

                    b.Property<int?>("CarDriverId")
                        .HasColumnType("int");

                    b.Property<int?>("CarOwnerId")
                        .HasColumnType("int");

                    b.Property<double>("Penalty")
                        .HasColumnType("float");

                    b.Property<int>("TakeLicenseTime")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("ArticleOffenseId");

                    b.HasIndex("CarDriverId");

                    b.HasIndex("CarOwnerId");

                    b.ToTable("VehicleOffenses");
                });

            modelBuilder.Entity("CategoryDriverLicense", b =>
                {
                    b.HasOne("DAL.Entities.Category", null)
                        .WithMany()
                        .HasForeignKey("CategoriesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("DAL.Entities.DriverLicense", null)
                        .WithMany()
                        .HasForeignKey("DriverLicensesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("DAL.Entities.CarDriver", b =>
                {
                    b.HasOne("DAL.Entities.Vehicle", "Vehicle")
                        .WithMany()
                        .HasForeignKey("VehicleId");

                    b.Navigation("Vehicle");
                });

            modelBuilder.Entity("DAL.Entities.CarOwner", b =>
                {
                    b.HasOne("DAL.Entities.DriverLicense", "DriverLicense")
                        .WithOne("CarOwner")
                        .HasForeignKey("DAL.Entities.CarOwner", "DriverLicenseId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("DriverLicense");
                });

            modelBuilder.Entity("DAL.Entities.Offense", b =>
                {
                    b.HasOne("DAL.Entities.CarDriver", "CarDriver")
                        .WithMany("Offenses")
                        .HasForeignKey("CarDriverId");

                    b.Navigation("CarDriver");
                });

            modelBuilder.Entity("DAL.Entities.TakeStroke", b =>
                {
                    b.HasOne("DAL.Entities.DriverLicense", "DriverLicense")
                        .WithMany("TakeStrokes")
                        .HasForeignKey("DriverLicenseId");

                    b.Navigation("DriverLicense");
                });

            modelBuilder.Entity("DAL.Entities.Vehicle", b =>
                {
                    b.HasOne("DAL.Entities.CarOwner", "CarOwner")
                        .WithMany("Vehicles")
                        .HasForeignKey("CarOwnerId");

                    b.HasOne("DAL.Entities.Category", "Category")
                        .WithMany("Vehicles")
                        .HasForeignKey("CategoryId");

                    b.HasOne("DAL.Entities.Color", "Color")
                        .WithMany("Vehicles")
                        .HasForeignKey("ColorId");

                    b.HasOne("DAL.Entities.DriverLicense", "DriverLicense")
                        .WithMany()
                        .HasForeignKey("DriverLicenseId");

                    b.HasOne("DAL.Entities.Model", "Model")
                        .WithMany("Vehicles")
                        .HasForeignKey("ModelId");

                    b.Navigation("CarOwner");

                    b.Navigation("Category");

                    b.Navigation("Color");

                    b.Navigation("DriverLicense");

                    b.Navigation("Model");
                });

            modelBuilder.Entity("DAL.Entities.VehicleOffense", b =>
                {
                    b.HasOne("DAL.Entities.ArticleOffense", "ArticleOffense")
                        .WithMany("VehicleOffenses")
                        .HasForeignKey("ArticleOffenseId");

                    b.HasOne("DAL.Entities.CarDriver", "CarDriver")
                        .WithMany("VehicleOffenses")
                        .HasForeignKey("CarDriverId");

                    b.HasOne("DAL.Entities.CarOwner", null)
                        .WithMany("VehicleOffenses")
                        .HasForeignKey("CarOwnerId");

                    b.Navigation("ArticleOffense");

                    b.Navigation("CarDriver");
                });

            modelBuilder.Entity("DAL.Entities.ArticleOffense", b =>
                {
                    b.Navigation("VehicleOffenses");
                });

            modelBuilder.Entity("DAL.Entities.CarDriver", b =>
                {
                    b.Navigation("Offenses");

                    b.Navigation("VehicleOffenses");
                });

            modelBuilder.Entity("DAL.Entities.CarOwner", b =>
                {
                    b.Navigation("VehicleOffenses");

                    b.Navigation("Vehicles");
                });

            modelBuilder.Entity("DAL.Entities.Category", b =>
                {
                    b.Navigation("Vehicles");
                });

            modelBuilder.Entity("DAL.Entities.Color", b =>
                {
                    b.Navigation("Vehicles");
                });

            modelBuilder.Entity("DAL.Entities.DriverLicense", b =>
                {
                    b.Navigation("CarOwner");

                    b.Navigation("TakeStrokes");
                });

            modelBuilder.Entity("DAL.Entities.Model", b =>
                {
                    b.Navigation("Vehicles");
                });
#pragma warning restore 612, 618
        }
    }
}