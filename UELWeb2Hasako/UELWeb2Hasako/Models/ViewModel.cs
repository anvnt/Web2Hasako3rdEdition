using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UELWeb2Hasako.Models
{
    public class ViewModel
    {
        [System.ComponentModel.DataAnnotations.DisplayFormat(DataFormatString = "{0:N}", ApplyFormatInEditMode = true)]
        public decimal TAll { get; set; }

    }
}