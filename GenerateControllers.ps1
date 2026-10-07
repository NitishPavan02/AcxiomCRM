$Controllers = @("Customers", "Leads", "Opportunities", "FollowUps", "Activities", "Users", "Reports", "Audit")

foreach ($c in $Controllers) {
    $content = @"
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using AcxiomCRM.Data;
using AcxiomCRM.Models;
using System.Linq;

namespace AcxiomCRM.Controllers
{
    [Authorize]
    public class $($c)Controller : Controller
    {
        private readonly ApplicationDbContext _context;

        public $($c)Controller(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }
    }
}
"@
    Set-Content -Path "c:\acxiom\AcxiomCRM\Controllers\$($c)Controller.cs" -Value $content
}

$ApiControllers = @("CustomersApi", "LeadsApi", "OpportunitiesApi")
foreach ($c in $ApiControllers) {
    $name = $c.Replace("Api", "")
    $content = @"
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using AcxiomCRM.Data;
using System.Linq;

namespace AcxiomCRM.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class $($c)Controller : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public $($c)Controller(ApplicationDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(new { message = "$name API works" });
        }
    }
}
"@
    Set-Content -Path "c:\acxiom\AcxiomCRM\Controllers\Api\$($c)Controller.cs" -Value $content
}
