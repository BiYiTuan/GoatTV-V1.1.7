.class Lorg/eclipse/jetty/util/log/JettyAwareLogger;
.super Ljava/lang/Object;
.source "JettyAwareLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final DEBUG:I = 0xa

.field private static final ERROR:I = 0x28

.field private static final FQCN:Ljava/lang/String;

.field private static final INFO:I = 0x14

.field private static final TRACE:I = 0x0

.field private static final WARN:I = 0x1e


# instance fields
.field private final _logger:Lorg/slf4j/spi/LocationAwareLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/util/log/Slf4jLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 0
    .param p1, "logger"    # Lorg/slf4j/spi/LocationAwareLogger;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    .line 39
    return-void
.end method

.method private log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "level"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "argArray"    # [Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 598
    if-nez p4, :cond_1

    .line 601
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    .line 609
    .local v8, "loggerLevel":I
    :goto_1
    if-gt v8, p2, :cond_0

    .line 613
    invoke-static {p3, p4}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v7

    .line 614
    .local v7, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v3, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 605
    .end local v7    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    .end local v8    # "loggerLevel":I
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v8, 0xa

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v8, 0x14

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v8, 0x1e

    goto :goto_1

    :cond_5
    const/16 v8, 0x28

    goto :goto_1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 173
    const/16 v2, 0xa

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 182
    const/16 v2, 0xa

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 183
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 191
    const/16 v2, 0xa

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 209
    const/16 v2, 0xa

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 200
    const/16 v2, 0xa

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 201
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 227
    const/16 v2, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 236
    const/16 v2, 0xa

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 237
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 245
    const/16 v2, 0xa

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 263
    const/16 v2, 0xa

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 264
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 254
    const/16 v2, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 255
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 497
    const/16 v2, 0x28

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 498
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 506
    const/16 v2, 0x28

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 507
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 515
    const/16 v2, 0x28

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 516
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 533
    const/16 v2, 0x28

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 534
    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 524
    const/16 v2, 0x28

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 525
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 551
    const/16 v2, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 552
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 560
    const/16 v2, 0x28

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 561
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 569
    const/16 v2, 0x28

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 570
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 587
    const/16 v2, 0x28

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 588
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 578
    const/16 v2, 0x28

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 579
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 281
    const/16 v2, 0x14

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 282
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 290
    const/16 v2, 0x14

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 291
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 299
    const/16 v2, 0x14

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 300
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 317
    const/16 v2, 0x14

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 318
    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 308
    const/16 v2, 0x14

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 309
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 335
    const/16 v2, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 336
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 344
    const/16 v2, 0x14

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 345
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 353
    const/16 v2, 0x14

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 354
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 371
    const/16 v2, 0x14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 372
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 362
    const/16 v2, 0x14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 363
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 218
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 542
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 326
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 434
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 119
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 137
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, v2

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 156
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 146
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 389
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 390
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 398
    const/16 v2, 0x1e

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 399
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 416
    const/16 v2, 0x1e

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 417
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 425
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 426
    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 407
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 408
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 443
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 444
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 452
    const/16 v2, 0x1e

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 453
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 461
    const/16 v2, 0x1e

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 462
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 479
    const/16 v2, 0x1e

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 480
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 470
    const/16 v2, 0x1e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 471
    return-void
.end method
