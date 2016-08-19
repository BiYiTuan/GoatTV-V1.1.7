.class Lhdp/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/VideoView;
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
    iput-object p1, p0, Lhdp/widget/VideoView$6;->this$0:Lhdp/widget/VideoView;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 414
    iget-object v0, p0, Lhdp/widget/VideoView$6;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->isList:Z
    invoke-static {v0}, Lhdp/widget/VideoView;->access$16(Lhdp/widget/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lhdp/widget/VideoView$6;->this$0:Lhdp/widget/VideoView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhdp/widget/VideoView;->isResultSeek:Z

    .line 417
    :cond_0
    iget-object v0, p0, Lhdp/widget/VideoView$6;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$26(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lhdp/widget/VideoView$6;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$26(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 420
    :cond_1
    return-void
.end method
