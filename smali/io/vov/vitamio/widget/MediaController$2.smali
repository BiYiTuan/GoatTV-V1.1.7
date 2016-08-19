.class Lio/vov/vitamio/widget/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vov/vitamio/widget/MediaController;


# direct methods
.method constructor <init>(Lio/vov/vitamio/widget/MediaController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController$2;->this$0:Lio/vov/vitamio/widget/MediaController;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$2;->this$0:Lio/vov/vitamio/widget/MediaController;

    # invokes: Lio/vov/vitamio/widget/MediaController;->doPauseResume()V
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$4(Lio/vov/vitamio/widget/MediaController;)V

    .line 124
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$2;->this$0:Lio/vov/vitamio/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 125
    return-void
.end method
