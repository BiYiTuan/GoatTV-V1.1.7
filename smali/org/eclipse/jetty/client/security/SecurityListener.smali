.class public Lorg/eclipse/jetty/client/security/SecurityListener;
.super Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.source "SecurityListener.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _attempts:I

.field private _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field private _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field private _needIntercept:Z

.field private _requestComplete:Z

.field private _responseComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/client/security/SecurityListener;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;
    .param p2, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    .line 54
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;-><init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    .line 55
    iput-object p1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 56
    iput-object p2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 57
    return-void
.end method


# virtual methods
.method public onRequestComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 198
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    if-eqz v0, :cond_3

    .line 200
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestComplete, Both complete: Resending from onResponseComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 205
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 206
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 207
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 208
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestComplete, Response not yet complete onRequestComplete, calling super for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0

    .line 219
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestComplete, delegating to super with Request complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0
.end method

.method public onResponseComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 230
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    if-eqz v0, :cond_3

    .line 232
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseComplete, Both complete: Resending from onResponseComplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 237
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 238
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 239
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseComplete, Request not yet complete from onResponseComplete,  calling super "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0

    .line 252
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResponseComplete, delegating to super with Request complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 11
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 145
    sget-object v7, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    sget-object v7, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecurityListener:Header: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/security/SecurityListener;->isDelegatingResponses()Z

    move-result v7

    if-nez v7, :cond_1

    .line 151
    sget-object v7, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v7, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 152
    .local v2, "header":I
    packed-switch v2, :pswitch_data_0

    .line 189
    .end local v2    # "header":I
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 190
    return-void

    .line 157
    .restart local v2    # "header":I
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "authString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/security/SecurityListener;->scrapeAuthenticationType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/security/SecurityListener;->scrapeAuthenticationDetails(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 162
    .local v1, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "/"

    .line 163
    .local v3, "pathSpec":Ljava/lang/String;
    iget-object v7, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpClient;->getRealmResolver()Lorg/eclipse/jetty/client/security/RealmResolver;

    move-result-object v5

    .line 165
    .local v5, "realmResolver":Lorg/eclipse/jetty/client/security/RealmResolver;
    if-eqz v5, :cond_1

    .line 170
    const-string v7, "realm"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-interface {v5, v7, v8, v3}, Lorg/eclipse/jetty/client/security/RealmResolver;->getRealm(Ljava/lang/String;Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;)Lorg/eclipse/jetty/client/security/Realm;

    move-result-object v4

    .line 172
    .local v4, "realm":Lorg/eclipse/jetty/client/security/Realm;
    if-nez v4, :cond_2

    .line 174
    sget-object v8, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown Security Realm: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v7, "realm"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v8, v7, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_2
    const-string v7, "digest"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 178
    iget-object v7, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    const-string v8, "/"

    new-instance v9, Lorg/eclipse/jetty/client/security/DigestAuthentication;

    invoke-direct {v9, v4, v1}, Lorg/eclipse/jetty/client/security/DigestAuthentication;-><init>(Lorg/eclipse/jetty/client/security/Realm;Ljava/util/Map;)V

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/client/HttpDestination;->addAuthorization(Ljava/lang/String;Lorg/eclipse/jetty/client/security/Authentication;)V

    goto :goto_0

    .line 181
    :cond_3
    const-string v7, "basic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    iget-object v7, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    new-instance v8, Lorg/eclipse/jetty/client/security/BasicAuthentication;

    invoke-direct {v8, v4}, Lorg/eclipse/jetty/client/security/BasicAuthentication;-><init>(Lorg/eclipse/jetty/client/security/Realm;)V

    invoke-virtual {v7, v3, v8}, Lorg/eclipse/jetty/client/HttpDestination;->addAuthorization(Ljava/lang/String;Lorg/eclipse/jetty/client/security/Authentication;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 5
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityListener:Response Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    const/16 v0, 0x191

    if-ne p2, v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->maxRetries()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 128
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 129
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    .line 137
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 138
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 134
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 135
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    goto :goto_0
.end method

.method public onRetry()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 261
    iget v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    .line 262
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 263
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 264
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 265
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 266
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    .line 267
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRetry()V

    .line 268
    return-void
.end method

.method protected scrapeAuthenticationDetails(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "authString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "authenticationDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v4, "strtok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "token":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "pair":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 102
    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "itemName":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "itemValue":Ljava/lang/String;
    invoke-static {v2}, Lorg/eclipse/jetty/util/StringUtil;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    .end local v1    # "itemName":Ljava/lang/String;
    .end local v2    # "itemValue":Ljava/lang/String;
    :cond_0
    sget-object v6, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecurityListener: missed scraping authentication details - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    .end local v3    # "pair":[Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected scrapeAuthenticationType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "authString"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "authType":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 76
    .end local v1    # "authType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "authResponse":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "authType":Ljava/lang/String;
    goto :goto_0
.end method
