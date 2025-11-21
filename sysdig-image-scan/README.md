# sysdig-image-scan

<!-- AUTO-DOC-DESCRIPTION:START - Do not remove or modify this section -->

Download the sysdig binary, try to cache the scanning database, and scan the specified image.


<!-- AUTO-DOC-DESCRIPTION:END -->

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|        INPUT         | REQUIRED |            DEFAULT             |                    DESCRIPTION                     |
|----------------------|----------|--------------------------------|----------------------------------------------------|
|    imageLocation     |   true   |                                |    Where to find the image we're <br>scanning.     |
|    sysdigApiToken    |   true   |                                |    The API token for reporting to <br>sysdig.      |
| sysdigSecureEndpoint |  false   | `"https://us2.app.sysdig.com"` | The endpoint for reporting of Sysdig <br>results.  |

<!-- AUTO-DOC-INPUT:END -->
