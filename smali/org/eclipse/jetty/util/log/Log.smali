.class public Lorg/eclipse/jetty/util/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "EXCEPTION "

.field public static final IGNORED:Ljava/lang/String; = "IGNORED "

.field private static LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static __ignored:Z

.field private static __initialized:Z

.field public static __logClass:Ljava/lang/String;

.field private static final __loggers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation
.end field

.field protected static __props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    .line 78
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    .line 80
    new-instance v0, Lorg/eclipse/jetty/util/log/Log$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/log/Log$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "th"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLog()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    .line 197
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/eclipse/jetty/util/log/Logger;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    const/4 v0, 0x0

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    if-nez p0, :cond_2

    .line 434
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    goto :goto_0

    .line 436
    :cond_2
    sget-object v1, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    .line 437
    .local v0, "logger":Lorg/eclipse/jetty/util/log/Logger;
    if-nez v0, :cond_0

    .line 438
    sget-object v1, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLoggers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getMutableLoggers()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static getRootLogger()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    .line 206
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static ignore(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "thrown"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static initStandardLogging(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    sget-boolean v1, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    :cond_0
    sget-object v1, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-nez v1, :cond_1

    .line 179
    const-class v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    .line 180
    .local v0, "log_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>()V

    sput-object v1, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 181
    sget-object v1, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Logging to {} via {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .end local v0    # "log_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public static initialized()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 137
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v2, :cond_0

    .line 166
    .local v1, "log_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 142
    .end local v1    # "log_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v5, Lorg/eclipse/jetty/util/log/Log;

    monitor-enter v5

    .line 144
    :try_start_0
    sget-boolean v2, Lorg/eclipse/jetty/util/log/Log;->__initialized:Z

    if-eqz v2, :cond_2

    .line 146
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v2, :cond_1

    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    move v3, v4

    .line 146
    goto :goto_1

    .line 148
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lorg/eclipse/jetty/util/log/Log;->__initialized:Z

    .line 149
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    const-class v2, Lorg/eclipse/jetty/util/log/Log;

    sget-object v5, Lorg/eclipse/jetty/util/log/Log;->__logClass:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 154
    .restart local v1    # "log_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v2, :cond_3

    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 156
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/log/Logger;

    sput-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 157
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Logging to {} via {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v2, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :cond_4
    :goto_2
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    move v3, v2

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->initStandardLogging(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    move v2, v4

    .line 166
    goto :goto_3
.end method

.method public static isDebugEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method static isIgnored()Z
    .locals 1

    .prologue
    .line 211
    sget-boolean v0, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    return v0
.end method

.method public static setLog(Lorg/eclipse/jetty/util/log/Logger;)V
    .locals 0
    .param p0, "log"    # Lorg/eclipse/jetty/util/log/Logger;

    .prologue
    .line 187
    sput-object p0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 188
    return-void
.end method

.method public static setLogToParent(Ljava/lang/String;)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    const-class v5, Lorg/eclipse/jetty/util/log/Log;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 232
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 236
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "org.eclipse.jetty.util.log.Log"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 237
    .local v4, "uberlog":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getLogger"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 238
    .local v1, "getLogger":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 239
    .local v3, "logger":Ljava/lang/Object;
    new-instance v5, Lorg/eclipse/jetty/util/log/LoggerLog;

    invoke-direct {v5, v3}, Lorg/eclipse/jetty/util/log/LoggerLog;-><init>(Ljava/lang/Object;)V

    invoke-static {v5}, Lorg/eclipse/jetty/util/log/Log;->setLog(Lorg/eclipse/jetty/util/log/Logger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v1    # "getLogger":Ljava/lang/reflect/Method;
    .end local v3    # "logger":Ljava/lang/Object;
    .end local v4    # "uberlog":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/log/Log;->setLog(Lorg/eclipse/jetty/util/log/Logger;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "th"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
