.class public Lorg/eclipse/jetty/deploy/bindings/StandardStarter;
.super Ljava/lang/Object;
.source "StandardStarter.java"

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

    const-string v2, "starting"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V
    .locals 2
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
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->start()V

    .line 38
    :cond_0
    return-void
.end method
