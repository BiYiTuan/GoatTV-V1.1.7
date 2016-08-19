.class Lio/vov/vitamio/widget/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;


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
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView$8;->this$0:Lio/vov/vitamio/widget/VideoView;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lio/vov/vitamio/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 262
    const-string v0, "onSeekComplete"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$8;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$30(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$8;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$30(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lio/vov/vitamio/MediaPlayer;)V

    .line 265
    :cond_0
    return-void
.end method
