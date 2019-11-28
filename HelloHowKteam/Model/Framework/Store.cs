namespace Model.Framework
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Store : DbContext
    {
        public Store()
            : base("name=Store")
        {
        }

        public virtual DbSet<account> accounts { get; set; }
        public virtual DbSet<bill> bills { get; set; }
        public virtual DbSet<billdetail> billdetails { get; set; }
        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<feedback> feedbacks { get; set; }
        public virtual DbSet<producer> producers { get; set; }
        public virtual DbSet<PRODUCT> PRODUCTs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<account>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .HasMany(e => e.bills)
                .WithRequired(e => e.account)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<account>()
                .HasMany(e => e.feedbacks)
                .WithRequired(e => e.account)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<bill>()
                .HasMany(e => e.billdetails)
                .WithRequired(e => e.bill)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<category>()
                .HasMany(e => e.PRODUCTs)
                .WithOptional(e => e.category)
                .HasForeignKey(e => e.catID);

            modelBuilder.Entity<feedback>()
                .Property(e => e.comment)
                .IsUnicode(false);

            modelBuilder.Entity<PRODUCT>()
                .Property(e => e.images)
                .IsUnicode(false);

            modelBuilder.Entity<PRODUCT>()
                .Property(e => e.description)
                .IsUnicode(false);

            modelBuilder.Entity<PRODUCT>()
                .HasMany(e => e.billdetails)
                .WithRequired(e => e.PRODUCT)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PRODUCT>()
                .HasMany(e => e.feedbacks)
                .WithRequired(e => e.PRODUCT)
                .WillCascadeOnDelete(false);
        }

        public static implicit operator Store(AccountModel v)
        {
            throw new NotImplementedException();
        }
    }
}
