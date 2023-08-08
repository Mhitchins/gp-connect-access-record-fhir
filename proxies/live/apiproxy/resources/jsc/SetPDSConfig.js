var nhs_number = context.getVariable("jwt.DecodeJWT.DecodeIDToken.claim.nhs_number")
var PDSConfig=context.getVariable("private.pds_config")
const parsedPDSConfig = JSON.parse(PDSConfig)

Oauth2Config=parsedPDSConfig["oauth2"]

context.setVariable("pds_client_id_config",Oauth2Config["client_id"])
context.setVariable("pds_kid_config",Oauth2Config["kid"])
context.setVariable("pds_audience_config",Oauth2Config["audience"])
