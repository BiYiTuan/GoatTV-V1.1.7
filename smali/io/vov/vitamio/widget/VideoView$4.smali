.class Lio/vov/vitamio/widget/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lio/vov/vitamio/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    const/4 v2, 0x5

    .line 197
    const-string v0, "onCompletion"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v0, v2}, Lio/vov/vitamio/widget/VideoView;->access$7(Lio/vov/vitamio/widget/VideoView;I)V

    .line 199
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v0, v2}, Lio/vov/vitamio/widget/VideoView;->access$8(Lio/vov/vitamio/widget/VideoView;I)V

    .line 200
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lio/vov/vitamio/widget/MediaController;->hide()V

    .line 202
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$23(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$23(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$4;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    .line 204
    :cond_1
    return-void
.end method
