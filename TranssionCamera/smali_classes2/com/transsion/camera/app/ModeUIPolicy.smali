.class public Lcom/transsion/camera/app/ModeUIPolicy;
.super Ljava/lang/Object;
.source "ModeUIPolicy.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;


# static fields
.field private static final BOKEH_MODE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANO_MODE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_BACK_MODE_LIST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPER_NIGHT_MODE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final CAMERA_MODE_REORDER_GAP:I

.field private final MIN_MODE_NUM:I

.field private final mAllEntryName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackCameraDefaultMode:Ljava/lang/String;

.field private final mBackCameraModeNames:[Ljava/lang/String;

.field private mBundleInfo:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFrontCameraDefaultMode:Ljava/lang/String;

.field private final mFrontCameraModeNames:[Ljava/lang/String;

.field private mIsSecureCamera:Z

.field private mIsSmartMode:Z

.field private mNewModeOrder:[Ljava/lang/String;

.field private final mQuickCaptureModeNames:[Ljava/lang/String;

.field private final mSatCamera:Ljava/lang/String;

.field private final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mShortcutEntry:Ljava/lang/String;

.field private mSmartBackCameraModeNames:[Ljava/lang/String;

.field private mSmartFrontCameraModeNames:[Ljava/lang/String;

.field private mSourceIntent:Landroid/content/Intent;

.field private mSourceIntentFlag:Z

.field private final mVIPModeNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeUIPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.vsdof.SdofPhotoModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.vsdof.BackSdofPhotoModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.stblurmode.BackSTBlurModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    const-string v5, "com.transsion.camera.feature.mode.bwportrait.BWPortraitModeEntry"

    const-string v6, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    const-string v2, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PANO_MODE_LIST:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.slimbody.mode.SlimBodyModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.facebeauty.MultiFaceBeautyModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    const-string v5, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ModeUIPolicy$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    .line 116
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ModeUIPolicy$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Set;ZLcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/transsion/camera/app/common/manager/IScreenManager;",
            "Lcom/transsion/camera/app/common/storage/DataStore;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    iput-object p8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSatCamera:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    .line 130
    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBundleInfo:Landroid/os/Bundle;

    .line 131
    iput-object p4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    .line 132
    iput-boolean p5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSecureCamera:Z

    .line 133
    iput-object p6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 134
    iput-object p7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const p1, 0x7f0a003d

    .line 135
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    const p1, 0x7f0a0026

    .line 136
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    const p1, 0x7f030021

    .line 137
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f030022

    .line 138
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0300b5

    .line 139
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mQuickCaptureModeNames:[Ljava/lang/String;

    const p3, 0x7f030139

    .line 140
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenPocket()Z

    move-result p4

    if-eqz p4, :cond_0

    const p1, 0x7f03000a

    .line 143
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    const-string p4, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    const-string p5, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    .line 145
    invoke-static {p1, p4, p5}, Lcom/transsion/camera/app/ModeUIPolicy;->exchangePosition([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p2, p4, p5}, Lcom/transsion/camera/app/ModeUIPolicy;->exchangePosition([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 147
    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 148
    invoke-static {p2, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    .line 153
    :goto_0
    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    const p1, 0x7f100095

    .line 154
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    const p1, 0x7f10013c

    .line 155
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->updateSmartModeNames()V

    return-void
.end method

.method private doSwapArrayElement(II)V
    .locals 2

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v0, p0, p1

    .line 296
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 297
    aput-object v0, p0, p2

    return-void
.end method

.method private static exchangePosition([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v3, v2

    .line 311
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 312
    aget-object v4, p0, v0

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v0

    goto :goto_1

    .line 316
    :cond_1
    aget-object v4, p0, v0

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v1, :cond_4

    if-eq v3, v1, :cond_4

    .line 321
    aget-object p1, p0, v2

    .line 322
    aget-object p2, p0, v3

    aput-object p2, p0, v2

    .line 323
    aput-object p1, p0, v3

    :cond_4
    return-void
.end method

.method private executeSmartModeOrder(I)[Ljava/lang/String;
    .locals 10

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030021

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030022

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "build_in_features_mode_order"

    const-string v3, ""

    .line 185
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, ","

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    move p1, v2

    goto :goto_2

    .line 189
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    .line 190
    array-length v3, v3

    array-length v4, p1

    if-eq v3, v4, :cond_2

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    move p1, v6

    goto :goto_1

    :cond_2
    move p1, v2

    .line 194
    :goto_1
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 198
    :goto_2
    new-instance v3, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v7, "key_smart_mode_order"

    const-string v8, "off"

    invoke-virtual {v3, v7, v8, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    .line 200
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 201
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    if-le v4, v7, :cond_5

    .line 202
    aget-object v3, v3, v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 203
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v7, v6

    aget-object v4, v4, v7

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 204
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_3
    iget-object v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v9, v8

    if-ge v7, v9, :cond_5

    .line 205
    aget-object v8, v8, v7

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 206
    iget-object v9, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-direct {p0, v9}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sub-int/2addr v8, v3

    .line 207
    iget v9, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v8, v9, :cond_4

    goto :goto_4

    :cond_3
    sub-int/2addr v8, v4

    .line 212
    iget v9, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v8, v9, :cond_4

    :goto_4
    move p1, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-eqz p1, :cond_11

    .line 221
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_6
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v6

    if-ge p1, v3, :cond_8

    move v3, v2

    .line 222
    :goto_7
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v4

    sub-int/2addr v7, v6

    sub-int/2addr v7, p1

    if-ge v3, v7, :cond_7

    .line 223
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    aget-object v4, v4, v7

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v4, v7, :cond_6

    .line 225
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int v7, v3, v4

    add-int/2addr v4, v3

    add-int/2addr v4, v6

    invoke-direct {p0, v7, v4}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 230
    :cond_8
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_8
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_a

    .line 231
    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 232
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v3, v4, :cond_9

    .line 234
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_9

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 240
    :cond_a
    :goto_9
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_a
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_c

    .line 241
    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 242
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v7, v6

    aget-object v4, v4, v7

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v3, v4, :cond_b

    .line 244
    iget v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v3, v6

    invoke-direct {p0, v3, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_b

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 250
    :cond_c
    :goto_b
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_c
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    sub-int/2addr v4, v6

    if-ge p1, v4, :cond_f

    move v3, v2

    .line 251
    :goto_d
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v4

    sub-int/2addr v7, v6

    sub-int/2addr v7, p1

    if-ge v3, v7, :cond_e

    .line 252
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    aget-object v4, v4, v7

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v4, v7, :cond_d

    .line 254
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int v7, v3, v4

    add-int/2addr v4, v3

    add-int/2addr v4, v6

    invoke-direct {p0, v7, v4}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 259
    :cond_f
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v6

    .line 261
    :goto_e
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_10

    .line 262
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 264
    :cond_10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    :cond_11
    iget-boolean p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSecureCamera:Z

    if-eqz p1, :cond_16

    const/4 p1, 0x2

    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    const-string v1, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    .line 269
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 271
    iget v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_f
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_13

    .line 272
    aget-object v3, v3, v1

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 273
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_10

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 278
    :cond_13
    :goto_10
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v1

    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    if-le v3, v4, :cond_15

    sub-int/2addr v4, v6

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 279
    iget v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_11
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_15

    .line 280
    aget-object v3, v3, v1

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 281
    iget v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v3, v6

    invoke-direct {p0, v3, v1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_12

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_15
    :goto_12
    if-ge v2, p1, :cond_16

    .line 286
    aget-object v1, v0, v2

    .line 287
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 291
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    return-object p0
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 334
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 337
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private getNextMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p3

    .line 523
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p4, :cond_1

    .line 525
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNextMode vipPreCameraFace:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p3

    .line 528
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 529
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    .line 533
    :cond_3
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 534
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 535
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object p1

    :cond_5
    return-object p3
.end method

.method private getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 510
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 512
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getNextPanoMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 499
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    .line 500
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v1, "SpecifyMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "DocumentEntry"

    .line 351
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p2, "SuperNightMode"

    .line 354
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 355
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p2, "PortraitMode"

    .line 356
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "BokehMode"

    .line 357
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "BokehOffMode"

    .line 358
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p2, "FaceBeautyMode"

    .line 360
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "FaceBeauty"

    .line 361
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "SlimBody"

    .line 362
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "MultiFaceBeautyMode"

    .line 363
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "MultiFaceBeautyOffMode"

    .line 364
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p2, "FunVideoMode"

    .line 366
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "FunVideoOffMode"

    .line 367
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "FrontFunVideoMode"

    .line 368
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "FrontFunVideoOffMode"

    .line 369
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string p2, "ASDMode"

    .line 371
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "HDRMode"

    .line 372
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "HDROffMode"

    .line 373
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "SuperDefinitionOffMode"

    .line 374
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "SuperDefinitionOnMode"

    .line 375
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "MacroMode"

    .line 376
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "WideAngleMode"

    .line 377
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "FrontASDMode"

    .line 378
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    const-string p2, "VideoModeWithPortrait"

    .line 380
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p2, "ProfessionalMode"

    .line 382
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p2, "MovieMode"

    .line 384
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p2, "HighDefinitionMode"

    .line 386
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p2, "MagicSkyMode"

    .line 388
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0

    :cond_b
    :goto_0
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_1
    const-string p2, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_d
    :goto_2
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_e
    :goto_3
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 546
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isVideoClassModes(Ljava/lang/String;)Z
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03011b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private screenPocket()Z
    .locals 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v0, "1"

    .line 589
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "frontmodesstring"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backmodesstring"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 598
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ","

    .line 600
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    const-string v1, "open_camera_mode"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeauty"

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 400
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 401
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultMode mode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    iput-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object p1

    :cond_0
    const-string v1, "Video"

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v0, :cond_1

    .line 405
    iput-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object v1

    .line 408
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 410
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 411
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v3, "android.media.action.FANS_IMAGE_CAPTURE"

    .line 413
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.IntentASDModeEntry"

    return-object p0

    :cond_3
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    .line 415
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    return-object p0

    :cond_4
    const-string v3, "android.media.action.VIDEO_CAMERA"

    .line 417
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 418
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v3, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 419
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBundleInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    const-string v1, "ModeName"

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mShortcutEntry:Ljava/lang/String;

    .line 427
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mShortcutEntry:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 428
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mShortcutEntry:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    sget-object v1, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start specify camera mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 435
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v1, "ModeFromAod"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 437
    sget-object v1, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start camera mode from aod, cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", aodMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_9
    :goto_0
    return-object v1

    :cond_a
    :goto_1
    const-string p0, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    return-object p0

    .line 445
    :cond_b
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    .line 448
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 551
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "quick_capture_mode"

    .line 553
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mQuickCaptureModeNames:[Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "vip_mode"

    .line 555
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    return-object p0

    .line 558
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getRestoreModeByFacing(I)Ljava/lang/String;
    .locals 0

    .line 454
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    .line 457
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 564
    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 567
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartFrontCameraModeNames:[Ljava/lang/String;

    return-object p0

    .line 570
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    .line 465
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    .line 466
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 468
    :cond_1
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->PANO_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 469
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextPanoMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 470
    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 473
    :cond_3
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 474
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 475
    :cond_4
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 476
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 477
    :cond_5
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 478
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_7

    .line 481
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p2

    .line 485
    :cond_7
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSmartModeOrder()Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    return p0
.end method

.method public saveARCorePosition([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 611
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 612
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 613
    sget-object v2, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveARCorePosition,backPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,frontPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backarcoreposition"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v1, v5, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 616
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "frontarcoreposition"

    invoke-virtual {v1, v5, v0, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    .line 618
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 619
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveMoviePosition,backPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backmovieposition"

    invoke-virtual {v0, v2, p1, v1, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 622
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "frontmovieposition"

    invoke-virtual {p1, v0, p2, p0, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSourceIntent(Landroid/content/Intent;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 582
    iput-boolean p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 583
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSourceIntentFlag = true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateMetaInfo(Landroid/os/Bundle;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBundleInfo:Landroid/os/Bundle;

    return-void
.end method

.method public updateSmartModeNames()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 170
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->executeSmartModeOrder(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->executeSmartModeOrder(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartFrontCameraModeNames:[Ljava/lang/String;

    return-void
.end method
