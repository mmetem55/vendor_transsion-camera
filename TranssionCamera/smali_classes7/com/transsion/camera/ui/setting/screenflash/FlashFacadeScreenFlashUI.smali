.class public Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;
.super Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;
.source "FlashFacadeScreenFlashUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUsePlatformScreenFlash:Z


# direct methods
.method public static synthetic $r8$lambda$kIwypYmO-zLybGqSH2wO9uzW63Y(Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;-><init>()V

    .line 82
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 35
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mUsePlatformScreenFlash:Z

    return-void
.end method

.method private facingFront(Lcom/transsion/camera/app/common/setting/ISetting;)Z
    .locals 0

    .line 65
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "on"

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->showScreenFlashView()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->hideScreenFlashView()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 25
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

    const-string p0, "key_flash_facade"

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/String;
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    if-nez p1, :cond_0

    .line 47
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deviceSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mUsePlatformScreenFlash:Z

    if-eqz v0, :cond_1

    return-void

    .line 54
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->facingFront(Lcom/transsion/camera/app/common/setting/ISetting;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 57
    :cond_2
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_screen_flash"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic setEnable(Z)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->unInit()V

    .line 71
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mUsePlatformScreenFlash:Z

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_screen_flash"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method
