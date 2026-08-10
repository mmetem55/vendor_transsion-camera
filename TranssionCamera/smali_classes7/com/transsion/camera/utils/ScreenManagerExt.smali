.class public Lcom/transsion/camera/utils/ScreenManagerExt;
.super Ljava/lang/Object;
.source "ScreenManagerExt.java"


# static fields
.field private static final supportFoldUI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/ScreenManagerExt;->supportFoldUI:Z

    return-void
.end method

.method public static screenExpanded(Lcom/transsion/camera/app/common/manager/IScreenManager;)Z
    .locals 2

    .line 13
    sget-boolean v0, Lcom/transsion/camera/utils/ScreenManagerExt;->supportFoldUI:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
