﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GIBDD.Entities
{
    public class DriverLicense
    {
        public int Id { get; set; }
        public DateTime ReleaseDate { get; set; }
        //public ICollection<TakeStroke>? TakeStrokes { get; set; }
        //public ICollection<LicenseCategory> LicenseCategories { get; set; }
        public ICollection<Category> Categories { get; set; }
        public CarOwner CarOwner { get; set; }

    }


    //public class TakeStroke
    //{
    //    public int Id { get; set; }
    //    public DateTime TakeDate { get; set; }
    //    public DateTime ReturnDate { get; set; }
    //    public DriverLicense? DriverLicense { get; set; }

    //}
    //public class LicenseCategory
    //{
    //    public int Id { get; set; }
    //    public DateTime AssignDate { get; set; }
    //    public DateTime? TakeDate { get; set; }
    //    public Category Category { get; set; }
    //    public DriverLicense? DriverLicense { get; set; }


    //}
    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        //public ICollection<LicenseCategory> LicenseCategories { get; set; }
        public ICollection<DriverLicense> DriverLicenses { get; set; }
        public ICollection<Vehicle> Vehicles { get; set; }

    }
}