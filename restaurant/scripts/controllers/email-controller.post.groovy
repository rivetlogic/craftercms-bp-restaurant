def name = "User"
def email = "user@gmail.com"
def message = "Message"

if (params.name != null) {
    name = params.name
}

if (params.email != null) {
    email = params.email
}

if (params.message != null) {
    message = params.message
}

templateModel.name = name
templateModel.email = email
templateModel.message = message

return "/templates/web/util/display-message.ftl"