.class public interface abstract Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
.super Ljava/lang/Object;
.source "AppLifeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/deploy/AppLifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Binding"
.end annotation


# virtual methods
.method public abstract getBindingTargets()[Ljava/lang/String;
.end method

.method public abstract processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
