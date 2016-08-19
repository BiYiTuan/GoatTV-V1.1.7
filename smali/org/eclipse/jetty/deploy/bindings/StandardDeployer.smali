.class public Lorg/eclipse/jetty/deploy/bindings/StandardDeployer;
.super Ljava/lang/Object;
.source "StandardDeployer.java"

# interfaces
.implements Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindingTargets()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deploying"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V
    .locals 4
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "app"    # Lorg/eclipse/jetty/deploy/App;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p2}, Lorg/eclipse/jetty/deploy/App;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 34
    .local v0, "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    if-nez v0, :cond_0

    .line 36
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Handler created for App: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/deploy/App;->getDeploymentManager()Lorg/eclipse/jetty/deploy/DeploymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getContexts()Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 39
    return-void
.end method
