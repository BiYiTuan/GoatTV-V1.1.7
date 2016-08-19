.class public Lorg/eclipse/jetty/util/IO;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/IO$1;,
        Lorg/eclipse/jetty/util/IO$NullWrite;,
        Lorg/eclipse/jetty/util/IO$ClosedIS;,
        Lorg/eclipse/jetty/util/IO$NullOS;,
        Lorg/eclipse/jetty/util/IO$Job;,
        Lorg/eclipse/jetty/util/IO$Singleton;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final CRLF_BYTES:[B

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __closedStream:Lorg/eclipse/jetty/util/IO$ClosedIS;

.field private static __nullPrintWriter:Ljava/io/PrintWriter;

.field private static __nullStream:Lorg/eclipse/jetty/util/IO$NullOS;

.field private static __nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite;

.field public static bufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v0, Lorg/eclipse/jetty/util/IO;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/IO;->CRLF_BYTES:[B

    .line 50
    const/high16 v0, 0x10000

    sput v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    .line 469
    new-instance v0, Lorg/eclipse/jetty/util/IO$NullOS;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$NullOS;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__nullStream:Lorg/eclipse/jetty/util/IO$NullOS;

    .line 482
    new-instance v0, Lorg/eclipse/jetty/util/IO$ClosedIS;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$ClosedIS;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__closedStream:Lorg/eclipse/jetty/util/IO$ClosedIS;

    .line 521
    new-instance v0, Lorg/eclipse/jetty/util/IO$NullWrite;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$NullWrite;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite;

    .line 522
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/eclipse/jetty/util/IO;->__nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__nullPrintWriter:Ljava/io/PrintWriter;

    return-void

    .line 47
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 365
    if-eqz p0, :cond_0

    .line 366
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 427
    if-eqz p0, :cond_0

    .line 428
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/Reader;)V
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 383
    if-eqz p0, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/Writer;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;

    .prologue
    .line 400
    if-eqz p0, :cond_0

    .line 401
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/IO;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 139
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 176
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    new-array v0, v3, [B

    .line 177
    .local v0, "buffer":[B
    sget v1, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    .line 179
    .local v1, "len":I
    cmp-long v3, p2, v6

    if-ltz v3, :cond_4

    .line 181
    :goto_0
    cmp-long v3, p2, v6

    if-lez v3, :cond_0

    .line 183
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    long-to-int v2, p2

    .line 184
    .local v2, "max":I
    :goto_1
    invoke-virtual {p0, v0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 186
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 203
    .end local v2    # "max":I
    :cond_0
    :goto_2
    return-void

    .line 183
    :cond_1
    sget v2, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    goto :goto_1

    .line 189
    .restart local v2    # "max":I
    :cond_2
    int-to-long v3, v1

    sub-long/2addr p2, v3

    .line 190
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 200
    .end local v2    # "max":I
    :cond_3
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    :cond_4
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 198
    if-gez v1, :cond_3

    goto :goto_2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    .line 166
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    .locals 9
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 213
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    new-array v0, v3, [C

    .line 214
    .local v0, "buffer":[C
    sget v1, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    .line 216
    .local v1, "len":I
    cmp-long v3, p2, v7

    if-ltz v3, :cond_3

    .line 218
    :goto_0
    cmp-long v3, p2, v7

    if-lez v3, :cond_0

    .line 220
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    .line 221
    long-to-int v3, p2

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 225
    :goto_1
    if-ne v1, v6, :cond_2

    .line 253
    :cond_0
    :goto_2
    return-void

    .line 223
    :cond_1
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    goto :goto_1

    .line 228
    :cond_2
    int-to-long v3, v1

    sub-long/2addr p2, v3

    .line 229
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 232
    :cond_3
    instance-of v3, p1, Ljava/io/PrintWriter;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 234
    check-cast v2, Ljava/io/PrintWriter;

    .line 235
    .local v2, "pout":Ljava/io/PrintWriter;
    :goto_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 238
    if-eq v1, v6, :cond_0

    .line 240
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 250
    .end local v2    # "pout":Ljava/io/PrintWriter;
    :cond_4
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/Writer;->write([CII)V

    .line 247
    :cond_5
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 248
    if-ne v1, v6, :cond_4

    goto :goto_2
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 281
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_4

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 285
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "name":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_3
    aget-object v3, v0, v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 291
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 297
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 298
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 299
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 300
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 301
    return-void
.end method

.method public static copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Lorg/eclipse/jetty/util/IO$Job;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jetty/util/IO$Job;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 123
    .local v1, "job":Lorg/eclipse/jetty/util/IO$Job;
    sget-object v2, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/IO$Job;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "job":Lorg/eclipse/jetty/util/IO$Job;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copyThread(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 3
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Lorg/eclipse/jetty/util/IO$Job;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jetty/util/IO$Job;-><init>(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 150
    .local v1, "job":Lorg/eclipse/jetty/util/IO$Job;
    sget-object v2, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/IO$Job;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "job":Lorg/eclipse/jetty/util/IO$Job;
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    const/4 v2, 0x0

    .line 352
    :goto_0
    return v2

    .line 346
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 349
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 350
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static getClosedStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__closedStream:Lorg/eclipse/jetty/util/IO$ClosedIS;

    return-object v0
.end method

.method public static getNullPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__nullPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getNullStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__nullStream:Lorg/eclipse/jetty/util/IO$NullOS;

    return-object v0
.end method

.method public static getNullWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite;

    return-object v0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 413
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 414
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 319
    .local v1, "writer":Ljava/io/StringWriter;
    if-nez p1, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 321
    .local v0, "reader":Ljava/io/InputStreamReader;
    :goto_0
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 319
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 332
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 333
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
