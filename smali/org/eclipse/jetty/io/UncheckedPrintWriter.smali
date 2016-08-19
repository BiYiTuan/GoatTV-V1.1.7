.class public Lorg/eclipse/jetty/io/UncheckedPrintWriter;
.super Ljava/io/PrintWriter;
.source "UncheckedPrintWriter.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _autoFlush:Z

.field private _ioException:Ljava/io/IOException;

.field private _isClosed:Z

.field private _lineSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 103
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 37
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_autoFlush:Z

    .line 39
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_isClosed:Z

    .line 66
    iput-boolean p2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_autoFlush:Z

    .line 67
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_lineSeparator:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private isOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_ioException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lorg/eclipse/jetty/io/RuntimeIOException;

    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_ioException:Ljava/io/IOException;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 144
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_isClosed:Z

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    return-void
.end method

.method private newLine()V
    .locals 5

    .prologue
    .line 314
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->isOpen()V

    .line 317
    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 318
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_autoFlush:Z

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 320
    :cond_0
    monitor-exit v3

    .line 330
    :goto_0
    return-void

    .line 320
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 322
    :catch_0
    move-exception v1

    .line 324
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 326
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 328
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    invoke-super {p0}, Ljava/io/PrintWriter;->setError()V

    .line 119
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Ljava/io/IOException;

    iput-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_ioException:Ljava/io/IOException;

    .line 127
    :goto_0
    sget-object v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 128
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_ioException:Ljava/io/IOException;

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_ioException:Ljava/io/IOException;

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method


# virtual methods
.method public checkError()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_ioException:Ljava/io/IOException;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 178
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->_isClosed:Z

    .line 182
    monitor-exit v2

    .line 188
    :goto_0
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->isOpen()V

    .line 160
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 161
    monitor-exit v2

    .line 167
    :goto_0
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public print(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(I)V

    .line 363
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 432
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 414
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 379
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 396
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 490
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 470
    const-string p1, "null"

    .line 472
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public print(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 346
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 347
    return-void

    .line 346
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public print([C)V
    .locals 0
    .param p1, "s"    # [C

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write([C)V

    .line 452
    return-void
.end method

.method public println()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->newLine()V

    .line 504
    return-void
.end method

.method public println(C)V
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 537
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(C)V

    .line 540
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 541
    monitor-exit v1

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(D)V
    .locals 2
    .param p1, "x"    # D

    .prologue
    .line 614
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(D)V

    .line 617
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 594
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(F)V

    .line 597
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 598
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 556
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(I)V

    .line 559
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 560
    monitor-exit v1

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(J)V
    .locals 2
    .param p1, "x"    # J

    .prologue
    .line 575
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(J)V

    .line 578
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 579
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 671
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(Ljava/lang/Object;)V

    .line 674
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 675
    monitor-exit v1

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 656
    monitor-exit v1

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Z)V
    .locals 2
    .param p1, "x"    # Z

    .prologue
    .line 518
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(Z)V

    .line 521
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 522
    monitor-exit v1

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println([C)V
    .locals 2
    .param p1, "x"    # [C

    .prologue
    .line 633
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print([C)V

    .line 636
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 637
    monitor-exit v1

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setError()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->setError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    .line 202
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->isOpen()V

    .line 205
    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(I)V

    .line 206
    monitor-exit v3

    .line 216
    :goto_0
    return-void

    .line 206
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    :catch_0
    move-exception v1

    .line 210
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 212
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;II)V

    .line 308
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 280
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->isOpen()V

    .line 283
    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 284
    monitor-exit v3

    .line 294
    :goto_0
    return-void

    .line 284
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    :catch_0
    move-exception v1

    .line 288
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 290
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 292
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public write([C)V
    .locals 2
    .param p1, "buf"    # [C

    .prologue
    .line 261
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write([CII)V

    .line 262
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 234
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->isOpen()V

    .line 237
    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 238
    monitor-exit v3

    .line 248
    :goto_0
    return-void

    .line 238
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    :catch_0
    move-exception v1

    .line 242
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 244
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
