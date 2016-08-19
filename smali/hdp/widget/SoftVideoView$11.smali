.class Lhdp/widget/SoftVideoView$11;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/widget/SoftVideoView;->seekTo(I)V
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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$11;->this$0:Lhdp/widget/SoftVideoView;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lhdp/widget/SoftVideoView$11;->this$0:Lhdp/widget/SoftVideoView;

    # invokes: Lhdp/widget/SoftVideoView;->openVideo()V
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$21(Lhdp/widget/SoftVideoView;)V

    .line 697
    return-void
.end method
