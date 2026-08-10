.class public abstract Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "AbstractFoldUIManager.java"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mCurFeatureState:I


# virtual methods
.method public changeOrientation(I)I
    .locals 0

    return p1
.end method

.method protected checkBookFeatureState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkFlatFeatureState(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkFoldFeatureState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkFoldingFeatureState(Landroid/content/Context;IIZ)Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FoldUIForm]checkFoldingFeatureState state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/transsion/camera/app/common/FoldHingeUIState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", foldUIType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needCheck:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "[FoldUIForm]checkFoldingFeatureState mCurFeatureState:"

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 56
    iput p2, p0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->mCurFeatureState:I

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->mCurFeatureState:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p2, :cond_6

    const/4 p4, 0x1

    if-eq p2, p4, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p3, p4, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkBookFeatureState()Z

    move-result v1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkTabletopFeatureState()Z

    move-result v1

    goto :goto_0

    :cond_3
    if-ne p3, p1, :cond_4

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkTabletopFeatureState()Z

    move-result v1

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkBookFeatureState()Z

    move-result v1

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkFlatFeatureState(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 63
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkFoldFeatureState()Z

    move-result v1

    .line 87
    :goto_0
    iput p2, p0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->mCurFeatureState:I

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->mCurFeatureState:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method protected checkTabletopFeatureState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public doSetupFoldUI()V
    .locals 0

    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public quitVIPSelfie()V
    .locals 0

    return-void
.end method

.method public abstract setBrowserGotoGalleryListener(Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;)V
.end method

.method public setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V
    .locals 0

    return-void
.end method

.method public setChangeScreenForm(Z)V
    .locals 0

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .locals 0

    return-void
.end method

.method public setModeSwitchPolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .locals 0

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
