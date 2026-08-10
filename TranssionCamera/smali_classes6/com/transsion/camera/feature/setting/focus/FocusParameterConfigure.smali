.class public Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;
.super Ljava/lang/Object;
.source "FocusParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;
.implements Lcom/transsion/camera/feature/setting/focus/IFocusController;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

.field private mCurrentFocusMode:Ljava/lang/String;

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mDisableUpdateFocusState:Z

.field private final mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusState:Ljava/lang/String;

.field private mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mIsAutoFocusTriggered:Z

.field private mIsSupportedFocus:Z

.field private final mLock:Ljava/lang/Object;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mSupportedFocusModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocusParameter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    const-string v0, "INACTIVE"

    .line 38
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    .line 288
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;-><init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/Focus;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    return p0
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return p1
.end method

.method private applyFocusCapabilities(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 2

    .line 317
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->needApplyFocusCapabilities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[applyFocusCapabilities] no need update focus capabilities mCurrentFocusMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsAutoFocusTriggered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusAreas(Ljava/util/List;)V

    .line 326
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private initFocusMode(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initFocusMode] + "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 225
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "auto"

    const-string v3, "continuous-picture"

    if-eqz p2, :cond_4

    .line 228
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/focus/Focus;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p2

    sget-object v4, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne p2, v4, :cond_4

    const-string p2, "continuous-video"

    .line 229
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 230
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_2

    .line 232
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_3

    .line 234
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_5

    .line 240
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_6

    .line 242
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initFocusMode] -, mCurrentFocusMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needApplyFocusCapabilities()Z
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-video"

    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V
    .locals 4

    .line 332
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAfCallback] + isContinueAf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAutoFocusTriggered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 335
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 337
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    .line 339
    :goto_0
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2

    .line 340
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    const-string v3, "ACTIVE_SCAN"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "[updateAfCallback] cancelAutoFocus"

    .line 341
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->cancelAutoFocus()V

    :cond_1
    const-string p2, "[updateAfCallback] autoFocus"

    .line 344
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 345
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 346
    invoke-direct {p0, v3, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    const-string p1, "INACTIVE"

    .line 348
    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    :goto_1
    const-string p0, "[updateAfCallback] -"

    .line 351
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMaxNumOfFocusAreas()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 212
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v3, "auto"

    invoke-static {v3, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    .line 214
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMaxNumOfMeteringAreas()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    .line 215
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateCapabilities] mFocusAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mMeteringAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateFocusState(Ljava/lang/String;J)V
    .locals 1

    .line 355
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    if-eqz p0, :cond_0

    .line 358
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;->onFocusStatusUpdate(Ljava/lang/String;J)V

    goto :goto_0

    .line 360
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFocusStateListener is null, can not update focus state"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .line 163
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[autoFocus]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public capture()V
    .locals 0

    return-void
.end method

.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] configCommand mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configCommand] - mCurrentFocusMode does not supported with mSupportedFocusModeList "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-video"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 67
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->applyFocusCapabilities(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->notifyModeChanged(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters] mCurrentFocusMode is not supported in current platform"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public disableUpdateFocusState(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    return-void
.end method

.method public getCurrentFocusMode()Ljava/lang/String;
    .locals 3

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFocusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public isFocusCanDo()Z
    .locals 4

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFocusCanDo] + focusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v3, "infinity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-nez v1, :cond_1

    const-string p0, "[isFocusCanDo] - mFocusAreaSupported is false"

    .line 122
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 125
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-nez p0, :cond_2

    const-string p0, "[isFocusCanDo] - mMeteringAreaSupported is false"

    .line 126
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_2
    const-string p0, "[isFocusCanDo] - return true"

    .line 129
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 117
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFocusCanDo] - focusMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideFocusMode] currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mCurrentFocusMode ="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 153
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eq p2, p1, :cond_0

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideFocusMode, requestChangeCommand currentValue:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetAutoFocusTriggered()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return-void
.end method

.method public restoreContinue()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreContinue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v2, "continuous-picture"

    .line 172
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "continuous-video"

    .line 173
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreContinue, sendSettingChangeRequest and requestChangeCommand, value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->sendSettingChangeRequest()V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    .line 56
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initPlatformSupportedValues] supportedFocusModeList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportContinuousVideoFocus()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->initFocusMode(Ljava/util/List;Z)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setFocusStateListener(Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateFocusArea(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    .line 136
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    return-void
.end method

.method public updateFocusCallback()V
    .locals 3

    .line 183
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFocusCallback requestChangeCommand: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
