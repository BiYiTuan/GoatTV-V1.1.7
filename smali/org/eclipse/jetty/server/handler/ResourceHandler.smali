.class public Lorg/eclipse/jetty/server/handler/ResourceHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "ResourceHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _aliases:Z

.field _baseResource:Lorg/eclipse/jetty/util/resource/Resource;

.field _cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field _context:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field _defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field _directory:Z

.field _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field _stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "index.html"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 63
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 72
    return-void
.end method


# virtual methods
.method protected doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    if-eqz v1, :cond_1

    .line 460
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p3, v2, v1}, Lorg/eclipse/jetty/util/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "listing":Ljava/lang/String;
    const-string v1, "text/html; charset=UTF-8"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 462
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    .end local v0    # "listing":Ljava/lang/String;
    :goto_1
    return-void

    .line 460
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 465
    :cond_1
    const/16 v1, 0x193

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_1
.end method

.method protected doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 478
    if-eqz p3, :cond_0

    .line 479
    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 481
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v1

    .line 483
    .local v1, "length":J
    instance-of v3, p1, Lorg/eclipse/jetty/server/Response;

    if-eqz v3, :cond_3

    .line 485
    check-cast p1, Lorg/eclipse/jetty/server/Response;

    .end local p1    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 487
    .local v0, "fields":Lorg/eclipse/jetty/http/HttpFields;
    cmp-long v3, v1, v4

    if-lez v3, :cond_1

    .line 488
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v3, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 490
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v3, :cond_2

    .line 491
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 502
    .end local v0    # "fields":Lorg/eclipse/jetty/http/HttpFields;
    :cond_2
    :goto_0
    return-void

    .line 495
    .restart local p1    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_3
    cmp-long v3, v1, v4

    if-lez v3, :cond_4

    .line 496
    const-string v3, "Content-Length"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v3, :cond_2

    .line 499
    const-string v3, "Cache-Control"

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 132
    .local v0, "scontext":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 134
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    .line 137
    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    if-nez v1, :cond_2

    invoke-static {}, Lorg/eclipse/jetty/util/resource/FileResource;->getCheckAliases()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Alias checking disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 141
    return-void
.end method

.method public getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 267
    if-eqz p1, :cond_0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    :cond_0
    new-instance v2, Ljava/net/MalformedURLException;

    invoke-direct {v2, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 271
    .local v0, "base":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v0, :cond_4

    .line 273
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-nez v3, :cond_3

    .line 290
    :cond_2
    :goto_0
    return-object v2

    .line 275
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 282
    :cond_4
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v4, "javax.servlet.include.request_uri"

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 299
    .local v0, "included":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    const-string v4, "javax.servlet.include.servlet_path"

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .local v3, "servletPath":Ljava/lang/String;
    const-string v4, "javax.servlet.include.path_info"

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, "pathInfo":Ljava/lang/String;
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 306
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    .line 316
    :cond_0
    :goto_1
    invoke-static {v3, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "pathInContext":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    return-object v4

    .line 298
    .end local v0    # "included":Ljava/lang/Boolean;
    .end local v1    # "pathInContext":Ljava/lang/String;
    .end local v2    # "pathInfo":Ljava/lang/String;
    .end local v3    # "servletPath":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 312
    .restart local v0    # "included":Ljava/lang/Boolean;
    :cond_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v3

    .line 313
    .restart local v3    # "servletPath":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pathInfo":Ljava/lang/String;
    goto :goto_1
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStylesheet()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 217
    :goto_0
    return-object v1

    .line 205
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v1, :cond_1

    .line 209
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/jetty-dir.css"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected getWelcome(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3
    .param p1, "directory"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 338
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 339
    .local v1, "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    .end local v1    # "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v1

    .line 336
    .restart local v1    # "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 17
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v15, 0x0

    .line 357
    .local v15, "skipContentBody":Z
    const-string v5, "GET"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 359
    const-string v5, "HEAD"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 362
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 365
    :cond_2
    const/4 v15, 0x1

    .line 368
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 370
    .local v3, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 372
    :cond_4
    const-string v5, "/jetty-dir.css"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 374
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getStylesheet()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 375
    if-eqz v3, :cond_0

    .line 377
    const-string v5, "text/css"

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 387
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    if-nez v5, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 389
    sget-object v5, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " aliased to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_6
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 394
    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 396
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 398
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 400
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getWelcome(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v16

    .line 405
    .local v16, "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 406
    move-object/from16 v3, v16

    .line 416
    .end local v16    # "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_9
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v12

    .line 417
    .local v12, "last_modified":J
    const-wide/16 v5, 0x0

    cmp-long v5, v12, v5

    if-lez v5, :cond_b

    .line 419
    const-string v5, "If-Modified-Since"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v10

    .line 420
    .local v10, "if_modified":J
    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-lez v5, :cond_b

    const-wide/16 v5, 0x3e8

    div-long v5, v12, v5

    const-wide/16 v7, 0x3e8

    div-long v7, v10, v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_b

    .line 422
    const/16 v5, 0x130

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto/16 :goto_0

    .line 409
    .end local v10    # "if_modified":J
    .end local v12    # "last_modified":J
    .restart local v16    # "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 410
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_0

    .line 427
    .end local v16    # "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v12    # "last_modified":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    .line 428
    .local v14, "mime":Lorg/eclipse/jetty/io/Buffer;
    if-nez v14, :cond_c

    .line 429
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    .line 432
    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v5}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V

    .line 433
    const-string v5, "Last-Modified"

    move-object/from16 v0, p4

    invoke-interface {v0, v5, v12, v13}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 434
    if-nez v15, :cond_0

    .line 437
    const/4 v4, 0x0

    .line 438
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 442
    :goto_2
    instance-of v5, v4, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v5, :cond_e

    .line 445
    check-cast v4, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .end local v4    # "out":Ljava/io/OutputStream;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 432
    :cond_d
    const/4 v5, 0x0

    goto :goto_1

    .line 439
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Lorg/eclipse/jetty/io/WriterOutputStream;

    .end local v4    # "out":Ljava/io/OutputStream;
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/eclipse/jetty/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 450
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :cond_e
    const-wide/16 v5, 0x0

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_0
.end method

.method public isAliases()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    return v0
.end method

.method public isDirectoriesListed()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    return v0
.end method

.method public setAliases(Z)V
    .locals 0
    .param p1, "aliases"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    .line 106
    return-void
.end method

.method public setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "base"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 173
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 259
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 260
    return-void

    .line 259
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDirectoriesListed(Z)V
    .locals 0
    .param p1, "directory"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    .line 124
    return-void
.end method

.method public setMimeTypes(Lorg/eclipse/jetty/http/MimeTypes;)V
    .locals 0
    .param p1, "mimeTypes"    # Lorg/eclipse/jetty/http/MimeTypes;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 84
    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceBase"    # Ljava/lang/String;

    .prologue
    .line 183
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setStylesheet(Ljava/lang/String;)V
    .locals 5
    .param p1, "stylesheet"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 229
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 230
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find custom stylesheet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0
    .param p1, "welcomeFiles"    # [Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 331
    return-void
.end method
