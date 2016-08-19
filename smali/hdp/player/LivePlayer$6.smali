.class Lhdp/player/LivePlayer$6;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayer;->createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayer;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayer;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayer$6;->this$0:Lhdp/player/LivePlayer;

    iput-object p2, p0, Lhdp/player/LivePlayer$6;->val$dialog:Landroid/app/Dialog;

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1090
    invoke-static {}, Lcom/forcetech/android/ForceTV;->stop()I

    .line 1091
    iget-object v0, p0, Lhdp/player/LivePlayer$6;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v0}, Lhdp/player/LivePlayer;->delExitAPK()V

    .line 1092
    iget-object v0, p0, Lhdp/player/LivePlayer$6;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v0}, Lhdp/player/LivePlayer;->deleteTxt()V

    .line 1094
    iget-object v0, p0, Lhdp/player/LivePlayer$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1095
    iget-object v0, p0, Lhdp/player/LivePlayer$6;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v0}, Lhdp/player/LivePlayer;->finish()V

    .line 1096
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1097
    return-void
.end method
