.class Lhdp/widget/VideoView$11;
.super Ljava/lang/Thread;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/widget/VideoView;->release(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/VideoView;


# direct methods
.method constructor <init>(Lhdp/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/VideoView$11;->this$0:Lhdp/widget/VideoView;

    .line 504
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    const-string v0, "re"

    const-string v1, ":1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lhdp/widget/VideoView$11;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 508
    const-string v0, "re"

    const-string v1, ":2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method
