/**
 * @After(event = { "READ" }, entity = "prueba1Srv.SuperHero")
 * @param {(Object|Object[])} results - For the After phase only: the results of the event processing
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(results, request) {

    // Check if results is an array
    if (Array.isArray(results)) {
        results.forEach(result => {
            if (result.age > 150) {
                result.description = "An Immortal, " + (result.description || "");
            }
        });
    } else {
        if (results.age > 150) {
            results.description = "An Immortal, " + (results.description || "");
        }
    }
}