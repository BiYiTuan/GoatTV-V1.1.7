.class Lhdp/player/PlayerMenuContrl$4;
.super Ljava/lang/Object;
.source "PlayerMenuContrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/PlayerMenuContrl;->CreatDownDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/PlayerMenuContrl;

.field private final synthetic val$progressDialog:Lhdp/widget/DownProgressDialog;


# direct methods
.method constructor <init>(Lhdp/player/PlayerMenuContrl;Lhdp/widget/DownProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl$4;->this$0:Lhdp/player/PlayerMenuContrl;

    iput-object p2, p0, Lhdp/player/PlayerMenuContrl$4;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl$4;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    invoke-virtual {v0}, Lhdp/widget/DownProgressDialog;->dismiss()V

    .line 581
    return-void
.end method
