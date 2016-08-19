.class Lhdp/widget/VideoView$12;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/widget/VideoView;->seekTo(I)V
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
    iput-object p1, p0, Lhdp/widget/VideoView$12;->this$0:Lhdp/widget/VideoView;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lhdp/widget/VideoView$12;->this$0:Lhdp/widget/VideoView;

    # invokes: Lhdp/widget/VideoView;->openVideo()V
    invoke-static {v0}, Lhdp/widget/VideoView;->access$21(Lhdp/widget/VideoView;)V

    .line 724
    return-void
.end method
