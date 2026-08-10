.class public Lcom/transsion/camera/app/PreviewIntercept;
.super Ljava/lang/Object;
.source "PreviewIntercept.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/app/PreviewIntercept;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 14
    iput-object p2, p0, Lcom/transsion/camera/app/PreviewIntercept;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    return-void
.end method


# virtual methods
.method public onSingleTapUp(FF)Z
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/transsion/camera/app/PreviewIntercept;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->onPreviewClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/PreviewIntercept;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onSingleTapUp()Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
