.class Lio/vov/vitamio/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vov/vitamio/widget/VideoView;


# direct methods
.method constructor <init>(Lio/vov/vitamio/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lio/vov/vitamio/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    const-string v0, "onInfo: (%d, %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$28(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$28(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/vov/vitamio/MediaPlayer$OnInfoListener;->onInfo(Lio/vov/vitamio/MediaPlayer;II)Z

    .line 256
    :cond_0
    :goto_0
    return v4

    .line 245
    :cond_1
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_2

    .line 247
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 248
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$29(Lio/vov/vitamio/widget/VideoView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$29(Lio/vov/vitamio/widget/VideoView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_2
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 251
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 252
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$29(Lio/vov/vitamio/widget/VideoView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$7;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$29(Lio/vov/vitamio/widget/VideoView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
