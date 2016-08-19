.class public Lorg/eclipse/jetty/deploy/providers/ContextProvider;
.super Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;
.source "ContextProvider.java"


# instance fields
.field private _configurationManager:Lorg/eclipse/jetty/deploy/ConfigurationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/eclipse/jetty/deploy/providers/ContextProvider$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/deploy/providers/ContextProvider$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;-><init>(Ljava/io/FilenameFilter;)V

    .line 34
    return-void
.end method


# virtual methods
.method public createContextHandler(Lorg/eclipse/jetty/deploy/App;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 6
    .param p1, "app"    # Lorg/eclipse/jetty/deploy/App;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/App;->getOriginId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 56
    .local v1, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lorg/eclipse/jetty/deploy/util/FileID;->isXmlFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    new-instance v2, Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 62
    .local v2, "xmlc":Lorg/eclipse/jetty/xml/XmlConfiguration;
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Server"

    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/providers/ContextProvider;->getDeploymentManager()Lorg/eclipse/jetty/deploy/DeploymentManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/providers/ContextProvider;->getConfigurationManager()Lorg/eclipse/jetty/deploy/ConfigurationManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/providers/ContextProvider;->getConfigurationManager()Lorg/eclipse/jetty/deploy/ConfigurationManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/deploy/ConfigurationManager;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/handler/ContextHandler;

    return-object v3

    .line 68
    .end local v2    # "xmlc":Lorg/eclipse/jetty/xml/XmlConfiguration;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App resouce does not exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getConfigurationManager()Lorg/eclipse/jetty/deploy/ConfigurationManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ContextProvider;->_configurationManager:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    return-object v0
.end method

.method public setConfigurationManager(Lorg/eclipse/jetty/deploy/ConfigurationManager;)V
    .locals 0
    .param p1, "configurationManager"    # Lorg/eclipse/jetty/deploy/ConfigurationManager;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/providers/ContextProvider;->_configurationManager:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    .line 50
    return-void
.end method
