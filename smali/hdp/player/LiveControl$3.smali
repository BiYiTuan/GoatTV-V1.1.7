.class Lhdp/player/LiveControl$3;
.super Ljava/lang/Object;
.source "LiveControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LiveControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveControl;


# direct methods
.method constructor <init>(Lhdp/player/LiveControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->Progress_int:I
    invoke-static {v0}, Lhdp/player/LiveControl;->access$2(Lhdp/player/LiveControl;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    const/16 v1, -0xa

    invoke-static {v0, v1}, Lhdp/player/LiveControl;->access$3(Lhdp/player/LiveControl;I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->bar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lhdp/player/LiveControl;->access$4(Lhdp/player/LiveControl;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->Progress_int:I
    invoke-static {v1}, Lhdp/player/LiveControl;->access$2(Lhdp/player/LiveControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 158
    iget-object v0, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->Progress_int:I
    invoke-static {v0}, Lhdp/player/LiveControl;->access$2(Lhdp/player/LiveControl;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lhdp/player/LiveControl;->access$3(Lhdp/player/LiveControl;I)V

    .line 159
    iget-object v0, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveControl$3;->this$0:Lhdp/player/LiveControl;

    iget-object v1, v1, Lhdp/player/LiveControl;->proRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method
