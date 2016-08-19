.class public Lorg/eclipse/jetty/servlet/DefaultServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "DefaultServlet.java"

# interfaces
.implements Lorg/eclipse/jetty/util/resource/ResourceFactory;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final serialVersionUID:J = 0x446c8213da929ba9L


# instance fields
.field private _acceptRanges:Z

.field private _cache:Lorg/eclipse/jetty/server/ResourceCache;

.field private _cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _dirAllowed:Z

.field private _gzip:Z

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _pathInfoOnly:Z

.field private _redirectWelcome:Z

.field private _relativeResourceBase:Ljava/lang/String;

.field private _resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

.field private _servletContext:Ljavax/servlet/ServletContext;

.field private _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field private _useFileMappedBuffer:Z

.field private _welcomeExactServlets:Z

.field private _welcomeServlets:Z

.field private _welcomes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lorg/eclipse/jetty/servlet/DefaultServlet;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 142
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 143
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 144
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 145
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 146
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 147
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 148
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    .line 156
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return-void
.end method

.method private getInitBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # Z

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, p2

    .line 327
    :goto_0
    return v1

    :cond_1
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getInitInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # I

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 342
    .end local p2    # "dft":I
    :cond_1
    return p2
.end method

.method private getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pathInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 634
    const/4 v4, 0x0

    .line 653
    :cond_0
    :goto_0
    return-object v4

    .line 636
    :cond_1
    const/4 v4, 0x0

    .line 637
    .local v4, "welcome_servlet":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 639
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "welcome_in_context":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 641
    .local v2, "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 642
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v4, v5, v1

    goto :goto_0

    .line 644
    :cond_2
    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v5, :cond_5

    :cond_3
    if-nez v4, :cond_5

    .line 646
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v5, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 647
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eq v5, v6, :cond_5

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 649
    :cond_4
    move-object v4, v3

    .line 637
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private hasDefinedRange(Ljava/util/Enumeration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "reqRanges":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache;->flushCache()V

    .line 1025
    :cond_0
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    .line 1026
    return-void
.end method

.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 27
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    const/16 v25, 0x0

    .line 391
    .local v25, "servletPath":Ljava/lang/String;
    const/16 v23, 0x0

    .line 392
    .local v23, "pathInfo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 393
    .local v10, "reqRanges":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string v4, "javax.servlet.include.request_uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 394
    .local v18, "included":Ljava/lang/Boolean;
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 396
    const-string v4, "javax.servlet.include.servlet_path"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "servletPath":Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 397
    .restart local v25    # "servletPath":Ljava/lang/String;
    const-string v4, "javax.servlet.include.path_info"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "pathInfo":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 398
    .restart local v23    # "pathInfo":Ljava/lang/String;
    if-nez v25, :cond_0

    .line 400
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v25

    .line 401
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v23

    .line 416
    :cond_0
    :goto_1
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 417
    .local v21, "pathInContext":Ljava/lang/String;
    if-nez v23, :cond_1

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v23

    .end local v23    # "pathInfo":Ljava/lang/String;
    :cond_1
    const-string v4, "/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    .line 420
    .local v16, "endsWithSlash":Z
    const/16 v22, 0x0

    .line 421
    .local v22, "pathInContextGz":Ljava/lang/String;
    const/16 v17, 0x0

    .line 422
    .local v17, "gzip":Z
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    if-eqz v4, :cond_2

    if-nez v10, :cond_2

    if-nez v16, :cond_2

    .line 424
    const-string v4, "Accept-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 425
    .local v11, "accept":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v4, "gzip"

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 426
    const/16 v17, 0x1

    .line 430
    .end local v11    # "accept":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .line 431
    .local v8, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v9, 0x0

    .line 436
    .local v9, "content":Lorg/eclipse/jetty/http/HttpContent;
    if-eqz v17, :cond_4

    .line 438
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v4, :cond_c

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 450
    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 452
    :cond_3
    const/16 v17, 0x0

    .line 453
    const/16 v22, 0x0

    .line 458
    :cond_4
    if-nez v17, :cond_28

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v4, :cond_e

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    move-object v13, v9

    .line 469
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .local v13, "content":Lorg/eclipse/jetty/http/HttpContent;
    :goto_3
    :try_start_1
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 470
    sget-object v5, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " resource="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v13, :cond_10

    const-string v4, " content"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v4, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_13

    .line 475
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 476
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 570
    :catch_0
    move-exception v15

    move-object v9, v13

    .line 572
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    :try_start_2
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EXCEPTION "

    invoke-interface {v4, v5, v15}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 573
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 574
    const/16 v4, 0x1f4

    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 578
    :cond_7
    if-eqz v9, :cond_25

    .line 579
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    .line 584
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    :goto_6
    return-void

    .line 393
    .end local v8    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .end local v16    # "endsWithSlash":Z
    .end local v17    # "gzip":Z
    .end local v18    # "included":Ljava/lang/Boolean;
    .end local v21    # "pathInContext":Ljava/lang/String;
    .end local v22    # "pathInContextGz":Ljava/lang/String;
    .restart local v23    # "pathInfo":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 406
    .restart local v18    # "included":Ljava/lang/Boolean;
    :cond_a
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 407
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    if-eqz v4, :cond_b

    const-string v25, "/"

    .line 408
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v23

    .line 411
    const-string v4, "Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v10

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/eclipse/jetty/servlet/DefaultServlet;->hasDefinedRange(Ljava/util/Enumeration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 407
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v25

    goto :goto_7

    .line 446
    .end local v23    # "pathInfo":Ljava/lang/String;
    .restart local v8    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v16    # "endsWithSlash":Z
    .restart local v17    # "gzip":Z
    .restart local v21    # "pathInContext":Ljava/lang/String;
    .restart local v22    # "pathInContextGz":Ljava/lang/String;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v9

    .line 447
    if-nez v9, :cond_d

    const/4 v8, 0x0

    :goto_8
    goto/16 :goto_2

    :cond_d
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    goto :goto_8

    .line 464
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v9

    .line 465
    if-nez v9, :cond_f

    const/4 v8, 0x0

    :goto_9
    move-object v13, v9

    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_3

    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_f
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    goto :goto_9

    .line 470
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_10
    :try_start_4
    const-string v4, ""

    goto/16 :goto_4

    .line 477
    :cond_11
    const/16 v4, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v13

    .line 578
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_12
    :goto_a
    if-eqz v9, :cond_24

    .line 579
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    goto :goto_6

    .line 479
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_13
    :try_start_5
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_18

    .line 481
    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_15

    .line 483
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v24

    .line 484
    .local v24, "q":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 485
    if-eqz v24, :cond_14

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_14

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 487
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v4}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    move-object v9, v13

    .line 488
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto :goto_a

    .line 492
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .end local v24    # "q":Ljava/lang/String;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_15
    if-nez v13, :cond_27

    .line 493
    new-instance v9, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getBufferSize()I

    move-result v5

    invoke-direct {v9, v8, v4, v5}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 495
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :goto_b
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 497
    :cond_16
    if-eqz v17, :cond_17

    .line 499
    const-string v4, "Content-Encoding"

    const-string v5, "gzip"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljavax/servlet/ServletContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 501
    .local v19, "mt":Ljava/lang/String;
    if-eqz v19, :cond_17

    .line 502
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 504
    .end local v19    # "mt":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_a

    .line 570
    :catch_1
    move-exception v15

    goto/16 :goto_5

    .line 510
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_18
    const/16 v26, 0x0

    .line 512
    .local v26, "welcome":Ljava/lang/String;
    if-eqz v16, :cond_19

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    const-string v4, "org.eclipse.jetty.server.nullPathInfo"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 514
    :cond_19
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v12

    .line 515
    .local v12, "buf":Ljava/lang/StringBuffer;
    monitor-enter v12
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 517
    :try_start_8
    const-string v4, ";"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    .line 518
    .local v20, "param":I
    if-gez v20, :cond_1b

    .line 519
    const/16 v4, 0x2f

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 522
    :goto_c
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v24

    .line 523
    .restart local v24    # "q":Ljava/lang/String;
    if-eqz v24, :cond_1a

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 525
    const/16 v4, 0x3f

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 526
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 529
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 530
    monitor-exit v12

    move-object v9, v13

    .line 531
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_a

    .line 521
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .end local v24    # "q":Ljava/lang/String;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_1b
    const/16 v4, 0x2f

    move/from16 v0, v20

    invoke-virtual {v12, v0, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 530
    .end local v20    # "param":I
    :catchall_0
    move-exception v4

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 578
    .end local v12    # "buf":Ljava/lang/StringBuffer;
    .end local v26    # "welcome":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v9, v13

    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :goto_d
    if-eqz v9, :cond_26

    .line 579
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    .line 581
    :cond_1c
    :goto_e
    throw v4

    .line 533
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v26    # "welcome":Ljava/lang/String;
    :cond_1d
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_22

    .line 535
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "welcome={}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v26, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    if-eqz v4, :cond_1f

    .line 539
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 540
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v24

    .line 541
    .restart local v24    # "q":Ljava/lang/String;
    if-eqz v24, :cond_1e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v5}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    :goto_f
    move-object v9, v13

    .line 545
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_a

    .line 544
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v4}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_f

    .line 549
    .end local v24    # "q":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v14

    .line 550
    .local v14, "dispatcher":Ljavax/servlet/RequestDispatcher;
    if-eqz v14, :cond_20

    .line 552
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 553
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    :cond_20
    :goto_10
    move-object v9, v13

    .line 560
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_a

    .line 556
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_21
    const-string v4, "org.eclipse.jetty.server.welcome"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v4, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_10

    .line 564
    .end local v14    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    :cond_22
    new-instance v9, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-direct {v9, v8, v4}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 565
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 566
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_a

    .line 578
    .end local v26    # "welcome":Ljava/lang/String;
    :catchall_2
    move-exception v4

    goto/16 :goto_d

    .line 580
    :cond_24
    if-eqz v8, :cond_8

    .line 581
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_6

    .line 580
    .restart local v15    # "e":Ljava/lang/IllegalArgumentException;
    :cond_25
    if-eqz v8, :cond_8

    .line 581
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_6

    .line 580
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    :cond_26
    if-eqz v8, :cond_1c

    .line 581
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_e

    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_27
    move-object v9, v13

    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_b

    :cond_28
    move-object v13, v9

    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_3
.end method

.method protected doOptions(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    const-string v0, "Allow"

    const-string v1, "GET,HEAD,POST,OPTIONS"

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method protected doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 598
    return-void
.end method

.method protected doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 608
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.eclipse.jetty.servlet.Default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 317
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 361
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v3, :cond_4

    .line 363
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 371
    :goto_0
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "/jetty-dir.css"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 382
    :cond_3
    return-object v1

    .line 367
    :cond_4
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v3, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 368
    .local v2, "u":Ljava/net/URL;
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 374
    .end local v2    # "u":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public init()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->initContextHandler(Ljavax/servlet/ServletContext;)Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 175
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "index.html"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "index.jsp"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 177
    :cond_0
    const-string v18, "acceptRanges"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 178
    const-string v18, "dirAllowed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 179
    const-string v18, "redirectWelcome"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 180
    const-string v18, "gzip"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 181
    const-string v18, "pathInfoOnly"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    .line 183
    const-string v18, "exact"

    const-string v19, "welcomeServlets"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 185
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 186
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 191
    :goto_0
    const-string v18, "aliases"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    const-string v19, "aliases"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAliases(Z)V

    .line 194
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v5

    .line 195
    .local v5, "aliases":Z
    if-nez v5, :cond_3

    invoke-static {}, Lorg/eclipse/jetty/util/resource/FileResource;->getCheckAliases()Z

    move-result v18

    if-nez v18, :cond_3

    .line 196
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "Alias checking disabled"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 189
    .end local v5    # "aliases":Z
    :cond_2
    const-string v18, "welcomeServlets"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    goto :goto_0

    .line 197
    .restart local v5    # "aliases":Z
    :cond_3
    if-eqz v5, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    move-object/from16 v18, v0

    const-string v19, "Aliases are enabled"

    invoke-interface/range {v18 .. v19}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 200
    :cond_4
    const-string v18, "useFileMappedBuffer"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    .line 202
    const-string v18, "relativeResourceBase"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    .line 204
    const-string v18, "resourceBase"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 205
    .local v15, "rb":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 208
    new-instance v18, Ljavax/servlet/UnavailableException;

    const-string v19, "resourceBase & relativeResourceBase"

    invoke-direct/range {v18 .. v19}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 209
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_6
    const-string v18, "stylesheet"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "css":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 222
    :try_start_1
    invoke-static {v7}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v18

    if-nez v18, :cond_7

    .line 225
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 229
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 231
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-string v19, "/jetty-dir.css"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :cond_8
    :goto_1
    const-string v18, "cacheControl"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 241
    .local v17, "t":Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 242
    new-instance v18, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 244
    :cond_9
    const-string v18, "resourceCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 245
    .local v16, "resourceCache":Ljava/lang/String;
    const-string v18, "maxCacheSize"

    const/16 v19, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v12

    .line 246
    .local v12, "max_cache_size":I
    const-string v18, "maxCachedFileSize"

    const/16 v19, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v13

    .line 247
    .local v13, "max_cached_file_size":I
    const-string v18, "maxCachedFiles"

    const/16 v19, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v14

    .line 248
    .local v14, "max_cached_files":I
    if-eqz v16, :cond_e

    .line 250
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_a

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_a

    const/16 v18, -0x2

    move/from16 v0, v18

    if-eq v14, v0, :cond_b

    .line 251
    :cond_a
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v19, "ignoring resource cache configuration, using resourceCache attribute"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 253
    :cond_c
    new-instance v18, Ljavax/servlet/UnavailableException;

    const-string v19, "resourceCache specified with resource bases"

    invoke-direct/range {v18 .. v19}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 210
    .end local v7    # "css":Ljava/lang/String;
    .end local v12    # "max_cache_size":I
    .end local v13    # "max_cached_file_size":I
    .end local v14    # "max_cached_files":I
    .end local v16    # "resourceCache":Ljava/lang/String;
    .end local v17    # "t":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 212
    .local v8, "e":Ljava/lang/Exception;
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v19, "EXCEPTION "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v18, Ljavax/servlet/UnavailableException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 234
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "css":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 236
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 254
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "max_cache_size":I
    .restart local v13    # "max_cached_file_size":I
    .restart local v14    # "max_cached_files":I
    .restart local v16    # "resourceCache":Ljava/lang/String;
    .restart local v17    # "t":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    .line 256
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v19, "Cache {}={}"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    if-lez v14, :cond_11

    .line 263
    new-instance v18, Lorg/eclipse/jetty/server/ResourceCache;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/server/ResourceCache;-><init>(Lorg/eclipse/jetty/server/ResourceCache;Lorg/eclipse/jetty/util/resource/ResourceFactory;Lorg/eclipse/jetty/http/MimeTypes;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    .line 265
    if-lez v12, :cond_f

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCacheSize(I)V

    .line 267
    :cond_f
    const/16 v18, -0x1

    move/from16 v0, v18

    if-lt v13, v0, :cond_10

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFileSize(I)V

    .line 269
    :cond_10
    const/16 v18, -0x1

    move/from16 v0, v18

    if-lt v14, v0, :cond_11

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFiles(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    const-class v19, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v18

    check-cast v18, Lorg/eclipse/jetty/servlet/ServletHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v6

    .local v6, "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_13

    aget-object v9, v6, v10

    .line 281
    .local v9, "h":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletInstance()Ljavax/servlet/Servlet;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_12

    .line 282
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 280
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 273
    .end local v6    # "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v9    # "h":Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_2
    move-exception v8

    .line 275
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v19, "EXCEPTION "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    new-instance v18, Ljavax/servlet/UnavailableException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 284
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    :cond_13
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 285
    sget-object v18, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "resource base = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_14
    return-void
.end method

.method protected initContextHandler(Ljavax/servlet/ServletContext;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 4
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 298
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 299
    .local v0, "scontext":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-nez v0, :cond_1

    .line 301
    instance-of v1, p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v1, :cond_0

    .line 302
    check-cast p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .end local p1    # "servletContext":Ljavax/servlet/ServletContext;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 308
    :goto_0
    return-object v1

    .line 304
    .restart local p1    # "servletContext":Ljavax/servlet/ServletContext;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The servletContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    goto :goto_0
.end method

.method protected passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z
    .locals 11
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p4, "content"    # Lorg/eclipse/jetty/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HEAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 666
    const-string v7, "If-Modified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "ifms":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 669
    if-eqz p4, :cond_0

    .line 671
    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    .line 672
    .local v6, "mdlm":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v6, :cond_0

    .line 674
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 676
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 677
    const/16 v7, 0x130

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 678
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 679
    const/4 v7, 0x0

    .line 717
    .end local v3    # "ifms":Ljava/lang/String;
    .end local v6    # "mdlm":Lorg/eclipse/jetty/io/Buffer;
    :goto_0
    return v7

    .line 684
    .restart local v3    # "ifms":Ljava/lang/String;
    :cond_0
    const-string v7, "If-Modified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v4

    .line 685
    .local v4, "ifmsl":J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-eqz v7, :cond_1

    .line 687
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long v9, v4, v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    .line 689
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 690
    const/16 v7, 0x130

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 691
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 692
    const/4 v7, 0x0

    goto :goto_0

    .line 698
    .end local v4    # "ifmsl":J
    :cond_1
    const-string v7, "If-Unmodified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    .line 700
    .local v0, "date":J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_3

    .line 702
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long v9, v0, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 704
    const/16 v7, 0x19c

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    const/4 v7, 0x0

    goto :goto_0

    .line 711
    .end local v0    # "date":J
    .end local v3    # "ifms":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 713
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 714
    const/16 v7, 0x190

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 715
    :cond_2
    throw v2

    .line 717
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method protected sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V
    .locals 40
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "include"    # Z
    .param p4, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p5, "content"    # Lorg/eclipse/jetty/http/HttpContent;
    .param p6, "reqRanges"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    if-nez p5, :cond_1

    .line 770
    const/16 v25, 0x0

    .line 771
    .local v25, "direct":Z
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v8

    .line 782
    .local v8, "content_length":J
    :goto_0
    const/4 v5, 0x0

    .line 786
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v5

    .line 789
    instance-of v4, v5, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v4, :cond_3

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jetty/server/HttpOutput;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/HttpOutput;->isWritten()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v37

    .line 799
    .local v37, "written":Z
    :goto_1
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-gez v4, :cond_c

    .line 802
    :cond_0
    if-eqz p3, :cond_4

    .line 804
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 949
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :goto_2
    return-void

    .line 775
    .end local v8    # "content_length":J
    .end local v25    # "direct":Z
    .end local v37    # "written":Z
    .restart local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v23

    .line 776
    .local v23, "connector":Lorg/eclipse/jetty/server/Connector;
    move-object/from16 v0, v23

    instance-of v4, v0, Lorg/eclipse/jetty/server/nio/NIOConnector;

    if-eqz v4, :cond_2

    move-object/from16 v4, v23

    check-cast v4, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface {v4}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v23

    instance-of v4, v0, Lorg/eclipse/jetty/server/ssl/SslConnector;

    if-nez v4, :cond_2

    const/16 v25, 0x1

    .line 777
    .restart local v25    # "direct":Z
    :goto_3
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v8

    .restart local v8    # "content_length":J
    goto :goto_0

    .line 776
    .end local v8    # "content_length":J
    .end local v25    # "direct":Z
    :cond_2
    const/16 v25, 0x0

    goto :goto_3

    .line 789
    .end local v23    # "connector":Lorg/eclipse/jetty/server/Connector;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v8    # "content_length":J
    .restart local v25    # "direct":Z
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isWritten()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v37

    goto :goto_1

    .line 793
    :catch_0
    move-exception v26

    .line 795
    .local v26, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Lorg/eclipse/jetty/io/WriterOutputStream;

    .end local v5    # "out":Ljava/io/OutputStream;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/eclipse/jetty/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    .line 796
    .restart local v5    # "out":Ljava/io/OutputStream;
    const/16 v37, 0x1

    .restart local v37    # "written":Z
    goto :goto_1

    .line 809
    .end local v26    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    if-eqz p5, :cond_8

    if-nez v37, :cond_8

    instance-of v4, v5, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v4, :cond_8

    .line 811
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/server/Response;

    if-eqz v4, :cond_5

    .line 813
    check-cast p2, Lorg/eclipse/jetty/server/Response;

    .end local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 814
    check-cast v5, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .end local v5    # "out":Ljava/io/OutputStream;
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 818
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_5
    if-eqz v25, :cond_6

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v22

    .line 819
    .local v22, "buffer":Lorg/eclipse/jetty/io/Buffer;
    :goto_4
    if-eqz v22, :cond_7

    .line 821
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 822
    check-cast v5, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .end local v5    # "out":Ljava/io/OutputStream;
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 818
    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_6
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v22

    goto :goto_4

    .line 826
    .restart local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 827
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 834
    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_8
    if-eqz v37, :cond_9

    const-wide/16 v6, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 837
    if-nez p5, :cond_a

    const/16 v22, 0x0

    .line 838
    .restart local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :goto_6
    if-eqz v22, :cond_b

    .line 839
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_9
    move-wide v6, v8

    .line 834
    goto :goto_5

    .line 837
    :cond_a
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v22

    goto :goto_6

    .line 841
    .restart local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_b
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 848
    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_c
    move-object/from16 v0, p6

    invoke-static {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;

    move-result-object v35

    .line 851
    .local v35, "ranges":Ljava/util/List;
    if-eqz v35, :cond_d

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 853
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 854
    const/16 v4, 0x1a0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 855
    const-string v4, "Content-Range"

    invoke-static {v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->to416HeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 863
    :cond_e
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_f

    .line 865
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 867
    .local v36, "singleSatisfiableRange":Lorg/eclipse/jetty/server/InclusiveByteRange;
    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v14

    .line 868
    .local v14, "singleLength":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v14, v15}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 869
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 870
    const-string v4, "Content-Range"

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v12

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-virtual/range {v10 .. v15}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 880
    .end local v14    # "singleLength":J
    .end local v36    # "singleSatisfiableRange":Lorg/eclipse/jetty/server/InclusiveByteRange;
    :cond_f
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 881
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    .line 882
    .local v32, "mimetype":Ljava/lang/String;
    new-instance v17, Lorg/eclipse/jetty/util/MultiPartOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lorg/eclipse/jetty/util/MultiPartOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 883
    .local v17, "multi":Lorg/eclipse/jetty/util/MultiPartOutputStream;
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 889
    const-string v4, "Request-Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 890
    const-string v24, "multipart/x-byteranges; boundary="

    .line 893
    .local v24, "ctp":Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v30

    .line 896
    .local v30, "in":Ljava/io/InputStream;
    const-wide/16 v33, 0x0

    .line 899
    .local v33, "pos":J
    const/16 v31, 0x0

    .line 900
    .local v31, "length":I
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 901
    .local v27, "header":[Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_8
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_12

    .line 903
    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 904
    .local v29, "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v27, v28

    .line 905
    move/from16 v0, v31

    int-to-long v6, v0

    if-lez v28, :cond_11

    const/4 v4, 0x2

    :goto_9
    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    const-string v10, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    const-string v10, "Content-Range"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    aget-object v10, v27, v28

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    int-to-long v10, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v12

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v38

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v31, v0

    .line 901
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 892
    .end local v24    # "ctp":Ljava/lang/String;
    .end local v27    # "header":[Ljava/lang/String;
    .end local v28    # "i":I
    .end local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    .end local v30    # "in":Ljava/io/InputStream;
    .end local v31    # "length":I
    .end local v33    # "pos":J
    :cond_10
    const-string v24, "multipart/byteranges; boundary="

    .restart local v24    # "ctp":Ljava/lang/String;
    goto/16 :goto_7

    .line 905
    .restart local v27    # "header":[Ljava/lang/String;
    .restart local v28    # "i":I
    .restart local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    .restart local v30    # "in":Ljava/io/InputStream;
    .restart local v31    # "length":I
    .restart local v33    # "pos":J
    :cond_11
    const/4 v4, 0x0

    goto :goto_9

    .line 913
    .end local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int v31, v31, v4

    .line 914
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 916
    const/16 v28, 0x0

    :goto_a
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_16

    .line 918
    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 919
    .restart local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Range: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v10, v27, v28

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->startPart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v18

    .line 922
    .local v18, "start":J
    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v20

    .line 923
    .local v20, "size":J
    if-eqz v30, :cond_15

    .line 926
    cmp-long v4, v18, v33

    if-gez v4, :cond_13

    .line 928
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    .line 929
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v30

    .line 930
    const-wide/16 v33, 0x0

    .line 932
    :cond_13
    cmp-long v4, v33, v18

    if-gez v4, :cond_14

    .line 934
    sub-long v6, v18, v33

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 935
    move-wide/from16 v33, v18

    .line 937
    :cond_14
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 938
    add-long v33, v33, v20

    .line 916
    :goto_b
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    :cond_15
    move-object/from16 v16, p4

    .line 942
    invoke-virtual/range {v16 .. v21}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_b

    .line 945
    .end local v18    # "start":J
    .end local v20    # "size":J
    .end local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    :cond_16
    if-eqz v30, :cond_17

    .line 946
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    .line 947
    :cond_17
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->close()V

    goto/16 :goto_2
.end method

.method protected sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p4, "pathInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x193

    const/4 v3, 0x1

    .line 728
    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    if-nez v4, :cond_0

    .line 730
    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 755
    :goto_0
    return-void

    .line 734
    :cond_0
    const/4 v1, 0x0

    .line 735
    .local v1, "data":[B
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-static {v4, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "base":Ljava/lang/String;
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    instance-of v4, v4, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_2

    .line 739
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v4, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    .line 743
    :cond_1
    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_3

    :goto_2
    invoke-virtual {p3, v0, v3}, Lorg/eclipse/jetty/util/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "dir":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 746
    const-string v3, "No directory"

    invoke-interface {p2, v6, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 740
    .end local v2    # "dir":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_1

    .line 741
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v4, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    goto :goto_1

    .line 743
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 751
    .restart local v2    # "dir":Ljava/lang/String;
    :cond_4
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 752
    const-string v3, "text/html; charset=UTF-8"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 753
    array-length v3, v1

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 754
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    goto :goto_0
.end method

.method protected writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V
    .locals 8
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "content"    # Lorg/eclipse/jetty/http/HttpContent;
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 956
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 957
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 959
    :cond_0
    instance-of v4, p1, Lorg/eclipse/jetty/server/Response;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 961
    check-cast v3, Lorg/eclipse/jetty/server/Response;

    .line 962
    .local v3, "r":Lorg/eclipse/jetty/server/Response;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 964
    .local v0, "fields":Lorg/eclipse/jetty/http/HttpFields;
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 965
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 973
    :cond_1
    :goto_0
    cmp-long v4, p3, v6

    if-eqz v4, :cond_2

    .line 974
    invoke-virtual {v3, p3, p4}, Lorg/eclipse/jetty/server/Response;->setLongContentLength(J)V

    .line 976
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 994
    .end local v0    # "fields":Lorg/eclipse/jetty/http/HttpFields;
    .end local v3    # "r":Lorg/eclipse/jetty/server/Response;
    :goto_1
    return-void

    .line 966
    .restart local v0    # "fields":Lorg/eclipse/jetty/http/HttpFields;
    .restart local v3    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_3
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 968
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v1

    .line 969
    .local v1, "lml":J
    cmp-long v4, v1, v6

    if-eqz v4, :cond_1

    .line 970
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v4, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    goto :goto_0

    .line 980
    .end local v0    # "fields":Lorg/eclipse/jetty/http/HttpFields;
    .end local v1    # "lml":J
    .end local v3    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v1

    .line 981
    .restart local v1    # "lml":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_5

    .line 982
    const-string v4, "Last-Modified"

    invoke-interface {p1, v4, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 984
    :cond_5
    cmp-long v4, p3, v6

    if-eqz v4, :cond_6

    .line 986
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, p3, v4

    if-gez v4, :cond_7

    .line 987
    long-to-int v4, p3

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 992
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 989
    :cond_7
    const-string v4, "Content-Length"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 1010
    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1013
    const-string v0, "Cache-Control"

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_1
    return-void
.end method

.method protected writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V
    .locals 2
    .param p1, "fields"    # Lorg/eclipse/jetty/http/HttpFields;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 1000
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->ACCEPT_RANGES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->BYTES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1003
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1004
    :cond_1
    return-void
.end method
