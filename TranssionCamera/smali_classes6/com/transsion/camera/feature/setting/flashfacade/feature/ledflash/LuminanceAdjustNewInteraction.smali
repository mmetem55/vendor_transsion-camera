.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;
.source "LuminanceAdjustNewInteraction.java"


# static fields
.field private static final LUMINANCE_NEW_INTERACTION_KEY:Ljava/lang/String; = "luminance_new_interaction_key"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mNewDefaultValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    return-void
.end method


# virtual methods
.method initLuminance(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->initLuminance(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 38
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mAdjustSupport:Z

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getISetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 42
    iget p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mDefaultValue:I

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->maxValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->minValue()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->minValue()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->mNewDefaultValue:I

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "luminance_new_interaction_key"

    invoke-virtual {v0, v2, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->setValue(I)V

    return-void
.end method

.method public restoreToDefault()V
    .locals 1

    .line 49
    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->mNewDefaultValue:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->setValue(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    .line 53
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->setValue(I)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "luminance_new_interaction_key"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
