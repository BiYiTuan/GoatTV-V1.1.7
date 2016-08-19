.class public Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "AggregateLifeCycle.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Destroyable;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _beans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;",
            ">;"
        }
    .end annotation
.end field

.field private _started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_started:Z

    .line 34
    return-void
.end method

.method public static dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;
    .locals 3
    .param p0, "dumpable"    # Lorg/eclipse/jetty/util/component/Dumpable;

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v0, "b":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, ""

    invoke-interface {p0, v0, v2}, Lorg/eclipse/jetty/util/component/Dumpable;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 326
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V
    .locals 10
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    .local p2, "collections":[Ljava/util/Collection;, "[Ljava/util/Collection<*>;"
    array-length v8, p2

    if-nez v8, :cond_1

    .line 410
    :cond_0
    return-void

    .line 387
    :cond_1
    const/4 v7, 0x0

    .line 388
    .local v7, "size":I
    move-object v0, p2

    .local v0, "arr$":[Ljava/util/Collection;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 389
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v7, v8

    .line 388
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_2
    if-eqz v7, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "i":I
    move-object v0, p2

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 396
    .restart local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 398
    .local v6, "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 399
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v8

    const-string v9, " +- "

    invoke-interface {v8, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 401
    instance-of v8, v6, Lorg/eclipse/jetty/util/component/Dumpable;

    if-eqz v8, :cond_4

    .line 402
    check-cast v6, Lorg/eclipse/jetty/util/component/Dumpable;

    .end local v6    # "o":Ljava/lang/Object;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ne v2, v7, :cond_3

    const-string v8, "    "

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, p0, v8}, Lorg/eclipse/jetty/util/component/Dumpable;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v8, " |  "

    goto :goto_3

    .line 404
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_4
    invoke-static {p0, v6}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_2

    .line 407
    .end local v6    # "o":Ljava/lang/Object;
    :cond_5
    if-eq v2, v7, :cond_6

    .line 408
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v8

    const-string v9, " |\n"

    invoke-interface {v8, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 394
    :cond_6
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1
.end method

.method public static dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    instance-of v0, p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_0

    .line 349
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " - "

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->getState(Lorg/eclipse/jetty/util/component/LifeCycle;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 352
    :goto_0
    return-void

    .line 351
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method


# virtual methods
.method public addBean(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 150
    instance-of v0, p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->addBean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addBean(Ljava/lang/Object;Z)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "managed"    # Z

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const/4 v3, 0x0

    .line 185
    :goto_0
    return v3

    .line 164
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;-><init>(Lorg/eclipse/jetty/util/component/AggregateLifeCycle;Ljava/lang/Object;)V

    .line 165
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iput-boolean p2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    .line 166
    iget-object v3, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    instance-of v3, p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 170
    check-cast v2, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 173
    .local v2, "l":Lorg/eclipse/jetty/util/component/LifeCycle;
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_started:Z

    if-eqz v3, :cond_1

    .line 177
    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v2    # "l":Lorg/eclipse/jetty/util/component/LifeCycle;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 179
    .restart local v2    # "l":Lorg/eclipse/jetty/util/component/LifeCycle;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 119
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 120
    const/4 v2, 0x1

    .line 121
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v3, "reverse":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 101
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    instance-of v4, v4, Lorg/eclipse/jetty/util/component/Destroyable;

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    if-eqz v4, :cond_0

    .line 103
    iget-object v1, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    check-cast v1, Lorg/eclipse/jetty/util/component/Destroyable;

    .line 104
    .local v1, "d":Lorg/eclipse/jetty/util/component/Destroyable;
    invoke-interface {v1}, Lorg/eclipse/jetty/util/component/Destroyable;->destroy()V

    goto :goto_0

    .line 107
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    .end local v1    # "d":Lorg/eclipse/jetty/util/component/Destroyable;
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 108
    return-void
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v3, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 54
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-boolean v3, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    instance-of v3, v3, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v3, :cond_0

    .line 56
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    check-cast v2, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 57
    .local v2, "l":Lorg/eclipse/jetty/util/component/LifeCycle;
    invoke-interface {v2}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-interface {v2}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    goto :goto_0

    .line 62
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    .end local v2    # "l":Lorg/eclipse/jetty/util/component/LifeCycle;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_started:Z

    .line 63
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 64
    return-void
.end method

.method protected doStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_started:Z

    .line 75
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v3, "reverse":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 78
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 80
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-boolean v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    instance-of v4, v4, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v4, :cond_0

    .line 82
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    check-cast v2, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 83
    .local v2, "l":Lorg/eclipse/jetty/util/component/LifeCycle;
    invoke-interface {v2}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-interface {v2}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    goto :goto_0

    .line 87
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    .end local v2    # "l":Lorg/eclipse/jetty/util/component/LifeCycle;
    :cond_1
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 7
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpThis(Ljava/lang/Appendable;)V

    .line 358
    iget-object v4, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 359
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const/4 v1, 0x0

    .line 362
    .local v1, "i":I
    iget-object v4, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 364
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    add-int/lit8 v1, v1, 0x1

    .line 366
    iget-boolean v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    if-eqz v4, :cond_4

    .line 368
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v4

    const-string v5, " +- "

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 369
    iget-object v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    instance-of v4, v4, Lorg/eclipse/jetty/util/component/Dumpable;

    if-eqz v4, :cond_3

    .line 370
    iget-object v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    check-cast v4, Lorg/eclipse/jetty/util/component/Dumpable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v3, :cond_2

    const-string v5, "    "

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lorg/eclipse/jetty/util/component/Dumpable;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, " |  "

    goto :goto_2

    .line 372
    :cond_3
    iget-object v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    invoke-static {p1, v4}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_1

    .line 375
    :cond_4
    iget-object v4, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    invoke-static {p1, v4}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_1

    .line 378
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :cond_5
    if-eq v1, v3, :cond_0

    .line 379
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v4

    const-string v5, " |\n"

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public dumpStdErr()V
    .locals 3

    .prologue
    .line 304
    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected dumpThis(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " - "

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 343
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 264
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    .line 268
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBeans()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->getBeans(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBeans(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, "beans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 246
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v3, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :cond_1
    return-object v1
.end method

.method public isManaged(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 132
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 133
    iget-boolean v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    .line 134
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public manage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 196
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 198
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 200
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    .line 201
    return-void

    .line 204
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public removeBean(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 286
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 287
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 290
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 292
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 293
    const/4 v2, 0x1

    .line 296
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeBeans()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    return-void
.end method

.method public unmanage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 215
    iget-object v2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->_beans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;

    .line 217
    .local v0, "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 219
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    .line 220
    return-void

    .line 223
    .end local v0    # "b":Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
