.class Lcom/transsion/widgetslib/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/Utils;->overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelOutSide:Z

.field final synthetic val$cancelable:Z

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(ZZLandroid/app/Dialog;)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/Utils$2;->val$cancelable:Z

    iput-boolean p2, p0, Lcom/transsion/widgetslib/util/Utils$2;->val$cancelOutSide:Z

    iput-object p3, p0, Lcom/transsion/widgetslib/util/Utils$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 413
    iget-boolean p1, p0, Lcom/transsion/widgetslib/util/Utils$2;->val$cancelable:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/widgetslib/util/Utils$2;->val$cancelOutSide:Z

    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 415
    iget-object p1, p0, Lcom/transsion/widgetslib/util/Utils$2;->val$dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/transsion/widgetslib/util/Utils$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
