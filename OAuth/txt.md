
# OAuth notes

The full documentation of The OAuth 2.0 Authorization Framework is in 
[RFC 6749](https://tools.ietf.org/html/rfc6749)

   The OAuth 2.0 authorization framework enables a third-party
   application to obtain limited access to an HTTP service, either on
   behalf of a resource owner by orchestrating an approval interaction
   between the resource owner and the HTTP service, or by allowing the
   third-party application to obtain access on its own behalf.

## **Concepts**

|         Concept                   |         Description               |
|--                                 |--                                 |
| PKCE - Proof key for code echange | One time exchange token           | 
| Front channel                     | 
| Back channel                      | Https
| Authorization                     |
| Authentification                  |
|

## **Roles**

|||
|---------------------------|------------------------------------               |  
| Aplication                | An application making protected resource requests on behalf of the resource owner and with its authorization.  Theterm "client" does not imply any particular implementation characteristics (e.g., whether the application executeson a server, a desktop, or other devices).      |
| Client                    | User + User agent, it's just an abstraction       |
| End user   |  Person who is resource ownder                                    |  
| Authorization server      | The server issuing access tokens to the client after successfully authenticating the resource owner and obtaining authorization.                                      |
| Resource Server           | The server hosting the protected resources, capable of accepting and responding to protected resource requests using access tokens.  
|Resource owner             | An entity capable of granting access to a protected resource.  When the resource owner is a person, it is referred to as an end-user.                                   |
| User Agent                | interface used by user (browser, mobile app, etc) |  
|'|

## **Protocol Flow**

``` text
     +--------+                               +---------------+
     |        |--(A)- Authorization Request ->|   Resource    |
     |        |                               |     Owner     |
     |        |<-(B)-- Authorization Grant ---|               |
     |        |                               +---------------+
     |        |
     |        |                               +---------------+
     |        |--(C)-- Authorization Grant -->| Authorization |
     | Client |                               |     Server    |
     |        |<-(D)----- Access Token -------|               |
     |        |                               +---------------+
     |        |
     |        |                               +---------------+
     |        |--(E)----- Access Token ------>|    Resource   |
     |        |                               |     Server    |
     |        |<-(F)--- Protected Resource ---|               |
     +--------+                               +---------------+
```

   (A)  The client requests authorization from the resource owner.  
        The authorization request can be made directly to the resource owner (as shown), or **preferably indirectly** via the authorization server as an intermediary.

   (B)  The client receives an authorization grant, which is a credential representing the resource owner's authorization, expressed using one of four grant types defined in this specification or using an extension grant type.  
        The authorization grant type depends on the method used by the client to request authorization and the types supported by the authorization server.

   (C)  The client requests an access token by authenticating with the
        authorization server and presenting the authorization grant.

   (D)  The authorization server authenticates the client and validates
        the authorization grant, and if valid, issues an access token.  
  
   (E)  The client requests the protected resource from the resource
        server and authenticates by presenting the access token.

   (F)  The resource server validates the access token, and if valid,
        serves the request.  

## **Authorization Grant**

Credential representing the resource owner's authorization (to access its protected resources) used by the client to obtain an access token.  
This specification defines four grant types:

- Authorization code,
- Implicit,
- Resource owner password credentials, and client credentials  
- as well as an extensibility mechanism for defining additional types.

### **Authorization Code**

obtained by using an authorization server as an intermediary between the client and resource owner

### **Implicit**

The client is issued an access token directly (as the result of the resource owner authorization)  
Implicit grants improve the responsiveness and efficiency,  However, this convenience should be weighed against the security implications

### **Authorization Grant -  Resource Owner Password Credentials**

The resource owner password credentials (i.e., username and password) can be used directly as an authorization grant to obtain an access token.


### **Authorization Grant - Client Credentials**

The client credentials (or other forms of client authentication) can be used as an authorization grant when the authorization scope is limited to the protected resources under the control of the client, or to protected resources previously arranged with the authorization server.
