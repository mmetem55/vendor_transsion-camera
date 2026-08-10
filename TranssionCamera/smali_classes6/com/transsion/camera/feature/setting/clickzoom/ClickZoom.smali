.class public Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "ClickZoom.java"


# static fields
.field private static final FACE_COUNT_TRIGGER:I = 0x3

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceCount:I

.field private mModeSupported:Z

.field private mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

.field private final mStateValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "*>;"
        }
    .end annotation
.end field

.field private final mSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUIConflict:Z


# direct methods
.method public static synthetic $r8$lambda$UQ7V6ndauDu8whzChJHNDFfm4zA(Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ClickZoom"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mSupportList:Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    .line 31
    iput v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mFaceCount:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mStateValueMap:Ljava/util/Map;

    .line 192
    new-instance v0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private calcCurrentZoomState()Ljava/lang/String;
    .locals 1

    .line 164
    iget v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mFaceCount:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->getZoomStateByFaceCount(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getZoomStateByFaceCount(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x3

    if-lt p1, p0, :cond_0

    const-string p0, "state_zoom_in"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getZoomValueByState(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mStateValueMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "click_zoom_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_face_rect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    if-eqz p1, :cond_3

    .line 197
    instance-of p1, p2, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz p1, :cond_1

    .line 198
    check-cast p2, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    array-length p1, p2

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->onFaceCountChanged(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 200
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->onFaceCountChanged(I)V

    goto :goto_0

    .line 205
    :cond_2
    sget-object p1, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_CLICK_ZOOM_UI_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "value_click_zoom_ui_conflict_on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mUIConflict:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private onFaceCountChanged(I)V
    .locals 3

    .line 131
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mUIConflict:Z

    if-eqz v0, :cond_0

    .line 132
    sget-object p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onFaceCountChanged return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mFaceCount:I

    if-eq v0, p1, :cond_1

    .line 136
    sget-object v0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceCountChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mFaceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iput p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mFaceCount:I

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->updateZoomState()V

    :cond_1
    return-void
.end method

.method private postRestrictionIfNeeded(Ljava/lang/String;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->getZoomValueByState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomRestriction;->getRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateZoomState()V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->calcCurrentZoomState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->onValueChanged(Ljava/lang/String;)V

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

    const-string p0, "key_camera_click_zoom"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 98
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

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

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mSupportList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 2

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 39
    new-instance p2, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    const-string p2, "click_zoom_supported_entry_values"

    .line 40
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mSupportList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 42
    array-length p2, p1

    if-lez p2, :cond_0

    .line 43
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mSupportList:Ljava/util/List;

    const-string p3, "state_zoom_in"

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mSupportList:Ljava/util/List;

    const-string v0, "state_zoom_out"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mStateValueMap:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mStateValueMap:Ljava/util/Map;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    aget-object p1, p1, p3

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "key_face_rect"

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "click_zoom_ui_state"

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
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

    if-eqz p1, :cond_2

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    if-nez p2, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string p2, "state_zoom_in"

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mFaceCount:I

    .line 78
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mUIConflict:Z

    .line 79
    sget-object p1, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initValueAndSupport mModeSupported: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", getValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->postRestrictionIfNeeded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "key_camera_click_zoom"

    .line 84
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mSupportList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-le p1, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_1

    .line 87
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    move p2, p3

    :cond_1
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 118
    sget-object v0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->mModeSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->postRestrictionIfNeeded(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const-string v0, "key_face_rect"

    .line 55
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "click_zoom_ui_state"

    .line 56
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method
