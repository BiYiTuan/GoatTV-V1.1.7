.class public Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;
.super Ljava/lang/Object;
.source "JSONDateConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _dateCache:Lorg/eclipse/jetty/util/DateCache;

.field _format:Ljava/text/SimpleDateFormat;

.field private _fromJSON:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;-><init>(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "zone"    # Ljava/util/TimeZone;
    .param p3, "fromJSON"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;ZLjava/util/Locale;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "zone"    # Ljava/util/TimeZone;
    .param p3, "fromJSON"    # Z
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    invoke-direct {v0, p1, p4}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1, p4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "fromJSON"    # Z

    .prologue
    .line 49
    sget-object v0, Lorg/eclipse/jetty/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V

    .line 50
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 72
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 76
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    const-string v1, "value"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2

    .line 85
    :goto_0
    return-object v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/eclipse/jetty/util/ajax/JSON$Output;

    .prologue
    .line 90
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/DateCache;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "date":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 94
    const-string v1, "value"

    invoke-interface {p2, v1, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
