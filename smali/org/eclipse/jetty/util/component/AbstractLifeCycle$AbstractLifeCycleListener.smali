.class public abstract Lorg/eclipse/jetty/util/component/AbstractLifeCycle$AbstractLifeCycleListener;
.super Ljava/lang/Object;
.source "AbstractLifeCycle.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractLifeCycleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lifeCycleFailure(Lorg/eclipse/jetty/util/component/LifeCycle;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "event"    # Lorg/eclipse/jetty/util/component/LifeCycle;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    return-void
.end method

.method public lifeCycleStarted(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .param p1, "event"    # Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 207
    return-void
.end method

.method public lifeCycleStarting(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .param p1, "event"    # Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 208
    return-void
.end method

.method public lifeCycleStopped(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .param p1, "event"    # Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 209
    return-void
.end method

.method public lifeCycleStopping(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .param p1, "event"    # Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 210
    return-void
.end method
