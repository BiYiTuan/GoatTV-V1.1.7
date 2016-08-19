.class public Lorg/eclipse/jetty/client/webdav/WebdavListener;
.super Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.source "WebdavListener.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field private _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field private _needIntercept:Z

.field private _requestComplete:Z

.field private _responseComplete:Z

.field private _webdavEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 3
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;
    .param p2, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;-><init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V

    .line 53
    iput-object p1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 54
    iput-object p2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 57
    const-string v0, "PUT"

    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-boolean v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_webdavEnabled:Z

    .line 61
    :cond_0
    return-void
.end method

.method private checkExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 247
    if-nez p1, :cond_0

    .line 249
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "have failed miserably"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    :goto_0
    return v2

    .line 253
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/client/webdav/PropfindExchange;

    invoke-direct {v1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;-><init>()V

    .line 254
    .local v1, "propfindExchange":Lorg/eclipse/jetty/client/webdav/PropfindExchange;
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 255
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setMethod(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 257
    new-instance v3, Lorg/eclipse/jetty/client/security/SecurityListener;

    iget-object v4, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v3, v4, v1}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 258
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setConfigureListeners(Z)V

    .line 259
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setRequestURI(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 265
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->waitForDone()I

    .line 267
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->exists()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ie":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkWebdavSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 304
    new-instance v1, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;

    invoke-direct {v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;-><init>()V

    .line 305
    .local v1, "supportedExchange":Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 306
    const-string v3, "OPTIONS"

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setMethod(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 308
    new-instance v3, Lorg/eclipse/jetty/client/security/SecurityListener;

    iget-object v4, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v3, v4, v1}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 309
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setConfigureListeners(Z)V

    .line 310
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setRequestURI(Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 316
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->waitTilCompletion()V

    .line 317
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->isWebdavSupported()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 322
    :goto_0
    return v2

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "ie":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private makeCollection(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 278
    new-instance v1, Lorg/eclipse/jetty/client/webdav/MkcolExchange;

    invoke-direct {v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;-><init>()V

    .line 279
    .local v1, "mkcolExchange":Lorg/eclipse/jetty/client/webdav/MkcolExchange;
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MKCOL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HTTP/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setMethod(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 282
    new-instance v3, Lorg/eclipse/jetty/client/security/SecurityListener;

    iget-object v4, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v3, v4, v1}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 283
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setConfigureListeners(Z)V

    .line 284
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setRequestURI(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 290
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->waitForDone()I

    .line 292
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 297
    :goto_0
    return v2

    .line 294
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ie":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resolveCollectionIssues()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v6, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "uri":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getURI()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "uriCollection":[Ljava/lang/String;
    array-length v0, v5

    .line 218
    .local v0, "checkNum":I
    const/4 v3, 0x0

    .line 220
    .local v3, "rewind":I
    invoke-static {v4}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "parentUri":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->checkExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 223
    add-int/lit8 v3, v3, 0x1

    .line 224
    invoke-static {v2}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->checkWebdavSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v0, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->makeCollection(Ljava/lang/String;)Z

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v0, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 239
    .end local v1    # "i":I
    :cond_1
    const/4 v6, 0x0

    .line 242
    :goto_2
    return v6

    .restart local v1    # "i":I
    :cond_2
    const/4 v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onRequestComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    .line 159
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    if-eqz v1, :cond_3

    .line 161
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    if-eqz v1, :cond_1

    .line 166
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->resolveCollectionIssues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 169
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    .line 172
    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 199
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 179
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "WebdavListener:Complete:IOException: might not be dealing with dav server, delegate"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0

    .line 190
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    sget-object v1, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "WebdavListener:Not ready, calling super"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0
.end method

.method public onResponseComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 109
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    .line 110
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    if-eqz v1, :cond_3

    .line 112
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    if-eqz v1, :cond_1

    .line 117
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->resolveCollectionIssues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 120
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    .line 123
    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 151
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegationResult(Z)V

    .line 129
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 131
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "WebdavListener:Complete:IOException: might not be dealing with dav server, delegate"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0

    .line 142
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    sget-object v1, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "WebdavListener:Not ready, calling super"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0

    .line 149
    :cond_3
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0
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

    .line 66
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_webdavEnabled:Z

    if-nez v0, :cond_0

    .line 68
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    .line 69
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 104
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebdavListener:Response Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_1
    const/16 v0, 0x193

    if-eq p2, v0, :cond_2

    const/16 v0, 0x199

    if-ne p2, v0, :cond_6

    .line 80
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_webdavEnabled:Z

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "WebdavListener:Response Status: dav enabled, taking a stab at resolving put issue"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_3
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 85
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    .line 103
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 89
    :cond_4
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "WebdavListener:Response Status: Webdav Disabled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_5
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 92
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 93
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    goto :goto_1

    .line 98
    :cond_6
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    .line 99
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 100
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    goto :goto_1
.end method
