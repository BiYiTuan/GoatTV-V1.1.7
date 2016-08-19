.class public Lcom/forcetech/android/ForceTV;
.super Ljava/lang/Object;
.source "ForceTV.java"


# static fields
.field private static p2pIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/forcetech/android/ForceTV;->p2pIsStart:Z

    .line 16
    const-string v0, "hdp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initForceClient()V
    .locals 6

    .prologue
    .line 23
    const/4 v3, 0x0

    sput-boolean v3, Lcom/forcetech/android/ForceTV;->p2pIsStart:Z

    .line 26
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 27
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "netstat"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 27
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/16 v4, 0x400

    .line 26
    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 31
    .local v0, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 33
    sget-boolean v3, Lcom/forcetech/android/ForceTV;->p2pIsStart:Z

    if-nez v3, :cond_1

    .line 34
    const-string v3, "\u542f\u52a8P2P\u670d\u52a1 jni\uff1a"

    .line 35
    const v4, 0xd4f9

    const/high16 v5, 0x1400000

    invoke-static {v4, v5}, Lcom/forcetech/android/ForceTV;->start(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    return-void

    .line 40
    :cond_2
    const-string v3, "0.0.0.0:54521"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const/4 v3, 0x1

    sput-boolean v3, Lcom/forcetech/android/ForceTV;->p2pIsStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "localException":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isP2PStart()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 55
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "netstat"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 55
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 56
    const/16 v4, 0x400

    .line 54
    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 59
    .local v0, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 61
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 63
    :goto_0
    return-object v3

    .line 62
    :cond_1
    const-string v3, "0.0.0.0:54521"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 66
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "localException":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static native start(II)I
.end method

.method public static native stop()I
.end method
