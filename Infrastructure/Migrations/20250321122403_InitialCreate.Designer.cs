﻿// <auto-generated />
using System;
using Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace Infrastructure.Migrations
{
    [DbContext(typeof(AppDbContext))]
    [Migration("20250321122403_InitialCreate")]
    partial class InitialCreate
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.15")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Domain.Entities.Empresa", b =>
                {
                    b.Property<string>("CUIT")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("FechaAdhesion")
                        .HasColumnType("datetime2");

                    b.Property<string>("RazonSocial")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("CUIT");

                    b.ToTable("Empresas");
                });

            modelBuilder.Entity("Domain.Entities.Transferencia", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("CuentaCredito")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CuentaDebito")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("EmpresaCUIT")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("Fecha")
                        .HasColumnType("datetime2");

                    b.Property<decimal>("Importe")
                        .HasColumnType("decimal(18,2)");

                    b.HasKey("Id");

                    b.ToTable("Transferencias");
                });
#pragma warning restore 612, 618
        }
    }
}
