.class public Lhdp/http/DecodeKey;
.super Ljava/lang/Object;
.source "DecodeKey.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "hello-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetKey()Ljava/lang/String;
.end method

.method public static native GetList()Ljava/lang/String;
.end method

.method public static native StringFromJni(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
