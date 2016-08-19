.class Lhdp/widget/SoftVideoView$6;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/SoftVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/SoftVideoView;


# direct methods
.method constructor <init>(Lhdp/widget/SoftVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/SoftVideoView$6;->this$0:Lhdp/widget/SoftVideoView;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lio/vov/vitamio/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 411
    iget-object v0, p0, Lhdp/widget/SoftVideoView$6;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->isList:Z
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$16(Lhdp/widget/SoftVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lhdp/widget/SoftVideoView$6;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhdp/widget/SoftVideoView;->isResultSeek:Z

    .line 414
    :cond_0
    iget-object v0, p0, Lhdp/widget/SoftVideoView$6;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$26(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lhdp/widget/SoftVideoView$6;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$26(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lio/vov/vitamio/MediaPlayer;)V

    .line 417
    :cond_1
    return-void
.end method
