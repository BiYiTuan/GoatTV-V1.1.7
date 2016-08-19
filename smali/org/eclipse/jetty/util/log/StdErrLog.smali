.class public Lorg/eclipse/jetty/util/log/StdErrLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "StdErrLog.java"


# static fields
.field private static final EOL:Ljava/lang/String;

.field public static final LEVEL_ALL:I = 0x0

.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_WARN:I = 0x3

.field private static final __long:Z

.field private static final __props:Ljava/util/Properties;

.field private static final __source:Z

.field private static _dateCache:Lorg/eclipse/jetty/util/DateCache;


# instance fields
.field private final _abbrevname:Ljava/lang/String;

.field private _configuredLevel:I

.field private _hideStacks:Z

.field private _level:I

.field private final _name:Ljava/lang/String;

.field private _printLongNames:Z

.field private _source:Z

.field private _stderr:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 38
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    .line 40
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    sput-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    .line 42
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v7, "org.eclipse.jetty.util.log.SOURCE"

    sget-object v8, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v9, "org.eclipse.jetty.util.log.stderr.SOURCE"

    const-string v10, "false"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    .line 44
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v7, "org.eclipse.jetty.util.log.stderr.LONG"

    const-string v8, "false"

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__long:Z

    .line 48
    sget-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    sget-object v7, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v6, v7}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 50
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "DEBUG"

    aput-object v6, v2, v11

    const-string v6, "org.eclipse.jetty.util.log.DEBUG"

    aput-object v6, v2, v12

    const/4 v6, 0x2

    const-string v7, "org.eclipse.jetty.util.log.stderr.DEBUG"

    aput-object v7, v2, v6

    .line 54
    .local v2, "deprecatedProperties":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 56
    .local v1, "deprecatedProp":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 58
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "System Property [%s] has been deprecated! (Use org.eclipse.jetty.LEVEL=DEBUG instead)%n"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v1, v8, v11

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 54
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "deprecatedProp":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v6, Lorg/eclipse/jetty/util/DateCache;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v7}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v5

    .line 68
    .local v5, "x":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 77
    const/4 v1, 0x2

    iput v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 80
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 81
    sget-boolean v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    .line 83
    sget-boolean v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__long:Z

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    .line 102
    if-eqz p2, :cond_0

    .line 103
    sget-object v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v1, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 104
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "name":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_abbrevname:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-static {p2, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 107
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    iput v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    .line 111
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".SOURCE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ace":Ljava/security/AccessControlException;
    sget-boolean v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    goto :goto_0
.end method

.method protected static condensePackageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "parts":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "dense":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 210
    aget-object v3, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 214
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 512
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 514
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 515
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 519
    const/16 v2, 0x7c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_0
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 523
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 527
    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 532
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 535
    .end local v0    # "c":C
    :cond_3
    return-void
.end method

.method private format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "thrown"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 410
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->isHideStacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 402
    sget-object v2, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "d":Ljava/lang/String;
    sget-object v2, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v1

    .line 404
    .local v1, "ms":I
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->tag(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    .line 405
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    return-void
.end method

.method private varargs format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 480
    if-nez p2, :cond_0

    .line 482
    const-string p2, ""

    .line 483
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p3

    if-ge v4, v8, :cond_0

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "{} "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v4    # "i":I
    :cond_0
    const-string v2, "{}"

    .line 489
    .local v2, "braces":Ljava/lang/String;
    const/4 v7, 0x0

    .line 490
    .local v7, "start":I
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 492
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 493
    .local v3, "bracesIndex":I
    if-gez v3, :cond_1

    .line 495
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 496
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 490
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 502
    :cond_1
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 503
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v3, v8

    goto :goto_2

    .line 507
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v3    # "bracesIndex":I
    :cond_2
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 539
    if-nez p2, :cond_1

    .line 541
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 548
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v1, :cond_2

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 550
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 555
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 557
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static getLevelId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "levelSegment"    # Ljava/lang/String;
    .param p1, "levelName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 163
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return v1

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "levelStr":Ljava/lang/String;
    const-string v2, "ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const/4 v1, 0x0

    goto :goto_0

    .line 172
    :cond_1
    const-string v2, "DEBUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const/4 v1, 0x1

    goto :goto_0

    .line 176
    :cond_2
    const-string v2, "INFO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    const/4 v1, 0x2

    goto :goto_0

    .line 180
    :cond_3
    const-string v2, "WARN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    const/4 v1, 0x3

    goto :goto_0

    .line 185
    :cond_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown StdErrLog level ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], expecting only [ALL, DEBUG, INFO, WARN] as values."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    move-object v3, p1

    .line 135
    .local v3, "nameSegment":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, "level":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 158
    .end local v1    # "level":I
    .end local v2    # "levelStr":Ljava/lang/String;
    :goto_1
    return v1

    .line 146
    .restart local v1    # "level":I
    .restart local v2    # "levelStr":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 147
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 153
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    .end local v0    # "idx":I
    .end local v1    # "level":I
    .end local v2    # "levelStr":Ljava/lang/String;
    :cond_2
    const-string v4, "log.LEVEL"

    const-string v5, "log.LEVEL"

    const-string v6, "INFO"

    invoke-virtual {p0, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 609
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 610
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 611
    return-void
.end method

.method private tag(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "d"    # Ljava/lang/String;
    .param p3, "ms"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3a

    .line 423
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 424
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const/16 v5, 0x63

    if-le p3, v5, :cond_1

    .line 427
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-boolean v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    if-eqz v5, :cond_3

    .line 440
    iget-object v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    iget-boolean v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    if-eqz v5, :cond_6

    .line 449
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 450
    .local v4, "source":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 451
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v2

    if-ge v3, v5, :cond_6

    .line 453
    aget-object v1, v2, v3

    .line 454
    .local v1, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "clazz":Ljava/lang/String;
    const-class v5, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/eclipse/jetty/util/log/Log;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 451
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 429
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "frame":Ljava/lang/StackTraceElement;
    .end local v2    # "frames":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    .end local v4    # "source":Ljava/lang/Throwable;
    :cond_1
    const/16 v5, 0x9

    if-le p3, v5, :cond_2

    .line 431
    const-string v5, ".0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 435
    :cond_2
    const-string v5, ".00"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_abbrevname:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 459
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "frame":Ljava/lang/StackTraceElement;
    .restart local v2    # "frames":[Ljava/lang/StackTraceElement;
    .restart local v3    # "i":I
    .restart local v4    # "source":Ljava/lang/Throwable;
    :cond_4
    iget-boolean v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    if-nez v5, :cond_7

    const-string v5, "org.eclipse.jetty."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 461
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :goto_3
    const/16 v5, 0x23

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 470
    const/16 v5, 0x28

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "frame":Ljava/lang/StackTraceElement;
    .end local v2    # "frames":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    .end local v4    # "source":Ljava/lang/Throwable;
    :cond_6
    return-void

    .line 465
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "frame":Ljava/lang/StackTraceElement;
    .restart local v2    # "frames":[Ljava/lang/StackTraceElement;
    .restart local v3    # "i":I
    .restart local v4    # "source":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 392
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":DBUG:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 398
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 377
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":DBUG:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 383
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 387
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ignored"    # Ljava/lang/Throwable;

    .prologue
    .line 615
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    if-gtz v1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 618
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":IGNORED:"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 621
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 310
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 313
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":INFO:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 316
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 295
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 298
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":INFO:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 301
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 320
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideStacks()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    return v0
.end method

.method public isPrintLongNames()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    return v0
.end method

.method public isSource()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 2
    .param p1, "fullname"    # Ljava/lang/String;

    .prologue
    .line 569
    new-instance v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "logger":Lorg/eclipse/jetty/util/log/StdErrLog;
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setPrintLongNames(Z)V

    .line 573
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setSource(Z)V

    .line 574
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    iput-object v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 576
    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 329
    if-eqz p1, :cond_1

    .line 331
    iput v3, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 333
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/log/Logger;

    .line 335
    .local v1, "log":Lorg/eclipse/jetty/util/log/Logger;
    instance-of v2, v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v2, :cond_0

    .line 336
    check-cast v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    .end local v1    # "log":Lorg/eclipse/jetty/util/log/Logger;
    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_0

    .line 341
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    iput v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 343
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/log/Logger;

    .line 345
    .restart local v1    # "log":Lorg/eclipse/jetty/util/log/Logger;
    instance-of v2, v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 346
    check-cast v2, Lorg/eclipse/jetty/util/log/StdErrLog;

    check-cast v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    .end local v1    # "log":Lorg/eclipse/jetty/util/log/Logger;
    iget v3, v1, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_1

    .line 349
    :cond_3
    return-void
.end method

.method public setHideStacks(Z)V
    .locals 0
    .param p1, "hideStacks"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    .line 243
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 367
    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 368
    return-void
.end method

.method public setPrintLongNames(Z)V
    .locals 0
    .param p1, "printLongNames"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    .line 228
    return-void
.end method

.method public setSource(Z)V
    .locals 0
    .param p1, "source"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    .line 266
    return-void
.end method

.method public setStdErrStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 372
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "StdErrLog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v1, ":LEVEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    packed-switch v1, :pswitch_data_0

    .line 601
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 589
    :pswitch_0
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 592
    :pswitch_1
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 595
    :pswitch_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 598
    :pswitch_3
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 285
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 288
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":WARN:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 291
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 270
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 273
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":WARN:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 276
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 280
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    return-void
.end method
