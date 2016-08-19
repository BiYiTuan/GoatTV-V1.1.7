.class public Lorg/eclipse/jetty/servlet/ServletHolder;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "ServletHolder.java"

# interfaces
.implements Lorg/eclipse/jetty/server/UserIdentity$Scope;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;,
        Lorg/eclipse/jetty/servlet/ServletHolder$Registration;,
        Lorg/eclipse/jetty/servlet/ServletHolder$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Ljavax/servlet/Servlet;",
        ">;",
        "Lorg/eclipse/jetty/server/UserIdentity$Scope;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NO_MAPPED_ROLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

.field private _forcedPath:Ljava/lang/String;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _initOnStartup:Z

.field private _initOrder:I

.field private _registration:Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

.field private _roleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _runAsRole:Ljava/lang/String;

.field private _runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

.field private transient _servlet:Ljavax/servlet/Servlet;

.field private transient _unavailable:J

.field private transient _unavailableEx:Ljavax/servlet/UnavailableException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/Holder;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/Holder;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 118
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/Holder;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 109
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/servlet/Servlet;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/Holder;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 91
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;)V
    .locals 1
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/Holder;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 101
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 102
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/servlet/ServletHolder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/servlet/ServletHolder;)Lorg/eclipse/jetty/servlet/ServletHolder$Config;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    return-object v0
.end method

.method private initServlet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 452
    .local v1, "old_run_as":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v2, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Ljavax/servlet/Servlet;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 454
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    if-nez v2, :cond_1

    .line 455
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 458
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1

    .line 463
    .end local v1    # "old_run_as":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-interface {v2, v3}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_3

    .line 490
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 492
    :cond_3
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljavax/servlet/UnavailableException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 468
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 469
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 470
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    .end local v0    # "e":Ljavax/servlet/UnavailableException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v3, :cond_4

    .line 490
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_4
    throw v2

    .line 472
    :catch_1
    move-exception v0

    .line 474
    .local v0, "e":Ljavax/servlet/ServletException;
    :try_start_2
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 475
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 476
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 477
    throw v0

    .line 474
    :cond_5
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 479
    .end local v0    # "e":Ljavax/servlet/ServletException;
    :catch_2
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 482
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 483
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 484
    new-instance v2, Ljavax/servlet/ServletException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private makeUnavailable(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 426
    instance-of v1, p1, Ljavax/servlet/UnavailableException;

    if-eqz v1, :cond_0

    .line 427
    check-cast p1, Ljavax/servlet/UnavailableException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 443
    :goto_0
    return-void

    .line 430
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    .line 431
    .local v0, "ctx":Ljavax/servlet/ServletContext;
    if-nez v0, :cond_1

    .line 432
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "unavailable"

    invoke-interface {v1, v2, p1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    :goto_1
    new-instance v1, Lorg/eclipse/jetty/servlet/ServletHolder$1;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/eclipse/jetty/servlet/ServletHolder$1;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;ILjava/lang/Throwable;)V

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 441
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 434
    :cond_1
    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private makeUnavailable(Ljavax/servlet/UnavailableException;)V
    .locals 6
    .param p1, "e"    # Ljavax/servlet/UnavailableException;

    .prologue
    const-wide/16 v4, -0x1

    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 410
    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 411
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result v0

    if-lez v0, :cond_2

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {v2}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0
.end method


# virtual methods
.method public checkServletType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v0, Ljavax/servlet/Servlet;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    :cond_0
    new-instance v0, Ljavax/servlet/UnavailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Servlet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a javax.servlet.Servlet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 171
    instance-of v4, p1, Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 173
    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 174
    .local v1, "sh":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-ne v1, p0, :cond_1

    move v2, v0

    .line 188
    .end local v1    # "sh":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_0
    :goto_0
    return v2

    .line 176
    .restart local v1    # "sh":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_1
    iget v4, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    if-lt v4, v5, :cond_0

    .line 178
    iget v4, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    if-le v4, v5, :cond_2

    move v2, v3

    .line 179
    goto :goto_0

    .line 181
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    iget-object v5, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "c":I
    :cond_3
    if-nez v0, :cond_4

    .line 183
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    iget-object v5, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 184
    :cond_4
    if-nez v0, :cond_5

    .line 185
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->hashCode()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-le v4, v5, :cond_6

    move v0, v2

    :cond_5
    :goto_1
    move v2, v0

    .line 186
    goto :goto_0

    :cond_6
    move v0, v3

    .line 185
    goto :goto_1
.end method

.method public destroyInstance(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 335
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 332
    check-cast v0, Ljavax/servlet/Servlet;

    .line 333
    .local v0, "servlet":Ljavax/servlet/Servlet;
    invoke-interface {v0}, Ljavax/servlet/Servlet;->destroy()V

    .line 334
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->destroyServlet(Ljavax/servlet/Servlet;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 262
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V

    .line 263
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->checkServletType()V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 271
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/security/IdentityService;->newRunAsToken(Ljava/lang/String;)Lorg/eclipse/jetty/security/RunAsToken;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    .line 274
    :cond_0
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 276
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v2, Ljavax/servlet/SingleThreadModel;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;Lorg/eclipse/jetty/servlet/ServletHolder$1;)V

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 279
    :cond_1
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-eqz v2, :cond_3

    .line 283
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :cond_3
    :goto_1
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ue":Ljavax/servlet/UnavailableException;
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    goto :goto_0

    .line 285
    .end local v1    # "ue":Ljavax/servlet/UnavailableException;
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 290
    :cond_4
    throw v0
.end method

.method public doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "old_run_as":Ljava/lang/Object;
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-eqz v2, :cond_1

    .line 304
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1

    .line 307
    .end local v1    # "old_run_as":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 320
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v2, :cond_2

    .line 321
    iput-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 323
    :cond_2
    iput-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 324
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_3
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForcedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    return v0
.end method

.method public getRegistration()Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    return-object v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public getRoleRefMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getServlet()Ljavax/servlet/Servlet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 345
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 347
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :cond_1
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 353
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v0, :cond_3

    .line 354
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V

    .line 355
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getServletInstance()Ljavax/servlet/Servlet;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    return-object v0
.end method

.method public getUnavailableException()Ljavax/servlet/UnavailableException;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    return-object v0
.end method

.method public getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 228
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 227
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "link":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method public handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 9
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljavax/servlet/UnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-nez v5, :cond_0

    .line 536
    new-instance v5, Ljavax/servlet/UnavailableException;

    const-string v6, "Servlet Not Initialized"

    invoke-direct {v5, v6}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 538
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 539
    .local v2, "servlet":Ljavax/servlet/Servlet;
    monitor-enter p0

    .line 541
    :try_start_0
    iget-wide v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-nez v5, :cond_2

    .line 542
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v2

    .line 543
    :cond_2
    if-nez v2, :cond_3

    .line 544
    new-instance v5, Ljavax/servlet/UnavailableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not instantiate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 545
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    const/4 v3, 0x1

    .line 549
    .local v3, "servlet_error":Z
    const/4 v1, 0x0

    .line 550
    .local v1, "old_run_as":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v4

    .line 554
    .local v4, "suspendable":Z
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 556
    const-string v5, "org.apache.catalina.jsp_file"

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    invoke-interface {p2, v5, v6}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    :cond_4
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v5, :cond_5

    .line 560
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getResolvedUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1

    .line 562
    .end local v1    # "old_run_as":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAsyncSupported()Z

    move-result v5

    if-nez v5, :cond_6

    .line 563
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 565
    :cond_6
    invoke-interface {v2, p2, p3}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_2
    .catch Ljavax/servlet/UnavailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 566
    const/4 v3, 0x0

    .line 575
    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 578
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v5, :cond_7

    .line 579
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 582
    :cond_7
    if-eqz v3, :cond_8

    .line 583
    const-string v5, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    :cond_8
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljavax/servlet/UnavailableException;
    :try_start_3
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 571
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 575
    .end local v0    # "e":Ljavax/servlet/UnavailableException;
    :catchall_1
    move-exception v5

    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 578
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v6, :cond_9

    .line 579
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 582
    :cond_9
    if-eqz v3, :cond_a

    .line 583
    const-string v6, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    throw v5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 387
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isSetInitOrder()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    return v0
.end method

.method protected newInstance()Ljavax/servlet/Servlet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 775
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    .line 776
    .local v1, "ctx":Ljavax/servlet/ServletContext;
    if-nez v1, :cond_0

    .line 777
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/Servlet;

    .line 778
    .end local v1    # "ctx":Ljavax/servlet/ServletContext;
    :goto_0
    return-object v3

    .restart local v1    # "ctx":Ljavax/servlet/ServletContext;
    :cond_0
    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    .end local v1    # "ctx":Ljavax/servlet/ServletContext;
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 780
    :catch_0
    move-exception v2

    .line 782
    .local v2, "se":Ljavax/servlet/ServletException;
    invoke-virtual {v2}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 783
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/InstantiationException;

    if-eqz v3, :cond_1

    .line 784
    check-cast v0, Ljava/lang/InstantiationException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 785
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v3, v0, Ljava/lang/IllegalAccessException;

    if-eqz v3, :cond_2

    .line 786
    check-cast v0, Ljava/lang/IllegalAccessException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 787
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    throw v2
.end method

.method public setForcedPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "forcedPath"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setInitOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 158
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    .line 159
    return-void
.end method

.method public setRunAsRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public declared-synchronized setServlet(Ljavax/servlet/Servlet;)V
    .locals 2
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 133
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v0, p1, Ljavax/servlet/SingleThreadModel;

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    .line 137
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 139
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
