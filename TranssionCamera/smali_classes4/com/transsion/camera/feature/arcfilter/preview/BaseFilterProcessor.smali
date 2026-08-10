.class public Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.super Ljava/lang/Object;
.source "BaseFilterProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IFilterProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;,
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;,
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_POST_VIEW:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

.field private mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

.field protected mContext:Landroid/content/Context;

.field protected volatile mCurrentFilterId:I

.field private final mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

.field private mFilterSupportIds:[I

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mResPath:Ljava/lang/String;

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field protected mSurfaceHeight:I

.field protected mSurfaceTextureMatrix:[F

.field protected mSurfaceWidth:I

.field private mThumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$aIU02KtxDo5k-QT22qcAdvr5BeY(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 34
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    .line 159
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mResPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initArcFilterEngine()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->uninitArcFilterEngine()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;[I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->handleLoadFilterIds([I)V

    return-void
.end method

.method private handleLoadFilterIds([I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 306
    aget v0, p1, v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-eq v0, v1, :cond_1

    .line 311
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "prepareEngineEx in"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-virtual {v2, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->PrepareEngineEx([I)I

    .line 313
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    const-string p0, "prepareEngineEx out"

    .line 314
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initArcFilterEngine()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initArcFilterEngine(): init begin "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-direct {v1}, Lcom/arcsoft/filter/ArcFilterEngine;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    .line 201
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mResPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v1, v2}, Lcom/arcsoft/filter/ArcFilterEngine;->Init(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v1}, Lcom/arcsoft/filter/ArcFilterEngine;->Init()I

    move-result v1

    .line 206
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initArcFilterEngine(): init end engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "initArcFilterEngine(): init end "

    .line 208
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    if-eqz v0, :cond_2

    .line 211
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->handleLoadFilterIds([I)V

    :cond_2
    return-void
.end method

.method private isValidFilter(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_filter"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->filterSelected(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private loadFilterIdResources()V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v2, v3, :cond_1

    .line 298
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADING:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 299
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    .line 301
    :cond_1
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFilterIdResources spend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms,mFilterIdsLoadedState = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", this:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private uninitArcFilterEngine()V
    .locals 2

    .line 216
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "uninitArcFilterEngine"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->UnInit()I

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    .line 221
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    return-void
.end method


# virtual methods
.method protected drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public filterSelected(Ljava/lang/String;)Z
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->isValidFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    .line 151
    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getCaptureFilterIdByPreviewId(Ljava/lang/String;)I

    move-result p1

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFunVideoFilterValue(Ljava/lang/String;)V

    .line 153
    iget p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz p1, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->loadFilterIdResources()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .locals 0

    .line 61
    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 62
    iput-object p3, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p5}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getSupportFilterIds(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 65
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_0

    .line 67
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_filter"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->filterSelected(Ljava/lang/String;)Z

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 0

    return-void
.end method

.method protected loadGLResourceFilterPreviewCallback(I)V
    .locals 0

    return-void
.end method

.method protected loadGLResourcesFilterPreviewCallback([I)V
    .locals 0

    return-void
.end method

.method public onPostViewData(IIIZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modePause()V

    :cond_0
    return-void
.end method

.method protected pauseFilterPreviewCallBack()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    :cond_0
    return-void
.end method

.method protected resumeFilterPreviewCallBack()V
    .locals 0

    return-void
.end method

.method public setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    :cond_0
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_filter"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 0

    return-void
.end method

.method public updateFilterSupportIds(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getSupportFilterIds(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeReload()V

    :cond_0
    return-void
.end method
