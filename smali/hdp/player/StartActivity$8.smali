.class Lhdp/player/StartActivity$8;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->Dialog_DownApp(Lhdp/javabean/AppInfo$NetApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$8;->this$0:Lhdp/player/StartActivity;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lhdp/player/StartActivity$8;->this$0:Lhdp/player/StartActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhdp/player/StartActivity;->access$13(Lhdp/player/StartActivity;Z)V

    .line 794
    return-void
.end method
