.class Lorg/eclipse/jetty/util/IO$Job;
.super Ljava/lang/Object;
.source "IO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Job"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field read:Ljava/io/Reader;

.field write:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/util/IO$Job;->in:Ljava/io/InputStream;

    .line 74
    iput-object p2, p0, Lorg/eclipse/jetty/util/IO$Job;->out:Ljava/io/OutputStream;

    .line 75
    iput-object v0, p0, Lorg/eclipse/jetty/util/IO$Job;->read:Ljava/io/Reader;

    .line 76
    iput-object v0, p0, Lorg/eclipse/jetty/util/IO$Job;->write:Ljava/io/Writer;

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1
    .param p1, "read"    # Ljava/io/Reader;
    .param p2, "write"    # Ljava/io/Writer;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lorg/eclipse/jetty/util/IO$Job;->in:Ljava/io/InputStream;

    .line 81
    iput-object v0, p0, Lorg/eclipse/jetty/util/IO$Job;->out:Ljava/io/OutputStream;

    .line 82
    iput-object p1, p0, Lorg/eclipse/jetty/util/IO$Job;->read:Ljava/io/Reader;

    .line 83
    iput-object p2, p0, Lorg/eclipse/jetty/util/IO$Job;->write:Ljava/io/Writer;

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 93
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/IO$Job;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lorg/eclipse/jetty/util/IO$Job;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/eclipse/jetty/util/IO$Job;->out:Ljava/io/OutputStream;

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/IO$Job;->read:Ljava/io/Reader;

    iget-object v3, p0, Lorg/eclipse/jetty/util/IO$Job;->write:Ljava/io/Writer;

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 102
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/IO$Job;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lorg/eclipse/jetty/util/IO$Job;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 104
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/util/IO$Job;->write:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lorg/eclipse/jetty/util/IO$Job;->write:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e2":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
