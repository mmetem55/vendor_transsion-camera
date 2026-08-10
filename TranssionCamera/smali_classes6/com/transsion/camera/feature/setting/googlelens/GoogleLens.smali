.class public Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "GoogleLens.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final GOOGLE_LENS_SUPPORT:Ljava/lang/String; = "google_lens_support"

.field private static final GOOGLE_LENS_USE_NEW_API:Ljava/lang/String; = "google_lens_use_new_api"

.field private static final RESOURCES_TYPE:Ljava/lang/String; = "bool"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_google_lens"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCount:I

.field private mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

.field private mLensShowState:Z

.field private mLensStatus:I

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mCount:I

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;-><init>(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Landroid/app/Activity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->checkLensStatus(Landroid/content/Context;)V

    return-void
.end method

.method private checkLensStatus(Landroid/content/Context;)V
    .locals 2

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "checkLensStatus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "google_lens_use_new_api"

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->getResourcesValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;->checkLensStatus(Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;)V

    return-void
.end method

.method private getResourcesValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bool"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 286
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isGoogleLensSupport invalid resId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private initActivityField(Landroid/content/Context;)V
    .locals 1

    .line 139
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 140
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "context is not instanceof Activity"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_0
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private initGoogleLens(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    .line 122
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "google_lens_support"

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->getResourcesValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "GoogleLens is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->initActivityField(Landroid/content/Context;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->checkLensStatus(Landroid/content/Context;)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_check_lens_status"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_google_lens_click"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private refreshGoogleLens()V
    .locals 5

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "refreshGoogleLens callback is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 223
    sget-object v2, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshGoogleLens value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mLensStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v2, "on"

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 228
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensShowState:Z

    if-eq v3, v1, :cond_2

    .line 229
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensShowState:Z

    .line 230
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2
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

    const-string p0, "key_google_lens"

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 179
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

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    const-string p3, "on"

    .line 113
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 114
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->initGoogleLens(Landroid/content/Context;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 168
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 173
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onLensStatusFetched(I)V
    .locals 3

    .line 270
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLensStatusFetched status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iput p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mLensStatus:I

    if-eqz p1, :cond_0

    .line 274
    iget p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 275
    iput p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mCount:I

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;->pause()V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->checkLensStatus(Landroid/content/Context;)V

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onGoogleLensValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    .line 189
    sget-object p3, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideValues headerKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currentValue: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 243
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoogleLens pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    if-nez v1, :cond_0

    const-string p0, "pause mGoogleLensApi is null"

    .line 246
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    invoke-interface {v1}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;->pause()V

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mCount:I

    return-void
.end method

.method public resume()V
    .locals 2

    .line 256
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 258
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoogleLens resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mGoogleLensApi:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    if-nez p0, :cond_0

    const-string p0, "resume mGoogleLensApi is null"

    .line 261
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;->resume()V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 3

    .line 207
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 208
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingDataCallback settingDataCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->refreshGoogleLens()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 159
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mActivity:Landroid/app/Activity;

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_check_lens_status"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_google_lens_click"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
