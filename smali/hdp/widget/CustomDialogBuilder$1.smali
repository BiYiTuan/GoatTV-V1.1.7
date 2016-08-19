.class Lhdp/widget/CustomDialogBuilder$1;
.super Ljava/lang/Object;
.source "CustomDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/widget/CustomDialogBuilder;->init(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/CustomDialogBuilder;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lhdp/widget/CustomDialogBuilder;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/CustomDialogBuilder$1;->this$0:Lhdp/widget/CustomDialogBuilder;

    iput-object p2, p0, Lhdp/widget/CustomDialogBuilder$1;->val$dialog:Landroid/app/Dialog;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 150
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder$1;->this$0:Lhdp/widget/CustomDialogBuilder;

    # getter for: Lhdp/widget/CustomDialogBuilder;->dialogListener:Lhdp/widget/OnDialogListener;
    invoke-static {v1}, Lhdp/widget/CustomDialogBuilder;->access$0(Lhdp/widget/CustomDialogBuilder;)Lhdp/widget/OnDialogListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0037

    if-ne v1, v2, :cond_1

    .line 153
    const/4 v0, 0x1

    .line 157
    .local v0, "id":I
    :goto_1
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder$1;->this$0:Lhdp/widget/CustomDialogBuilder;

    # getter for: Lhdp/widget/CustomDialogBuilder;->dialogListener:Lhdp/widget/OnDialogListener;
    invoke-static {v1}, Lhdp/widget/CustomDialogBuilder;->access$0(Lhdp/widget/CustomDialogBuilder;)Lhdp/widget/OnDialogListener;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/CustomDialogBuilder$1;->val$dialog:Landroid/app/Dialog;

    invoke-interface {v1, v2, v0}, Lhdp/widget/OnDialogListener;->onHandle(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 155
    .end local v0    # "id":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "id":I
    goto :goto_1
.end method
