.class public Lorg/eclipse/jetty/server/NCSARequestLog;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "NCSARequestLog.java"

# interfaces
.implements Lorg/eclipse/jetty/server/RequestLog;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _append:Z

.field private _closeOut:Z

.field private _extended:Z

.field private transient _fileOut:Ljava/io/OutputStream;

.field private _filename:Ljava/lang/String;

.field private _filenameDateFormat:Ljava/lang/String;

.field private transient _ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _ignorePaths:[Ljava/lang/String;

.field private _logCookies:Z

.field private transient _logDateCache:Lorg/eclipse/jetty/util/DateCache;

.field private _logDateFormat:Ljava/lang/String;

.field private _logDispatch:Z

.field private _logLatency:Z

.field private _logLocale:Ljava/util/Locale;

.field private _logServer:Z

.field private _logTimeZone:Ljava/lang/String;

.field private transient _out:Ljava/io/OutputStream;

.field private _preferProxiedForAddress:Z

.field private _retainDays:I

.field private transient _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/eclipse/jetty/server/NCSARequestLog;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 58
    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 61
    const-string v0, "GMT"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 64
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 65
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 66
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 80
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 81
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 82
    const/16 v0, 0x1f

    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 58
    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 61
    const-string v0, "GMT"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 64
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 65
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 66
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 95
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 96
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 97
    const/16 v0, 0x1f

    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 98
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/NCSARequestLog;->setFilename(Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected declared-synchronized doStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 636
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 637
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZoneID(Ljava/lang/String;)V

    .line 640
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 642
    new-instance v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    iget v3, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    iget-object v4, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 644
    sget-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/NCSARequestLog;->getDatedFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 653
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 654
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 655
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 647
    .end local v7    # "i":I
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 658
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 660
    :cond_3
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 661
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    monitor-exit p0

    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 673
    monitor-enter p0

    .line 675
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 688
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 696
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 697
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 698
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 699
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 700
    monitor-exit p0

    .line 701
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 700
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 690
    :catch_1
    move-exception v0

    .line 692
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    check-cast v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->getDatedFilename()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnorePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogCookies()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    return v0
.end method

.method public getLogDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLatency()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    return v0
.end method

.method public getLogLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLogServer()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    return v0
.end method

.method public getLogTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferProxiedForAddress()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    return v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    return v0
.end method

.method public isLogDispatch()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    return v0
.end method

.method public log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V
    .locals 23
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "response"    # Lorg/eclipse/jetty/server/Response;

    .prologue
    .line 453
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v17, 0x100

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 461
    .local v5, "buf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 463
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    :cond_2
    const/4 v3, 0x0

    .line 468
    .local v3, "addr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 470
    const-string v17, "X-Forwarded-For"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    :cond_3
    if-nez v3, :cond_4

    .line 474
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    .line 476
    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v4

    .line 479
    .local v4, "authentication":Lorg/eclipse/jetty/server/Authentication;
    instance-of v0, v4, Lorg/eclipse/jetty/server/Authentication$User;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 480
    check-cast v4, Lorg/eclipse/jetty/server/Authentication$User;

    .end local v4    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    invoke-interface {v4}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :goto_1
    const-string v17, " ["

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :goto_2
    const-string v17, "] \""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v17, "\" "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 499
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v16

    .line 500
    .local v16, "status":I
    if-gtz v16, :cond_5

    .line 501
    const/16 v16, 0x194

    .line 502
    :cond_5
    div-int/lit8 v17, v16, 0x64

    rem-int/lit8 v17, v17, 0xa

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    div-int/lit8 v17, v16, 0xa

    rem-int/lit8 v17, v17, 0xa

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    rem-int/lit8 v17, v16, 0xa

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    .end local v16    # "status":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v14

    .line 510
    .local v14, "responseLength":J
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-ltz v17, :cond_15

    .line 512
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    const-wide/32 v17, 0x1869f

    cmp-long v17, v14, v17

    if-lez v17, :cond_10

    .line 514
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 527
    :goto_4
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lorg/eclipse/jetty/server/NCSARequestLog;->logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V

    .line 536
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 538
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v6

    .line 539
    .local v6, "cookies":[Ljavax/servlet/http/Cookie;
    if-eqz v6, :cond_7

    array-length v0, v6

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 540
    :cond_7
    const-string v17, " -"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .end local v6    # "cookies":[Ljavax/servlet/http/Cookie;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 558
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 560
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 562
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getDispatchTime()J

    move-result-wide v7

    .line 563
    .local v7, "d":J
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    const-wide/16 v17, 0x0

    cmp-long v17, v7, v17

    if-nez v17, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v7

    .end local v7    # "d":J
    :cond_a
    sub-long v17, v12, v7

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 569
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v17

    sub-long v17, v12, v17

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 574
    .end local v12    # "now":J
    :cond_c
    sget-object v17, Lorg/eclipse/jetty/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 576
    .local v11, "log":Ljava/lang/String;
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    if-nez v17, :cond_19

    .line 579
    monitor-exit p0

    goto/16 :goto_0

    .line 582
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 584
    .end local v3    # "addr":Ljava/lang/String;
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    .end local v11    # "log":Ljava/lang/String;
    .end local v14    # "responseLength":J
    :catch_0
    move-exception v9

    .line 586
    .local v9, "e":Ljava/io/IOException;
    sget-object v17, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 482
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "addr":Ljava/lang/String;
    .restart local v4    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .restart local v5    # "buf":Ljava/lang/StringBuilder;
    :cond_d
    :try_start_3
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 488
    .end local v4    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 507
    :cond_f
    const-string v17, "Async"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 517
    .restart local v14    # "responseLength":J
    :cond_10
    const-wide/16 v17, 0x270f

    cmp-long v17, v14, v17

    if-lez v17, :cond_11

    .line 518
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0x2710

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    :cond_11
    const-wide/16 v17, 0x3e7

    cmp-long v17, v14, v17

    if-lez v17, :cond_12

    .line 520
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0x3e8

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_12
    const-wide/16 v17, 0x63

    cmp-long v17, v14, v17

    if-lez v17, :cond_13

    .line 522
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0x64

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    :cond_13
    const-wide/16 v17, 0x9

    cmp-long v17, v14, v17

    if-lez v17, :cond_14

    .line 524
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0xa

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    :cond_14
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0xa

    rem-long v19, v14, v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 530
    :cond_15
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 543
    .restart local v6    # "cookies":[Ljavax/servlet/http/Cookie;
    :cond_16
    const-string v17, " \""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_18

    .line 546
    if-eqz v10, :cond_17

    .line 547
    const/16 v17, 0x3b

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_17
    aget-object v17, v6, v10

    invoke-virtual/range {v17 .. v17}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    aget-object v17, v6, v10

    invoke-virtual/range {v17 .. v17}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 552
    :cond_18
    const/16 v17, 0x22

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 580
    .end local v6    # "cookies":[Ljavax/servlet/http/Cookie;
    .end local v10    # "i":I
    .restart local v11    # "log":Ljava/lang/String;
    :cond_19
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/Writer;->flush()V

    .line 582
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method protected logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "response"    # Lorg/eclipse/jetty/server/Response;
    .param p3, "b"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 604
    const-string v2, "Referer"

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "referer":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 606
    const-string v2, "\"-\" "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :goto_0
    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "agent":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 616
    const-string v2, "\"-\" "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :goto_1
    return-void

    .line 609
    .end local v0    # "agent":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v2, "\" "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 619
    .restart local v0    # "agent":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public setAppend(Z)V
    .locals 0
    .param p1, "append"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 269
    return-void
.end method

.method public setExtended(Z)V
    .locals 0
    .param p1, "extended"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 246
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 p1, 0x0

    .line 118
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setFilenameDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "logFileDateFormat"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setIgnorePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "ignorePaths"    # [Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setLogCookies(Z)V
    .locals 0
    .param p1, "logCookies"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 314
    return-void
.end method

.method public setLogDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setLogDispatch(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 430
    return-void
.end method

.method public setLogLatency(Z)V
    .locals 0
    .param p1, "logLatency"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 360
    return-void
.end method

.method public setLogLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "logLocale"    # Ljava/util/Locale;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 179
    return-void
.end method

.method public setLogServer(Z)V
    .locals 0
    .param p1, "logServer"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 337
    return-void
.end method

.method public setLogTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setPreferProxiedForAddress(Z)V
    .locals 0
    .param p1, "preferProxiedForAddress"    # Z

    .prologue
    .line 383
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    .line 384
    return-void
.end method

.method public setRetainDays(I)V
    .locals 0
    .param p1, "retainDays"    # I

    .prologue
    .line 222
    iput p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 223
    return-void
.end method
