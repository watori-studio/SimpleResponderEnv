import responder

api = responder.API()

@api.route("/hello")
def hello_world(req, resp):
    resp.text = "Hello root Page"

if __name__ == '__main__':
    api.run(address='0.0.0.0', port=5000)