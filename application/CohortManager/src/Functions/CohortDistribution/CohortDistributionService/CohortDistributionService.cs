using System.Net;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using System.Threading.Tasks;

namespace NHS.CohortManager.CohortDistributionService;


public class CohortDistributionService
{

    [Function("CohortDistributionService")]
    public async Task<HttpResponseData> Run(HttpRequestData req)
    {
        if (true)
        {
            // Do something
            return req.CreateResponse(HttpStatusCode.OK);
        }
        else
        {
            // Do something else
            return req.CreateResponse(HttpStatusCode.BadRequest);
        }
    }
}


