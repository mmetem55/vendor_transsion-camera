.class public Lcom/transsion/camera/app_info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static app:Landroid/content/Context;

.field public static appInterface:Lcom/transsion/camera/app_info/ICameraApplication;

.field public static res:Landroid/content/res/Resources;


# direct methods
.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/content/Context;

    return-object v0
.end method

.method public static setApp(Lcom/transsion/camera/app_info/ICameraApplication;)V
    .locals 0

    .line 9
    sput-object p0, Lcom/transsion/camera/app_info/AppInfo;->appInterface:Lcom/transsion/camera/app_info/ICameraApplication;

    .line 10
    invoke-interface {p0}, Lcom/transsion/camera/app_info/ICameraApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    return-void
.end method
