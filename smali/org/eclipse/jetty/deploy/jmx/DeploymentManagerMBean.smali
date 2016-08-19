.class public Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "DeploymentManagerMBean.java"


# instance fields
.field private final _manager:Lorg/eclipse/jetty/deploy/DeploymentManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "managedObject"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    .line 21
    check-cast p1, Lorg/eclipse/jetty/deploy/DeploymentManager;

    .end local p1    # "managedObject":Ljava/lang/Object;
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    .line 22
    return-void
.end method


# virtual methods
.method public getAppProviders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/AppProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getAppProviders()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getApps()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/App;

    .line 36
    .local v0, "app":Lorg/eclipse/jetty/deploy/App;
    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/App;->getOriginId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v0    # "app":Lorg/eclipse/jetty/deploy/App;
    :cond_0
    return-object v1
.end method

.method public getApps(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getApps(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/App;

    .line 44
    .local v0, "app":Lorg/eclipse/jetty/deploy/App;
    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/App;->getOriginId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0    # "app":Lorg/eclipse/jetty/deploy/App;
    :cond_0
    return-object v1
.end method

.method public getContexts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/server/handler/ContextHandler;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getApps()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/App;

    .line 52
    .local v0, "app":Lorg/eclipse/jetty/deploy/App;
    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/App;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v0    # "app":Lorg/eclipse/jetty/deploy/App;
    :cond_0
    return-object v1
.end method

.method public getNodes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getNodes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/deploy/graph/Node;

    .line 28
    .local v1, "node":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-virtual {v1}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v1    # "node":Lorg/eclipse/jetty/deploy/graph/Node;
    :cond_0
    return-object v2
.end method

.method public requestAppGoal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/jmx/DeploymentManagerMBean;->_manager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->requestAppGoal(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
