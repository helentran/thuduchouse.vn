using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HRSystemTDH.Models
{
    public class Employee
    {
        public int IDEmp { get; set; }//1

        public IEnumerable<SelectListItem> Depatments { get; set; }
        public IEnumerable<SelectListItem> Companies { get; set; }

        [Required]
        public string IDDept { get; set; }//2

        [Required]
        public string IDComp { get; set; }//3

        [Required]
        public string CodeEmp { get; set; }//4

        [Required]
        [StringLength(25, MinimumLength = 2, ErrorMessage = "The  first name must be between {2} and  {1}  characters long.")]
        //[RegularExpression(@"^([a-zA-Z.&'-]+)$", ErrorMessage = "Numbers and special characters are not allowed in the first name.")]
        public string FirstName { get; set; }//5

        [Required]
        [StringLength(25, MinimumLength = 2, ErrorMessage = "The last name must be between {2} and  {1}  characters long.")]
        //[RegularExpression(@"^([a-zA-Z.&'-]+)$", ErrorMessage = "Numbers and special characters are not allowed in the last name.")]
        public string LastName { get; set; }//6

        public DateTime DateOfBirth { get; set; }//7
        public string PlaceOfBirth { get; set; }//8
        public string EthnicGroup { get; set; }//9
        public string Religion { get; set; }//10
        public string PlaceOfOrigin { get; set; }//11
        public string Nationality { get; set; }//12

        [Required]
        [StringLength(200, MinimumLength = 2, ErrorMessage = "The {0} must be between {2} and  {1}  characters long.")]
        public string CurrentAddress { get; set; }//13

        [Required]
        [StringLength(200, MinimumLength = 2, ErrorMessage = "The {0} must be between {2} and  {1}  characters long.")]
        public string ResidentAddress { get; set; }//14

        [DataType(DataType.PhoneNumber)]
        [StringLength(20, MinimumLength = 10, ErrorMessage = "The {0} must be between {2} and  {1}  characters long.")]
        [RegularExpression(@"@^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$| |^([0-9\(\)\/\+ \-]*)$",
                   ErrorMessage = "Please re-send using valid digit numbers [0-9]. ")]
        public string Telephone { get; set; }//15

        //[DataType(DataType.PhoneNumber)]
        [StringLength(20, MinimumLength = 10, ErrorMessage = "The {0} must be between {2} and  {1}  characters long.")]
        [RegularExpression(@"@^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$| |^([0-9\(\)\/\+ \-]*)$",
                   ErrorMessage = "Please re-send using valid digit numbers [0-9]. ")]
        public string Mobile { get; set; }//16

        [Required]
        [StringLength(12, MinimumLength = 4, ErrorMessage = "The {0} must be between {2} and  {1}  characters long.")]
        [RegularExpression("([0-9][0-9]*)", ErrorMessage = "Post code must be numbers")]
        public string IDNumber { get; set; }//17

        public DateTime DateOfIssue { get; set; }//18
        public string PlaceOfIssue { get; set; }//19
        public string Gender { get; set; }//20
        public string Image { get; set; }//21
        public string Position { get; set; }//22

        [EmailAddress]
        [StringLength(100, MinimumLength = 2, ErrorMessage = "The {0} must be between {2} and  {1}  characters long.")]
        public string Email { get; set; }//23

        public Employee()
        {

        }
        public Employee(List<Department> departments) {
            this.Depatments = GetDepartments(departments);
        }
        public static IEnumerable<SelectListItem> GetDepartments( List<Department> departments)
        {
            var roles = departments.Select(x =>
                                new SelectListItem
                                {
                                    Value = x.ID.ToString(),
                                    Text = x.Name
                                });
            return new SelectList(roles, "Value", "Text");
        }

    }
}