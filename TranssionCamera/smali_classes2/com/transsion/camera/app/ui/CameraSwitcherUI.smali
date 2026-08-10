.class public Lcom/transsion/camera/app/ui/CameraSwitcherUI;
.super Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.source "CameraSwitcherUI.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getAnimatorDrawableId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f08036e

    goto :goto_0

    :cond_0
    const p0, 0x7f08036d

    :goto_0
    return p0
.end method
