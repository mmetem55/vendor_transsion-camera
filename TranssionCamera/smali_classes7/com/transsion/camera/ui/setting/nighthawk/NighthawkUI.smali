.class public Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "NighthawkUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_night_hawk"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 23
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

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

    const-string p0, "key_night_hawk"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 0

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 76
    sget-object p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
