.class public Lorg/eclipse/jetty/io/EofException;
.super Ljava/io/EOFException;
.source "EofException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/EofException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 40
    :cond_0
    return-void
.end method
