.class public Lorg/eclipse/jetty/util/log/Slf4jLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "Slf4jLog.java"


# instance fields
.field private final _logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "org.eclipse.jetty.util.log"

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 36
    :try_start_0
    const-string v2, "org.slf4j.impl.StaticLoggerBinder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 47
    .local v1, "logger":Lorg/slf4j/Logger;
    instance-of v2, v1, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Lorg/eclipse/jetty/util/log/JettyAwareLogger;

    check-cast v1, Lorg/slf4j/spi/LocationAwareLogger;

    .end local v1    # "logger":Lorg/slf4j/Logger;
    invoke-direct {v2, v1}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    iput-object v2, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    .line 55
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    const-string v3, "org.slf4j.impl.StaticLoggerBinder"

    invoke-direct {v2, v3}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "logger":Lorg/slf4j/Logger;
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ignored"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "IGNORED "

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .param p1, "fullname"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Lorg/eclipse/jetty/util/log/Slf4jLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string v0, "setDebugEnabled not implemented"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method
