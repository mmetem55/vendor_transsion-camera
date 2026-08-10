.class public Lcom/transsion/widgetslib/dialog/PromptDialog$Builder2;
.super Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
.source "PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder2"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 485
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder2;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    const/4 p1, 0x0

    .line 500
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 501
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    :cond_0
    return-void
.end method
