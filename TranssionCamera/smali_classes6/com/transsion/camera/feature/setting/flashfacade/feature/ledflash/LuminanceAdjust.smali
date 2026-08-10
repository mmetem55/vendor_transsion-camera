.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;
.super Ljava/lang/Object;
.source "LuminanceAdjust.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAdjustSupport:Z

.field protected final mDefaultValue:I

.field protected final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field protected final mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

.field protected mValue:I

.field private mValueSupportAdjust:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 43
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultLuminanceValue:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mDefaultValue:I

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValue:I

    .line 45
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    return-void
.end method


# virtual methods
.method configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 3

    .line 74
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mAdjustSupport:Z

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValueSupportAdjust: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValueSupportAdjust:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValueSupportAdjust:Z

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    .line 83
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValue:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLuminanceValue(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 85
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    .line 86
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLuminanceValue(I)V

    :goto_0
    return-void
.end method

.method initLuminance(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->reset()V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mAdjustSupport:Z

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->updateSupport(Z)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V

    return-void

    .line 58
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedLuminanceScope()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mAdjustSupport:Z

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 63
    invoke-virtual {v2, v3, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->updateRange(II)V

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mAdjustSupport:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->updateSupport(Z)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mAdjustSupport:Z

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValue:I

    :cond_3
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->updateValue(I)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V

    return-void
.end method

.method public restoreToDefault()V
    .locals 1

    .line 91
    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mDefaultValue:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->setValue(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    .line 95
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValue:I

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->updateValue(I)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V

    return-void
.end method

.method public valueSupportAdjust(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mValueSupportAdjust:Z

    return-void
.end method
