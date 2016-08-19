.class Lhdp/player/LivePlayerS$7;
.super Ljava/lang/Object;
.source "LivePlayerS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayerS;->createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayerS;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    iput-object p2, p0, Lhdp/player/LivePlayerS$7;->val$dialog:Landroid/app/Dialog;

    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1095
    iget-object v0, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$2(Lhdp/player/LivePlayerS;)Lhdp/player/PlayerMenuContrl;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$2(Lhdp/player/LivePlayerS;)Lhdp/player/PlayerMenuContrl;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 1104
    :goto_0
    iget-object v0, p0, Lhdp/player/LivePlayerS$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1105
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 1101
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    new-instance v1, Lhdp/player/PlayerMenuContrl;

    iget-object v2, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    invoke-direct {v1, v2}, Lhdp/player/PlayerMenuContrl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lhdp/player/LivePlayerS;->access$27(Lhdp/player/LivePlayerS;Lhdp/player/PlayerMenuContrl;)V

    .line 1102
    iget-object v0, p0, Lhdp/player/LivePlayerS$7;->this$0:Lhdp/player/LivePlayerS;

    # invokes: Lhdp/player/LivePlayerS;->call_openmenu()V
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$28(Lhdp/player/LivePlayerS;)V

    goto :goto_0
.end method
