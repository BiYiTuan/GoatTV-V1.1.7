.class public interface abstract Lorg/eclipse/jetty/deploy/AppProvider;
.super Ljava/lang/Object;
.source "AppProvider.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# virtual methods
.method public abstract createContextHandler(Lorg/eclipse/jetty/deploy/App;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setDeploymentManager(Lorg/eclipse/jetty/deploy/DeploymentManager;)V
.end method
