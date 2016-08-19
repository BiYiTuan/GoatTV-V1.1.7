.class public Lorg/eclipse/jetty/deploy/ContextDeployer;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "ContextDeployer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

.field private _contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

.field private _contextsDir:Lorg/eclipse/jetty/util/resource/Resource;

.field private _currentDeployments:Ljava/util/Map;

.field private _recursive:Z

.field private _scanInterval:I

.field private _scanner:Lorg/eclipse/jetty/util/Scanner;

.field private _scannerListener:Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lorg/eclipse/jetty/deploy/ContextDeployer;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/ContextDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanInterval:I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    .line 88
    iput-boolean v2, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_recursive:Z

    .line 89
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 136
    sget-object v0, Lorg/eclipse/jetty/deploy/ContextDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "ContextDeployer is deprecated. Use ContextProvider"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lorg/eclipse/jetty/util/Scanner;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Scanner;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/deploy/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/deploy/ContextDeployer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->deploy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/deploy/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/deploy/ContextDeployer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->redeploy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/deploy/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/deploy/ContextDeployer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->undeploy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/eclipse/jetty/deploy/ContextDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private createContext(Ljava/lang/String;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 448
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 449
    const/4 v1, 0x0

    .line 465
    :cond_0
    :goto_0
    return-object v1

    .line 451
    :cond_1
    new-instance v3, Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/jetty/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 452
    .local v3, "xmlConfiguration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    invoke-virtual {v3}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Server"

    iget-object v6, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v4, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    if-eqz v4, :cond_2

    .line 454
    invoke-virtual {v3}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getProperties()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    invoke-interface {v5}, Lorg/eclipse/jetty/deploy/ConfigurationManager;->getProperties()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 456
    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jetty/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 459
    .local v1, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    iget-object v4, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/AttributesMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 461
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    iget-object v4, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0, v4}, Lorg/eclipse/jetty/util/AttributesMap;-><init>(Lorg/eclipse/jetty/util/AttributesMap;)V

    .line 462
    .local v0, "attributes":Lorg/eclipse/jetty/util/AttributesMap;
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/AttributesMap;->addAll(Lorg/eclipse/jetty/util/Attributes;)V

    .line 463
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    goto :goto_0
.end method

.method private deploy(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->createContext(Ljava/lang/String;)Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 350
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    sget-object v1, Lorg/eclipse/jetty/deploy/ContextDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deploy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 352
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->start()V

    .line 355
    :cond_0
    return-void
.end method

.method private redeploy(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->undeploy(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->deploy(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private undeploy(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 361
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    sget-object v1, Lorg/eclipse/jetty/deploy/ContextDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undeploy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->stop()V

    .line 365
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->removeHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 366
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextsDir:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No configuration dir specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    if-nez v0, :cond_1

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No context handler collection specified for deployer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextsDir:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setScanDir(Ljava/io/File;)V

    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->getScanInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setScanInterval(I)V

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-boolean v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_recursive:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setRecursive(Z)V

    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    new-instance v1, Lorg/eclipse/jetty/deploy/ContextDeployer$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/deploy/ContextDeployer$1;-><init>(Lorg/eclipse/jetty/deploy/ContextDeployer;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 413
    new-instance v0, Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;-><init>(Lorg/eclipse/jetty/deploy/ContextDeployer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scannerListener:Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;

    .line 414
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scannerListener:Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 415
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->start()V

    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/component/Container;->addBean(Ljava/lang/Object;)V

    .line 418
    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scannerListener:Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->removeListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->stop()V

    .line 431
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationDir()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextsDir:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getConfigurationManager()Lorg/eclipse/jetty/deploy/ConfigurationManager;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    return-object v0
.end method

.method public getContexts()Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    return-object v0
.end method

.method public getContextsDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextsDir:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextsDir:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->getConfigurationDir()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_recursive:Z

    return v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanInterval:I

    return v0
.end method

.method public isRecursive()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_recursive:Z

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public setConfigurationDir(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->setConfigurationDir(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 226
    return-void
.end method

.method public setConfigurationDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->setConfigurationDir(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 214
    return-void
.end method

.method public setConfigurationDir(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 2
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change hot deploy dir after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextsDir:Lorg/eclipse/jetty/util/resource/Resource;

    .line 239
    return-void
.end method

.method public setConfigurationManager(Lorg/eclipse/jetty/deploy/ConfigurationManager;)V
    .locals 0
    .param p1, "configMgr"    # Lorg/eclipse/jetty/deploy/ConfigurationManager;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    .line 281
    return-void
.end method

.method public setContexts(Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;)V
    .locals 2
    .param p1, "contexts"    # Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set Contexts after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    .line 161
    return-void
.end method

.method public setContextsDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_contextsDir:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->setConfigurationDir(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setRecursive(Z)V
    .locals 0
    .param p1, "recursive"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_recursive:Z

    .line 297
    return-void
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/ContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change scan interval after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    iput p1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer;->_scanInterval:I

    .line 174
    return-void
.end method
