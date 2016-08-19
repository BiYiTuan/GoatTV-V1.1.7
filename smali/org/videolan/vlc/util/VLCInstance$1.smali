.class Lorg/videolan/vlc/util/VLCInstance$1;
.super Ljava/lang/Object;
.source "VLCInstance.java"

# interfaces
.implements Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onNativeCrash()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
