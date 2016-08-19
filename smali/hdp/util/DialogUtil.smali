.class public Lhdp/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Landroid/content/Context;IIIILhdp/widget/OnDialogListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "msgResId"    # I
    .param p3, "okId"    # I
    .param p4, "cancelId"    # I
    .param p5, "dialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    .line 50
    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "ok":Ljava/lang/String;
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "cancel":Ljava/lang/String;
    move-object v0, p0

    move-object v5, p5

    .line 54
    invoke-static/range {v0 .. v5}, Lhdp/util/DialogUtil;->getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 50
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ok":Ljava/lang/String;
    .end local v4    # "cancel":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDialog(Landroid/content/Context;IIILhdp/widget/OnDialogListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "msgResId"    # I
    .param p3, "okId"    # I
    .param p4, "dialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    const/4 v4, 0x0

    .line 71
    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "ok":Ljava/lang/String;
    move-object v0, p0

    move-object v5, p4

    .line 74
    invoke-static/range {v0 .. v5}, Lhdp/util/DialogUtil;->getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ok":Ljava/lang/String;
    :cond_0
    move-object v1, v4

    .line 71
    goto :goto_0
.end method

.method public static getDialog(Landroid/content/Context;IILhdp/widget/OnDialogListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgResId"    # I
    .param p2, "okId"    # I
    .param p3, "dialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "ok":Ljava/lang/String;
    move-object v0, p0

    move-object v4, v1

    move-object v5, p3

    .line 63
    invoke-static/range {v0 .. v5}, Lhdp/util/DialogUtil;->getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "txtOk"    # Ljava/lang/String;
    .param p3, "dialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    const/4 v1, 0x0

    .line 25
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lhdp/util/DialogUtil;->getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "txtOk"    # Ljava/lang/String;
    .param p4, "dialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    .line 41
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lhdp/util/DialogUtil;->getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhdp/widget/OnDialogListener;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "txtOk"    # Ljava/lang/String;
    .param p4, "textCancel"    # Ljava/lang/String;
    .param p5, "dialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    .line 83
    new-instance v0, Lhdp/widget/CustomDialogBuilder;

    invoke-direct {v0}, Lhdp/widget/CustomDialogBuilder;-><init>()V

    .line 85
    .local v0, "dialogBuilder":Lhdp/widget/CustomDialogBuilder;
    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Lhdp/widget/CustomDialogBuilder;->setStyle(I)Lhdp/widget/CustomDialogBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p1}, Lhdp/widget/CustomDialogBuilder;->setTitle(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p3}, Lhdp/widget/CustomDialogBuilder;->setTextBtn1(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p4}, Lhdp/widget/CustomDialogBuilder;->setTextBtn2(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p2}, Lhdp/widget/CustomDialogBuilder;->setContent(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, p5}, Lhdp/widget/CustomDialogBuilder;->setDialogListener(Lhdp/widget/OnDialogListener;)Lhdp/widget/CustomDialogBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p0}, Lhdp/widget/CustomDialogBuilder;->create(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    .line 84
    return-object v1
.end method
