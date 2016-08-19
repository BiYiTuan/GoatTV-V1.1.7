.class Lhdp/widget/SoftVideoView$5;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;


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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$5;->this$0:Lhdp/widget/SoftVideoView;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lhdp/widget/SoftVideoView$5;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, p2}, Lhdp/widget/SoftVideoView;->access$25(Lhdp/widget/SoftVideoView;I)V

    .line 405
    return-void
.end method
