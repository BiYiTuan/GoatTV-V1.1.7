.class public Lorg/mortbay/ijetty/log/AndroidLog;
.super Ljava/lang/Object;
.source "AndroidLog.java"

# interfaces
.implements Lorg/eclipse/jetty/util/log/Logger;


# static fields
.field public static final __JETTY_TAG:Ljava/lang/String; = "Jetty"

.field public static __isIgnoredEnabled:Z


# instance fields
.field public _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mortbay/ijetty/log/AndroidLog;->__isIgnoredEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "org.mortbay.ijetty.AndroidLog"

    invoke-direct {p0, v0}, Lorg/mortbay/ijetty/log/AndroidLog;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mortbay/ijetty/log/AndroidLog;->_name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    const-string v0, "Jetty"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "Jetty"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 65
    const-string v0, "Jetty"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "Jetty"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    const-string v0, "Jetty"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Jetty"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_0
    return-void
.end method

.method public getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lorg/mortbay/ijetty/log/AndroidLog;

    invoke-direct {v0, p1}, Lorg/mortbay/ijetty/log/AndroidLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/mortbay/ijetty/log/AndroidLog;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ignored"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    sget-boolean v0, Lorg/mortbay/ijetty/log/AndroidLog;->__isIgnoredEnabled:Z

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "Jetty"

    const-string v1, "IGNORED"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    const-string v0, "Jetty"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    const-string v0, "Jetty"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    const-string v0, "Jetty"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 93
    const-string v0, "Jetty"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIgnoredEnabled()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lorg/mortbay/ijetty/log/AndroidLog;->__isIgnoredEnabled:Z

    return v0
.end method

.method public setDebugEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 134
    return-void
.end method

.method public setIgnoredEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    sput-boolean p1, Lorg/mortbay/ijetty/log/AndroidLog;->__isIgnoredEnabled:Z

    .line 129
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    const-string v0, "Jetty"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "Jetty"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 104
    const-string v0, "Jetty"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "Jetty"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    const-string v0, "Jetty"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "Jetty"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_0
    return-void
.end method
