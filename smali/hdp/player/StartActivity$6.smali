.class Lhdp/player/StartActivity$6;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->CreatDownDialog(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;

.field private final synthetic val$progressDialog:Lhdp/widget/DownProgressDialog;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;Lhdp/widget/DownProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$6;->this$0:Lhdp/player/StartActivity;

    iput-object p2, p0, Lhdp/player/StartActivity$6;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lhdp/player/StartActivity$6;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    invoke-virtual {v0}, Lhdp/widget/DownProgressDialog;->dismiss()V

    .line 725
    iget-object v0, p0, Lhdp/player/StartActivity$6;->this$0:Lhdp/player/StartActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhdp/player/StartActivity;->access$13(Lhdp/player/StartActivity;Z)V

    .line 726
    return-void
.end method
