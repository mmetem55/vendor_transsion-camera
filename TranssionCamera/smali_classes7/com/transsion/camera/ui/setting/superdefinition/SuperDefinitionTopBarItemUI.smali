.class Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SuperDefinitionTopBarItemUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFullSizeSupport:Z

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;)V
    .locals 2

    .line 38
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 33
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f050050

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mFullSizeSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private showSuperDefinitionHint(Ljava/lang/String;)V
    .locals 5

    const-string v0, "off"

    .line 91
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v1

    .line 95
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v2

    .line 96
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 99
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mFullSizeSupport:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v2

    .line 103
    instance-of v4, v2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    if-eqz v4, :cond_2

    .line 104
    check-cast v2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    invoke-virtual {v2, v0, v1, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->getMPValue(Ljava/lang/String;[ILjava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    if-nez p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 112
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my_MM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f1002ec

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 113
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mResources:Landroid/content/res/Resources;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 117
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_3

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnStatusChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->showSuperDefinitionHint(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;-><init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-super {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 49
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "billion"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->showSuperDefinitionHint(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method
