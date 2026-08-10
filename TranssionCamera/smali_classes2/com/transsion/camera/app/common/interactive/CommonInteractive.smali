.class public Lcom/transsion/camera/app/common/interactive/CommonInteractive;
.super Ljava/lang/Object;
.source "CommonInteractive.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mModeArrowRoot:Landroid/view/View;

.field private final mModePickerView:Landroid/view/View;

.field private mModeRegionControl:Lcom/transsion/camera/app/common/IModeRegionControl;

.field private final mShutterPanelRootView:Landroid/view/View;

.field private final mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModePickerView:Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeArrowRoot:Landroid/view/View;

    .line 25
    iput-object p3, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mShutterPanelRootView:Landroid/view/View;

    .line 26
    iput-object p4, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 27
    iput-object p5, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method


# virtual methods
.method public getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-object p0
.end method

.method public getIAppUI()Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method public getModeArrowRoot()Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeArrowRoot:Landroid/view/View;

    return-object p0
.end method

.method public getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeRegionControl:Lcom/transsion/camera/app/common/IModeRegionControl;

    return-object p0
.end method

.method public getShutterPanelRootView()Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mShutterPanelRootView:Landroid/view/View;

    return-object p0
.end method

.method public setModeRegionControl(Lcom/transsion/camera/app/common/IModeRegionControl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeRegionControl:Lcom/transsion/camera/app/common/IModeRegionControl;

    return-void
.end method
