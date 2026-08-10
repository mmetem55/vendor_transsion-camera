.class public Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;
.super Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;
.source "ScreenFlashUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 19
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_screen_flash"

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/String;
    .locals 0

    .line 19
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    if-nez p1, :cond_0

    .line 36
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deviceSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public bridge synthetic setEnable(Z)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public bridge synthetic setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public bridge synthetic unInit()V
    .locals 0

    .line 19
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->unInit()V

    return-void
.end method

.method public bridge synthetic updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method
