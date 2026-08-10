.class public Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;
.super Ljava/lang/Object;
.source "ProfessionalUIManager.java"


# instance fields
.field private mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

.field private mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 10

    move-object v0, p0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v9, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v9, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    move-object/from16 v1, p6

    .line 32
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1

    .line 188
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_0

    .line 196
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private unInitSettingUIs()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 179
    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->unInit()V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 164
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->dismissPopup()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideSeekBarIfNeed(Z)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->hideSeekBarIfNeed(Z)V

    :cond_0
    return-void
.end method

.method public inflateViewIfNeed(I)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->inflateViewIfNeed(I)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->init()V

    :cond_0
    return-void
.end method

.method public isCaptureButtonEnable()Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 157
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->isCaptureButtonEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSeekBarShowing()Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 171
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->isSeekBarShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->onScreenFormChanged(IZ)V

    :cond_0
    return-void
.end method

.method public resetCapturingUI()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->resetCapturingUI()V

    :cond_0
    return-void
.end method

.method public seCaptureStopListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 115
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->seCaptureStopListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCaptureButtonEnable(Z)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 151
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setCaptureButtonEnable(Z)V

    :cond_0
    return-void
.end method

.method public setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 109
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 51
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setEnable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvider(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public startCapturingBeginAnim(J)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->startCapturingBeginAnim(J)V

    :cond_0
    return-void
.end method

.method public startCapturingEndAnim()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 139
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->startCapturingEndAnim()V

    :cond_0
    return-void
.end method

.method public stopCapturingBeginAnim()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->stopCapturingBeginAnim()V

    :cond_0
    return-void
.end method

.method public stopCapturingEndAnim()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 145
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->stopCapturingEndAnim()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->unInit()V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->unInitSettingUIs()V

    return-void
.end method

.method public updateSettingItemList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 97
    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->unInit()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->initSettingUIList(Ljava/util/List;)V

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_1

    .line 103
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setSettingUIList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public updateUIState(IZ)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->updateUIState(IZ)V

    :cond_0
    return-void
.end method
