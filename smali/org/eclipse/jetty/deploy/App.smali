.class public Lorg/eclipse/jetty/deploy/App;
.super Ljava/lang/Object;
.source "App.java"


# instance fields
.field private _context:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private final _manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

.field private final _originId:Ljava/lang/String;

.field private final _provider:Lorg/eclipse/jetty/deploy/AppProvider;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/deploy/DeploymentManager;Lorg/eclipse/jetty/deploy/AppProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "manager"    # Lorg/eclipse/jetty/deploy/DeploymentManager;
    .param p2, "provider"    # Lorg/eclipse/jetty/deploy/AppProvider;
    .param p3, "originId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/App;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    .line 43
    iput-object p2, p0, Lorg/eclipse/jetty/deploy/App;->_provider:Lorg/eclipse/jetty/deploy/AppProvider;

    .line 44
    iput-object p3, p0, Lorg/eclipse/jetty/deploy/App;->_originId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/deploy/DeploymentManager;Lorg/eclipse/jetty/deploy/AppProvider;Ljava/lang/String;Lorg/eclipse/jetty/server/handler/ContextHandler;)V
    .locals 0
    .param p1, "manager"    # Lorg/eclipse/jetty/deploy/DeploymentManager;
    .param p2, "provider"    # Lorg/eclipse/jetty/deploy/AppProvider;
    .param p3, "originId"    # Ljava/lang/String;
    .param p4, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/deploy/App;-><init>(Lorg/eclipse/jetty/deploy/DeploymentManager;Lorg/eclipse/jetty/deploy/AppProvider;Ljava/lang/String;)V

    .line 62
    iput-object p4, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 63
    return-void
.end method


# virtual methods
.method public getAppProvider()Lorg/eclipse/jetty/deploy/AppProvider;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/App;->_provider:Lorg/eclipse/jetty/deploy/AppProvider;

    return-object v0
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/App;->getAppProvider()Lorg/eclipse/jetty/deploy/AppProvider;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/eclipse/jetty/deploy/AppProvider;->createContextHandler(Lorg/eclipse/jetty/deploy/App;)Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 99
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/App;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getContextAttributes()Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    .line 100
    .local v0, "attributes":Lorg/eclipse/jetty/util/AttributesMap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 103
    new-instance v1, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>(Lorg/eclipse/jetty/util/AttributesMap;)V

    .line 104
    .end local v0    # "attributes":Lorg/eclipse/jetty/util/AttributesMap;
    .local v1, "attributes":Lorg/eclipse/jetty/util/AttributesMap;
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/AttributesMap;->addAll(Lorg/eclipse/jetty/util/Attributes;)V

    .line 105
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 108
    .end local v1    # "attributes":Lorg/eclipse/jetty/util/AttributesMap;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    return-object v2
.end method

.method public getContextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/App;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeploymentManager()Lorg/eclipse/jetty/deploy/DeploymentManager;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/App;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    return-object v0
.end method

.method public getOriginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/App;->_originId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/App;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/App;->_originId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
