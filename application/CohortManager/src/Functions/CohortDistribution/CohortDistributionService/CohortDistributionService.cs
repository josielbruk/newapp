namespace NHS.CohortManager.CohortDistributionService;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;

public class CohortDistributionService
{

    [Function("CohortDistributionService")]
    public async Task<HttpResponseData> Run([HttpTrigger(AuthorizationLevel.Anonymous, "get", "post")] HttpRequestData req)
    {
        // call participant data service

        // call service provider allocation service
            // provide postcode, screening service

        // call service provider transform
            // provide participant, demographic, service provider

        // call add aggregation data service
            // Create a response
        var response = req.CreateResponse(HttpStatusCode.OK);
        await response.WriteStringAsync("Hello World");

        return response;

    }
}
