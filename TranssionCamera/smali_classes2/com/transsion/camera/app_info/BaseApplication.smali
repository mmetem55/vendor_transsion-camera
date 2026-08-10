.class public Lcom/transsion/camera/app_info/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"

# interfaces
.implements Lcom/transsion/camera/app_info/ICameraApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Lcom/transsion/camera/app_info/AppInfo;->setApp(Lcom/transsion/camera/app_info/ICameraApplication;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method
