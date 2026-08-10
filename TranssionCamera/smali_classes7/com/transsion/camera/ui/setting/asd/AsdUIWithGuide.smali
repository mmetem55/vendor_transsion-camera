.class public Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;
.super Lcom/transsion/camera/ui/setting/asd/AsdUI;
.source "AsdUIWithGuide.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBackCameraModeNames:[Ljava/lang/String;

.field private final mFrontCameraModeNames:[Ljava/lang/String;

.field private mIsMagicSkyGuideSupport:Z

.field private mIsSuperNightGuideSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AsdUIWithGuide"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;-><init>(Landroid/content/res/Resources;)V

    const v0, 0x7f030021

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    const v0, 0x7f030022

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 45
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "supernight_guide_support"

    .line 45
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    .line 47
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 48
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "magicsky_guide_support"

    .line 47
    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected updateGuideUIState(II)V
    .locals 3

    .line 54
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateGuideUIState], algorithmResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , effectResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    if-eqz v1, :cond_8

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateGuideUIState], mIsSuperNightGuideSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsMagicSkyGuideSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " \n mBackCameraModeNames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    .line 57
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n mFrontCameraModeNames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    .line 58
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnableType(ZZ)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 63
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    if-eqz p2, :cond_4

    if-ne p1, v0, :cond_3

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    :cond_4
    if-ne p1, v0, :cond_6

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 90
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->resetTwinkleGuide()V

    :cond_8
    :goto_0
    return-void
.end method
