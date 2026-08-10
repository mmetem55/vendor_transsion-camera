.class public Lcom/transsion/camera/feature/setting/guidelines/Guidelines;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Guidelines.java"


# instance fields
.field private mGuidelinesParametersConfigure:Lcom/transsion/camera/feature/setting/guidelines/GuidelinesParametersConfigure;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_guidelines"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;->mGuidelinesParametersConfigure:Lcom/transsion/camera/feature/setting/guidelines/GuidelinesParametersConfigure;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/transsion/camera/feature/setting/guidelines/GuidelinesParametersConfigure;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/guidelines/GuidelinesParametersConfigure;-><init>(Lcom/transsion/camera/feature/setting/guidelines/Guidelines;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;->mGuidelinesParametersConfigure:Lcom/transsion/camera/feature/setting/guidelines/GuidelinesParametersConfigure;

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;->mGuidelinesParametersConfigure:Lcom/transsion/camera/feature/setting/guidelines/GuidelinesParametersConfigure;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 60
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 24
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class p2, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const-string p2, "on"

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "off"

    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "init"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_guidelines"

    .line 38
    invoke-virtual {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_guidelines"

    .line 75
    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/guidelines/Guidelines;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method
