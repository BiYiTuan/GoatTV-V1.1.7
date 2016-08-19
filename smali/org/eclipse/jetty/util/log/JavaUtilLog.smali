.class public Lorg/eclipse/jetty/util/log/JavaUtilLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "JavaUtilLog.java"


# instance fields
.field private _logger:Ljava/util/logging/Logger;

.field private configuredLevel:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "org.eclipse.jetty.util.log"

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/JavaUtilLog;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    .line 44
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v1, "org.eclipse.jetty.util.log.DEBUG"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->configuredLevel:Ljava/util/logging/Level;

    .line 49
    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 138
    const-string v2, "{}"

    .line 139
    .local v2, "braces":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 141
    .local v7, "start":I
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 143
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 144
    .local v3, "bracesIndex":I
    if-gez v3, :cond_0

    .line 146
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 141
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v3, v8

    goto :goto_1

    .line 158
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v3    # "bracesIndex":I
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ignored"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "IGNORED "

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .param p1, "fullname"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lorg/eclipse/jetty/util/log/JavaUtilLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->configuredLevel:Ljava/util/logging/Level;

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->configuredLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method
