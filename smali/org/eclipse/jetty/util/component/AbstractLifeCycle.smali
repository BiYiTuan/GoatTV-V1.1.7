.class public abstract Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.super Ljava/lang/Object;
.source "AbstractLifeCycle.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/component/AbstractLifeCycle$AbstractLifeCycleListener;
    }
.end annotation


# static fields
.field public static final FAILED:Ljava/lang/String; = "FAILED"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final RUNNING:Ljava/lang/String; = "RUNNING"

.field public static final STARTED:Ljava/lang/String; = "STARTED"

.field public static final STARTING:Ljava/lang/String; = "STARTING"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final STOPPING:Ljava/lang/String; = "STOPPING"


# instance fields
.field private final __FAILED:I

.field private final __STARTED:I

.field private final __STARTING:I

.field private final __STOPPED:I

.field private final __STOPPING:I

.field protected final _listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/eclipse/jetty/util/component/LifeCycle$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final _lock:Ljava/lang/Object;

.field private volatile _state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__FAILED:I

    iput v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STOPPED:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STARTING:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STARTED:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STOPPING:I

    .line 38
    iput v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 204
    return-void
.end method

.method public static getState(Lorg/eclipse/jetty/util/component/LifeCycle;)Ljava/lang/String;
    .locals 1
    .param p0, "lc"    # Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 157
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STARTING"

    .line 161
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "STARTED"

    goto :goto_0

    .line 159
    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "STOPPING"

    goto :goto_0

    .line 160
    :cond_2
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "STOPPED"

    goto :goto_0

    .line 161
    :cond_3
    const-string v0, "FAILED"

    goto :goto_0
.end method

.method private setFailed(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 198
    const/4 v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 199
    sget-object v2, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAILED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 201
    .local v1, "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    invoke-interface {v1, p0, p1}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleFailure(Lorg/eclipse/jetty/util/component/LifeCycle;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 202
    .end local v1    # "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    :cond_0
    return-void
.end method

.method private setStarted()V
    .locals 6

    .prologue
    .line 166
    const/4 v2, 0x2

    iput v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 167
    sget-object v2, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "STARTED {}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 169
    .local v1, "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStarted(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 170
    .end local v1    # "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    :cond_0
    return-void
.end method

.method private setStarting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 174
    sget-object v2, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "starting {}"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iput v6, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 176
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 177
    .local v1, "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStarting(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 178
    .end local v1    # "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    :cond_0
    return-void
.end method

.method private setStopped()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    iput v6, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 191
    sget-object v2, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "{} {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "STOPPED"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 193
    .local v1, "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStopped(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 194
    .end local v1    # "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    :cond_0
    return-void
.end method

.method private setStopping()V
    .locals 6

    .prologue
    .line 182
    sget-object v2, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "stopping {}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const/4 v2, 0x3

    iput v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 184
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 185
    .local v1, "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStopping(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 186
    .end local v1    # "listener":Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lorg/eclipse/jetty/util/component/LifeCycle$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 152
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    const-string v0, "FAILED"

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v0, "STARTING"

    goto :goto_0

    .line 148
    :pswitch_2
    const-string v0, "STARTED"

    goto :goto_0

    .line 149
    :pswitch_3
    const-string v0, "STOPPING"

    goto :goto_0

    .line 150
    :pswitch_4
    const-string v0, "STOPPED"

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 102
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 104
    .local v0, "state":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopping()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLifeCycleListener(Lorg/eclipse/jetty/util/component/LifeCycle$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public final start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 57
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    return-void

    .line 58
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStarting()V

    .line 59
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 60
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStarted()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 65
    throw v0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Error;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 70
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStopping()V

    .line 84
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 85
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStopped()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 90
    throw v0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Error;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 95
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
