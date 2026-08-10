.class public Lcom/faceunity/FURenderer;
.super Ljava/lang/Object;
.source "FURenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/FURenderer$FUItemHandler;,
        Lcom/faceunity/FURenderer$Builder;
    }
.end annotation


# static fields
.field private static final GESTURE_BIND_BUNDLES:[Ljava/lang/String;

.field private static final PTA_ALWAYS_BIND_ITEM_COUNT:I

.field private static final PTA_BOY_BUNDLES:[Ljava/lang/String;

.field private static final PTA_GIRL_BUNDLES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FURenderer"

.field private static mBlurLevel:F = 0.7f

.field private static mBlurType:F = 2.0f

.field private static mCheekNarrow:F = 0.0f

.field private static mCheekSmall:F = 0.0f

.field private static mCheekThinning:F = 0.0f

.field private static mCheekV:F = 0.5f

.field private static mColorLevel:F = 0.3f

.field private static mEyeBright:F = 0.0f

.field private static mEyeCircle:F = 0.0f

.field private static mEyeEnlarging:F = 0.4f

.field private static mFaceShape:F = 4.0f

.field private static mFaceShapeLevel:F = 1.0f

.field private static mFilterLevel:F = 0.4f

.field private static mIntensityCheekbones:F = 0.0f

.field private static mIntensityChin:F = 0.3f

.field private static mIntensityForehead:F = 0.3f

.field private static mIntensityLowerJaw:F = 0.0f

.field private static mIntensityMouth:F = 0.4f

.field private static mIntensityNose:F = 0.5f

.field private static mRedLevel:F = 0.3f

.field private static mSharpen:F = 0.2f

.field private static mToothWhiten:F = 0.0f

.field private static sFilterName:Ljava/lang/String; = "ziran2"

.field private static sIsBeautyOn:F = 1.0f

.field private static sMicroCanthus:F = 0.0f

.field private static sMicroEyeRotate:F = 0.5f

.field private static sMicroEyeSpace:F = 0.5f

.field private static sMicroLongNose:F = 0.5f

.field private static sMicroNasolabialFolds:F = 0.0f

.field private static sMicroPhiltrum:F = 0.5f

.field private static sMicroPouch:F

.field private static sMicroSmile:F


# instance fields
.field private faceRectData:[F

.field private isNeedAnimoji3D:Z

.field private isNeedBeautyHair:Z

.field private isNeedBodySlim:Z

.field private isNeedFaceBeauty:Z

.field private isNeedPosterFace:Z

.field private mAlphaL:F

.field private mBgSegGreenItem:I

.field private mBodySlimStrength:F

.field private mCameraFacing:I

.field private mCartoonFilterStyle:I

.field private mChromaThres:F

.field private mChromaThresT:F

.field private mContext:Landroid/content/Context;

.field private mControllerBoundItems:[I

.field public mCurrentFrameCnt:I

.field private mDefaultEffect:Lcom/faceunity/entity/Effect;

.field private mDeviceOrientation:I

.field private mEndX:F

.field private mEndY:F

.field private mEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalInputType:I

.field private mFrameId:I

.field public mFuCallStartTime:J

.field private mFuItemHandler:Landroid/os/Handler;

.field private mGlThreadId:J

.field private mHairColorIndex:I

.field private mHairColorStrength:F

.field private mHairColorType:I

.field private mHeadSlimStrength:F

.field private mHipSlimStrength:F

.field private mHumanTrackScene:I

.field private mInputImageFormat:I

.field private mInputOrientation:I

.field private mInputTextureType:I

.field private mIsCreateEGLContext:Z

.field private mIsLoadAiHandProcessor:Z

.field private mIsLoadAiHumanProcessor:Z

.field private mIsMakeupFlipPoints:Z

.field private volatile mIsNeedUpdateFaceBeauty:Z

.field private mIsSystemCameraRecord:Z

.field private mItemsArray:[I

.field private mKeyColor:[D

.field public mLastOneHundredFrameTimeStamp:J

.field private mLegSlimStrength:F

.field private mLegThinSlimStrength:F

.field private mLightMakeupItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/faceunity/entity/LightMakeupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

.field private mMakeupItemHandleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeupParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFaces:I

.field private mMaxHumans:I

.field public mNeedBenchmark:Z

.field private mOnBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOnFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOnSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOneHundredFrameFUTime:J

.field private mRotationMode:I

.field private mRunBgSegGreen:Z

.field private mShoulderSlimStrength:F

.field private mStartX:F

.field private mStartY:F

.field private mTrackFaceStatus:I

.field private mTrackGestureStatus:I

.field private mTrackHumanStatus:I

.field public mTrackingStatus:I

.field private mWaistSlimStrength:F

.field private rotationData:[F


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "head.bundle"

    const-string v1, "midBody_male.bundle"

    const-string v2, "male_hair_5.bundle"

    const-string v3, "toushi_7.bundle"

    const-string v4, "peishi_erding_2.bundle"

    const-string v5, "waitao_3.bundle"

    const-string v6, "kuzi_changku_5.bundle"

    const-string v7, "xiezi_tuoxie_2.bundle"

    .line 855
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/FURenderer;->PTA_BOY_BUNDLES:[Ljava/lang/String;

    const-string v1, "head.bundle"

    const-string v2, "midBody_female.bundle"

    const-string v3, "female_hair_23.bundle"

    const-string v4, "toushi_5.bundle"

    const-string v5, "taozhuang_12.bundle"

    const-string v6, "facemakeup_3.bundle"

    const-string v7, "xiezi_danxie.bundle"

    .line 858
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/FURenderer;->PTA_GIRL_BUNDLES:[Ljava/lang/String;

    const-string v1, "anim_idle.bundle"

    const-string v2, "anim_eight.bundle"

    const-string v3, "anim_fist.bundle"

    const-string v4, "anim_greet.bundle"

    const-string v5, "anim_gun.bundle"

    const-string v6, "anim_heart.bundle"

    const-string v7, "anim_hold.bundle"

    const-string v8, "anim_korheart.bundle"

    const-string v9, "anim_merge.bundle"

    const-string v10, "anim_ok.bundle"

    const-string v11, "anim_one.bundle"

    const-string v12, "anim_palm.bundle"

    const-string v13, "anim_rock.bundle"

    const-string v14, "anim_six.bundle"

    const-string v15, "anim_thumb.bundle"

    const-string v16, "anim_two.bundle"

    .line 861
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/FURenderer;->GESTURE_BIND_BUNDLES:[Ljava/lang/String;

    .line 867
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/faceunity/FURenderer;->PTA_ALWAYS_BIND_ITEM_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 171
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->isNeedFaceBeauty:Z

    .line 176
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBeautyHair:Z

    .line 177
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedAnimoji3D:Z

    .line 178
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedPosterFace:Z

    .line 179
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBodySlim:Z

    .line 182
    iput v0, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    .line 183
    iput v0, p0, Lcom/faceunity/FURenderer;->mInputImageFormat:I

    .line 184
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    const/4 v2, 0x0

    .line 185
    iput v2, p0, Lcom/faceunity/FURenderer;->mBodySlimStrength:F

    .line 186
    iput v2, p0, Lcom/faceunity/FURenderer;->mLegSlimStrength:F

    .line 187
    iput v2, p0, Lcom/faceunity/FURenderer;->mWaistSlimStrength:F

    const/high16 v3, 0x3f000000    # 0.5f

    .line 188
    iput v3, p0, Lcom/faceunity/FURenderer;->mShoulderSlimStrength:F

    .line 189
    iput v2, p0, Lcom/faceunity/FURenderer;->mHipSlimStrength:F

    .line 190
    iput v2, p0, Lcom/faceunity/FURenderer;->mHeadSlimStrength:F

    .line 191
    iput v2, p0, Lcom/faceunity/FURenderer;->mLegThinSlimStrength:F

    const/16 v3, 0x10e

    .line 193
    iput v3, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    const/4 v3, -0x1

    .line 194
    iput v3, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    .line 196
    iput v1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    const/4 v4, 0x4

    .line 197
    iput v4, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    .line 198
    iput v1, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    const v5, 0x3f19999a    # 0.6f

    .line 200
    iput v5, p0, Lcom/faceunity/FURenderer;->mHairColorStrength:F

    .line 201
    iput v1, p0, Lcom/faceunity/FURenderer;->mHairColorType:I

    .line 202
    iput v0, p0, Lcom/faceunity/FURenderer;->mHairColorIndex:I

    .line 205
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v5, p0, Lcom/faceunity/FURenderer;->mMakeupParams:Ljava/util/Map;

    .line 207
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v5, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    .line 211
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    new-array v5, v4, [F

    .line 215
    iput-object v5, p0, Lcom/faceunity/FURenderer;->rotationData:[F

    new-array v4, v4, [F

    .line 216
    iput-object v4, p0, Lcom/faceunity/FURenderer;->faceRectData:[F

    .line 221
    iput v3, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    const/16 v4, 0x5a

    .line 224
    iput v4, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    .line 226
    iput v1, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    const/4 v4, 0x3

    new-array v4, v4, [D

    .line 234
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/faceunity/FURenderer;->mKeyColor:[D

    const v4, 0x3ee66666    # 0.45f

    .line 235
    iput v4, p0, Lcom/faceunity/FURenderer;->mChromaThres:F

    const v4, 0x3e99999a    # 0.3f

    .line 236
    iput v4, p0, Lcom/faceunity/FURenderer;->mChromaThresT:F

    const v4, 0x3e4ccccd    # 0.2f

    .line 237
    iput v4, p0, Lcom/faceunity/FURenderer;->mAlphaL:F

    .line 238
    iput v2, p0, Lcom/faceunity/FURenderer;->mStartX:F

    .line 239
    iput v2, p0, Lcom/faceunity/FURenderer;->mStartY:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 240
    iput v2, p0, Lcom/faceunity/FURenderer;->mEndX:F

    .line 241
    iput v2, p0, Lcom/faceunity/FURenderer;->mEndY:F

    .line 242
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    .line 874
    iput v1, p0, Lcom/faceunity/FURenderer;->mHumanTrackScene:I

    .line 1075
    iput v3, p0, Lcom/faceunity/FURenderer;->mTrackHumanStatus:I

    .line 1076
    iput v3, p0, Lcom/faceunity/FURenderer;->mTrackFaceStatus:I

    .line 1077
    iput v3, p0, Lcom/faceunity/FURenderer;->mTrackGestureStatus:I

    .line 1663
    iput v0, p0, Lcom/faceunity/FURenderer;->mTrackingStatus:I

    .line 1701
    iput v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    const-wide/16 v2, 0x0

    .line 1702
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mLastOneHundredFrameTimeStamp:J

    .line 1703
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    .line 1704
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    .line 1705
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mFuCallStartTime:J

    .line 350
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mContext:Landroid/content/Context;

    .line 351
    iput-boolean p2, p0, Lcom/faceunity/FURenderer;->mIsCreateEGLContext:Z

    return-void

    :array_0
    .array-data 8
        0x0
        0x406fe00000000000L    # 255.0
        0x0
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    return p0
.end method

.method static synthetic access$1002(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/faceunity/FURenderer;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->setBeautyBodyOrientation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mHairColorIndex:I

    return p0
.end method

.method static synthetic access$1800(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mHairColorStrength:F

    return p0
.end method

.method static synthetic access$1900(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/faceunity/FURenderer;->loadItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2}, Lcom/faceunity/FURenderer;->loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    return p0
.end method

.method static synthetic access$2300(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mBodySlimStrength:F

    return p0
.end method

.method static synthetic access$2400(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mLegSlimStrength:F

    return p0
.end method

.method static synthetic access$2500(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mWaistSlimStrength:F

    return p0
.end method

.method static synthetic access$2600(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mShoulderSlimStrength:F

    return p0
.end method

.method static synthetic access$2700(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mHipSlimStrength:F

    return p0
.end method

.method static synthetic access$2800(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mHeadSlimStrength:F

    return p0
.end method

.method static synthetic access$2900(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mLegThinSlimStrength:F

    return p0
.end method

.method static synthetic access$300(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    return p0
.end method

.method static synthetic access$3000(Lcom/faceunity/FURenderer;)[D
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mKeyColor:[D

    return-object p0
.end method

.method static synthetic access$3002(Lcom/faceunity/FURenderer;[D)[D
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mKeyColor:[D

    return-object p1
.end method

.method static synthetic access$302(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    return p1
.end method

.method static synthetic access$3100(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mChromaThres:F

    return p0
.end method

.method static synthetic access$3102(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mChromaThres:F

    return p1
.end method

.method static synthetic access$3200(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mChromaThresT:F

    return p0
.end method

.method static synthetic access$3202(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mChromaThresT:F

    return p1
.end method

.method static synthetic access$3300(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mAlphaL:F

    return p0
.end method

.method static synthetic access$3302(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mAlphaL:F

    return p1
.end method

.method static synthetic access$3400(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mStartX:F

    return p0
.end method

.method static synthetic access$3402(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mStartX:F

    return p1
.end method

.method static synthetic access$3500(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mStartY:F

    return p0
.end method

.method static synthetic access$3502(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mStartY:F

    return p1
.end method

.method static synthetic access$3600(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mEndX:F

    return p0
.end method

.method static synthetic access$3602(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mEndX:F

    return p1
.end method

.method static synthetic access$3700(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mEndY:F

    return p0
.end method

.method static synthetic access$3702(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mEndY:F

    return p1
.end method

.method static synthetic access$3800(Lcom/faceunity/FURenderer;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mBgSegGreenItem:I

    return p0
.end method

.method static synthetic access$3902(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mBgSegGreenItem:I

    return p1
.end method

.method static synthetic access$4002(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    return p1
.end method

.method static synthetic access$402(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    return p1
.end method

.method static synthetic access$4102(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputImageFormat:I

    return p1
.end method

.method static synthetic access$4200(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    return p0
.end method

.method static synthetic access$4202(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    return p1
.end method

.method static synthetic access$4302(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedFaceBeauty:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedBodySlim:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedAnimoji3D:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedBeautyHair:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedPosterFace:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mOnBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/faceunity/FURenderer;Lcom/vskit/arsdk/portal/ARCallback;)Lcom/vskit/arsdk/portal/ARCallback;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mOnBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHandProcessor:Z

    return p1
.end method

.method static synthetic access$500(Lcom/faceunity/FURenderer;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->resetTrackStatus()V

    return-void
.end method

.method static synthetic access$5002(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHumanProcessor:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/faceunity/FURenderer;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mMakeupParams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/MakeupEntity;)Lcom/faceunity/entity/MakeupEntity;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/faceunity/FURenderer;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/faceunity/FURenderer;->mIsMakeupFlipPoints:Z

    return p0
.end method

.method static synthetic access$5402(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsMakeupFlipPoints:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mHairColorType:I

    return p0
.end method

.method static synthetic access$600(Lcom/faceunity/FURenderer;)[I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    return p0
.end method

.method static synthetic access$702(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    return p1
.end method

.method static synthetic access$802(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    return p1
.end method

.method static synthetic access$902(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    return p1
.end method

.method private calculateRotModeLagacy()I
    .locals 3

    .line 1260
    iget v0, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    const/4 v1, 0x1

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    .line 1261
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-ne v0, v1, :cond_0

    .line 1262
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    div-int/lit8 p0, p0, 0x5a

    goto :goto_0

    .line 1264
    :cond_0
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    add-int/lit16 p0, p0, -0xb4

    div-int/lit8 p0, p0, 0x5a

    goto :goto_0

    .line 1267
    :cond_1
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-ne v0, v1, :cond_2

    .line 1268
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    add-int/lit16 p0, p0, 0xb4

    div-int/lit8 p0, p0, 0x5a

    goto :goto_0

    .line 1270
    :cond_2
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    div-int/lit8 p0, p0, 0x5a

    :goto_0
    return p0
.end method

.method private calculateRotationMode()I
    .locals 8

    .line 360
    iget v0, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    const/16 v3, 0x10e

    const/4 v4, 0x1

    const/16 v5, 0x5a

    if-ne v0, v4, :cond_3

    .line 365
    iget p0, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    if-eq p0, v5, :cond_2

    if-eq p0, v3, :cond_1

    return v1

    :cond_1
    return v4

    :cond_2
    return v2

    .line 379
    :cond_3
    iget v0, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    const/4 v6, 0x2

    const/16 v7, 0xb4

    if-ne v0, v3, :cond_7

    .line 380
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-ne v0, v4, :cond_4

    .line 381
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    div-int/lit8 v1, p0, 0x5a

    goto :goto_2

    .line 383
    :cond_4
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    if-ne p0, v7, :cond_5

    goto :goto_2

    :cond_5
    if-nez p0, :cond_6

    goto :goto_1

    .line 388
    :cond_6
    div-int/lit8 v1, p0, 0x5a

    goto :goto_2

    :cond_7
    if-ne v0, v5, :cond_e

    .line 392
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-nez v0, :cond_b

    .line 393
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    if-ne p0, v5, :cond_8

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_8
    if-ne p0, v3, :cond_a

    :cond_9
    move v1, v4

    goto :goto_2

    .line 398
    :cond_a
    div-int/lit8 v1, p0, 0x5a

    goto :goto_2

    .line 401
    :cond_b
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    if-nez p0, :cond_c

    :goto_1
    move v1, v6

    goto :goto_2

    :cond_c
    if-ne p0, v5, :cond_d

    goto :goto_0

    :cond_d
    if-ne p0, v7, :cond_9

    :cond_e
    :goto_2
    return v1
.end method

.method private destroyControllerRelated()V
    .locals 6

    .line 825
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mControllerBoundItems:[I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    aget v0, v0, v1

    const-wide/16 v2, 0x0

    const-string v4, "enable_human_processor"

    .line 827
    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 828
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mControllerBoundItems:[I

    invoke-direct {p0, v2}, Lcom/faceunity/FURenderer;->validateItems([I)[I

    move-result-object v2

    .line 829
    sget-object v3, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroyControllerRelated: unbind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {v0, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 831
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 832
    aget v3, v2, v0

    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 834
    :cond_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 835
    iput-object v0, p0, Lcom/faceunity/FURenderer;->mControllerBoundItems:[I

    :cond_1
    return-void
.end method

.method private static loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 303
    invoke-static {p2}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/FileUtil;->getAssertByte(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 308
    invoke-static {p0, p2}, Lcom/faceunity/wrapper/faceunity;->fuLoadAIModelFromPackage([BI)I

    move-result p0

    .line 309
    sget-object p1, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAiModel. type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isLoaded: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v1, :cond_1

    const-string p0, "yes"

    goto :goto_0

    :cond_1
    const-string p0, "no"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static loadItem(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1688
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getFileData(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1690
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1693
    :goto_0
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadItem. bundlePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", itemHandle: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private onLightMakeupSelected(Lcom/faceunity/entity/LightMakeupItem;F)V
    .locals 3

    .line 1625
    invoke-virtual {p1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v0

    .line 1626
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/entity/LightMakeupItem;

    if-eqz v1, :cond_0

    .line 1628
    invoke-virtual {v1, p2}, Lcom/faceunity/entity/LightMakeupItem;->setLevel(F)V

    goto :goto_0

    .line 1631
    :cond_0
    iget-object p2, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/faceunity/entity/LightMakeupItem;->cloneSelf()Lcom/faceunity/entity/LightMakeupItem;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    :goto_0
    iget-object p2, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    if-nez p2, :cond_1

    .line 1634
    new-instance p2, Lcom/faceunity/FURenderer$24;

    invoke-direct {p2, p0, p1}, Lcom/faceunity/FURenderer$24;-><init>(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/LightMakeupItem;)V

    invoke-virtual {p0, p2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    .line 1641
    invoke-static {p2, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method private static releaseAiModel(I)V
    .locals 5

    .line 319
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 320
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuReleaseAIModel(I)I

    move-result v0

    .line 321
    sget-object v2, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAiModel. type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isReleased: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_0

    const-string p0, "yes"

    goto :goto_0

    :cond_0
    const-string p0, "no"

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static releaseAllAiModel()V
    .locals 1

    const/4 v0, 0x2

    .line 326
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    const/4 v0, 0x4

    .line 327
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    const/16 v0, 0x8

    .line 328
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    const/high16 v0, 0x10000

    .line 329
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    return-void
.end method

.method private resetTrackStatus()V
    .locals 0

    .line 820
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnCameraChange()V

    .line 821
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuHumanProcessorReset()V

    return-void
.end method

.method private setBeautyBodyOrientation()V
    .locals 3

    .line 1200
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 1202
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result p0

    int-to-double v1, p0

    const-string p0, "Orientation"

    .line 1203
    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method

.method private setEffectRotationMode(Lcom/faceunity/entity/Effect;I)V
    .locals 2

    .line 1245
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ctrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1246
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotModeLagacy()I

    move-result p0

    goto :goto_0

    .line 1248
    :cond_0
    iget p0, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    :goto_0
    int-to-double p0, p0

    const-string v0, "rotMode"

    .line 1250
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "rotationMode"

    .line 1251
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "rotation_mode"

    .line 1253
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "freeRotMode"

    .line 1255
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method private validateItems([I)[I
    .locals 6

    .line 840
    array-length p0, p1

    new-array p0, p0, [I

    .line 842
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    if-lez v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 844
    aput v4, p0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 847
    :cond_1
    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public benchmarkFPS()V
    .locals 6

    .line 1710
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    if-nez v0, :cond_0

    return-void

    .line 1713
    :cond_0
    iget v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1714
    iput v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    .line 1715
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const v0, 0x4e6e6b28    # 1.0E9f

    .line 1716
    iget-wide v4, p0, Lcom/faceunity/FURenderer;->mLastOneHundredFrameTimeStamp:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    div-float/2addr v4, v1

    div-float/2addr v0, v4

    float-to-double v4, v0

    .line 1717
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mLastOneHundredFrameTimeStamp:J

    .line 1718
    iget-wide v2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    long-to-float v0, v2

    div-float/2addr v0, v1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    .line 1719
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    .line 1721
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mOnFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_1

    .line 1722
    invoke-interface {p0, v4, v5, v0, v1}, Lcom/vskit/arsdk/portal/ARCallback;->onFpsChange(DD)V

    :cond_1
    return-void
.end method

.method public onCameraChange(II)V
    .locals 3

    .line 1179
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraChange. cameraFacing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inputOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v0, Lcom/faceunity/FURenderer$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/faceunity/FURenderer$14;-><init>(Lcom/faceunity/FURenderer;II)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 721
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 724
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 727
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 728
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    .line 731
    :cond_1
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    return-void
.end method

.method public onDrawFrame([BIII)I
    .locals 8

    if-lez p2, :cond_4

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    if-gtz p4, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/faceunity/FURenderer;->prepareDrawFrame()V

    .line 596
    iget v0, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    iget v1, p0, Lcom/faceunity/FURenderer;->mInputImageFormat:I

    or-int/2addr v0, v1

    .line 597
    iget v1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x20

    :cond_1
    move v3, v0

    .line 600
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    if-eqz v0, :cond_2

    .line 601
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/faceunity/FURenderer;->mFuCallStartTime:J

    .line 602
    :cond_2
    iget v6, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    iget-object v7, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/faceunity/wrapper/faceunity;->fuDualInputToTexture([BIIIII[I)I

    move-result p1

    .line 603
    iget-boolean p2, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    if-eqz p2, :cond_3

    .line 604
    iget-wide p2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/faceunity/FURenderer;->mFuCallStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    :cond_3
    return p1

    .line 591
    :cond_4
    :goto_0
    sget-object p0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string p1, "onDrawFrame data null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onEffectSelected(Lcom/faceunity/entity/Effect;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1328
    :cond_0
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    .line 1329
    iget-object p1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 1330
    new-instance p1, Lcom/faceunity/FURenderer$19;

    invoke-direct {p1, p0}, Lcom/faceunity/FURenderer$19;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1338
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1339
    iget-object p1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    invoke-static {p1, v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public onFilterNameSelected(Ljava/lang/String;)V
    .locals 0

    .line 1351
    sput-object p1, Lcom/faceunity/FURenderer;->sFilterName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1352
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    return-void
.end method

.method public onLightMakeupCombinationSelected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/entity/LightMakeupItem;",
            ">;)V"
        }
    .end annotation

    .line 1832
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1833
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1834
    new-instance v2, Lcom/faceunity/FURenderer$28;

    invoke-direct {v2, p0, v1}, Lcom/faceunity/FURenderer$28;-><init>(Lcom/faceunity/FURenderer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    .line 1846
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1847
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1848
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/faceunity/entity/LightMakeupItem;

    .line 1849
    invoke-virtual {v2}, Lcom/faceunity/entity/LightMakeupItem;->getLevel()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/faceunity/FURenderer;->onLightMakeupSelected(Lcom/faceunity/entity/LightMakeupItem;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1852
    :cond_1
    new-instance p1, Lcom/faceunity/FURenderer$29;

    invoke-direct {p1, p0}, Lcom/faceunity/FURenderer$29;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onMusicFilterTime(J)V
    .locals 1

    .line 1315
    new-instance v0, Lcom/faceunity/FURenderer$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/faceunity/FURenderer$18;-><init>(Lcom/faceunity/FURenderer;J)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 5

    .line 438
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    .line 440
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/faceunity/FURenderer;->mGlThreadId:J

    .line 441
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FUItemWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 443
    new-instance v1, Lcom/faceunity/FURenderer$FUItemHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/faceunity/FURenderer$FUItemHandler;-><init>(Lcom/faceunity/FURenderer;Landroid/os/Looper;)V

    .line 444
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    .line 451
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mIsCreateEGLContext:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuCreateEGLContext()V

    :cond_0
    const/4 v0, 0x0

    .line 455
    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    .line 456
    iget v3, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    invoke-virtual {p0, v3}, Lcom/faceunity/FURenderer;->setMaxFaces(I)V

    .line 457
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result v3

    .line 458
    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 459
    iput v3, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    .line 461
    iget-boolean v3, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHumanProcessor:Z

    if-eqz v3, :cond_1

    .line 462
    new-instance v3, Lcom/faceunity/FURenderer$2;

    invoke-direct {v3, p0}, Lcom/faceunity/FURenderer$2;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    :cond_1
    iget-boolean v3, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHandProcessor:Z

    if-eqz v3, :cond_2

    .line 471
    new-instance v3, Lcom/faceunity/FURenderer$3;

    invoke-direct {v3, p0}, Lcom/faceunity/FURenderer$3;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    :cond_2
    iget-boolean v3, p0, Lcom/faceunity/FURenderer;->isNeedFaceBeauty:Z

    if-eqz v3, :cond_3

    .line 479
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    :cond_3
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBeautyHair:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 482
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    :cond_4
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedAnimoji3D:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 485
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    :cond_5
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBodySlim:Z

    if-eqz v0, :cond_6

    .line 488
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    :cond_6
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedPosterFace:Z

    if-eqz v0, :cond_7

    .line 491
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/faceunity/FURenderer;->mContext:Landroid/content/Context;

    const-string v4, "change_face/change_face.bundle"

    invoke-static {v3, v4}, Lcom/faceunity/FURenderer;->loadItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 495
    :cond_7
    iget v0, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    const/4 v2, -0x1

    .line 496
    iput v2, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    .line 497
    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->setCartoonFilter(I)V

    .line 500
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    .line 501
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 505
    :cond_8
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    if-eqz v0, :cond_9

    const/4 v2, 0x7

    .line 506
    new-instance v3, Lcom/faceunity/entity/MakeupEntity;

    invoke-direct {v3, v0}, Lcom/faceunity/entity/MakeupEntity;-><init>(Lcom/faceunity/entity/MakeupEntity;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 510
    :cond_9
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 511
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/faceunity/FURenderer;->onLightMakeupCombinationSelected(Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 9

    .line 738
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 741
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 742
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 745
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 746
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    .line 748
    iput v0, p0, Lcom/faceunity/FURenderer;->mBgSegGreenItem:I

    const-wide/16 v1, 0x0

    .line 749
    iput-wide v1, p0, Lcom/faceunity/FURenderer;->mGlThreadId:J

    .line 750
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_8

    const/4 v2, 0x5

    .line 751
    aget v1, v1, v2

    if-lez v1, :cond_2

    const-string v2, "tex_input"

    .line 753
    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuDeleteTexForItem(ILjava/lang/String;)I

    const-string v2, "tex_template"

    .line 754
    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuDeleteTexForItem(ILjava/lang/String;)I

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    aget v1, v1, v3

    if-lez v1, :cond_3

    .line 759
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 760
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 761
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/faceunity/param/MakeupParamHelper;->getMakeupTextureKeyByType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/faceunity/wrapper/faceunity;->fuDeleteTexForItem(ILjava/lang/String;)I

    goto :goto_0

    .line 765
    :cond_3
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_8

    .line 767
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v2

    if-lez v2, :cond_4

    new-array v2, v4, [I

    .line 768
    iget-object v3, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v3}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v3

    aput v3, v2, v0

    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 769
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v2}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v2

    invoke-static {v2}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 770
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v2, v0}, Lcom/faceunity/entity/MakeupEntity;->setItemHandle(I)V

    .line 772
    :cond_4
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 774
    iget-object v3, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 775
    new-array v5, v2, [I

    move v6, v0

    .line 776
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v7, v6, 0x1

    .line 777
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v6

    move v6, v7

    goto :goto_1

    .line 779
    :cond_5
    invoke-static {v1, v5}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_7

    .line 780
    aget v3, v5, v1

    if-lez v3, :cond_6

    .line 782
    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 785
    :cond_7
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 790
    :cond_8
    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    .line 791
    iput-boolean v4, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    .line 792
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->resetTrackStatus()V

    .line 793
    invoke-static {}, Lcom/faceunity/FURenderer;->releaseAllAiModel()V

    .line 794
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->destroyControllerRelated()V

    .line 795
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    array-length v2, v1

    move v3, v0

    :goto_3
    if-ge v3, v2, :cond_a

    aget v4, v1, v3

    if-lez v4, :cond_9

    .line 797
    invoke-static {v4}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 800
    :cond_a
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 801
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    .line 802
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDone()V

    .line 803
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnDeviceLost()V

    .line 804
    iget-boolean p0, p0, Lcom/faceunity/FURenderer;->mIsCreateEGLContext:Z

    if-eqz p0, :cond_b

    .line 805
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuReleaseEGLContext()V

    :cond_b
    return-void
.end method

.method public prepareDrawFrame()V
    .locals 6

    .line 1084
    invoke-virtual {p0}, Lcom/faceunity/FURenderer;->benchmarkFPS()V

    const/16 v0, 0x400

    .line 1086
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1087
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuIsTracking()I

    move-result v0

    .line 1088
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/faceunity/FURenderer;->mTrackFaceStatus:I

    if-eq v3, v0, :cond_0

    .line 1089
    iput v0, p0, Lcom/faceunity/FURenderer;->mTrackFaceStatus:I

    .line 1091
    invoke-interface {v2, v0}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    :cond_0
    const/high16 v0, 0x10000

    .line 1094
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1095
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuHumanProcessorGetNumResults()I

    move-result v0

    .line 1096
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/faceunity/FURenderer;->mTrackHumanStatus:I

    if-eq v3, v0, :cond_1

    .line 1097
    iput v0, p0, Lcom/faceunity/FURenderer;->mTrackHumanStatus:I

    .line 1099
    invoke-interface {v2, v0}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    :cond_1
    const/16 v0, 0x8

    .line 1102
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1103
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuHandDetectorGetResultNumHands()I

    move-result v0

    .line 1104
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/faceunity/FURenderer;->mTrackGestureStatus:I

    if-eq v2, v0, :cond_2

    .line 1105
    iput v0, p0, Lcom/faceunity/FURenderer;->mTrackGestureStatus:I

    .line 1107
    invoke-interface {v1, v0}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    .line 1112
    :cond_2
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemError()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1114
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemErrorString(I)Ljava/lang/String;

    move-result-object v1

    .line 1115
    sget-object v2, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", error message: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mOnSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v0, :cond_3

    .line 1117
    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARCallback;->onSystemError(Ljava/lang/String;)V

    .line 1122
    :cond_3
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    aget v0, v0, v1

    if-lez v0, :cond_4

    .line 1125
    sget v2, Lcom/faceunity/FURenderer;->sIsBeautyOn:F

    float-to-double v2, v2

    const-string v4, "is_beauty_on"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1126
    sget-object v2, Lcom/faceunity/FURenderer;->sFilterName:Ljava/lang/String;

    const-string v3, "filter_name"

    invoke-static {v0, v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1127
    sget v2, Lcom/faceunity/FURenderer;->mFilterLevel:F

    float-to-double v2, v2

    const-string v4, "filter_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-wide/16 v2, 0x0

    const-string v4, "heavy_blur"

    .line 1129
    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1130
    sget v2, Lcom/faceunity/FURenderer;->mBlurType:F

    float-to-double v2, v2

    const-string v4, "blur_type"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    .line 1131
    sget v4, Lcom/faceunity/FURenderer;->mBlurLevel:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    const-string v2, "blur_level"

    invoke-static {v0, v2, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1132
    sget v2, Lcom/faceunity/FURenderer;->mColorLevel:F

    float-to-double v2, v2

    const-string v4, "color_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1133
    sget v2, Lcom/faceunity/FURenderer;->mSharpen:F

    float-to-double v2, v2

    const-string v4, "sharpen"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1134
    sget v2, Lcom/faceunity/FURenderer;->mRedLevel:F

    float-to-double v2, v2

    const-string v4, "red_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1135
    sget v2, Lcom/faceunity/FURenderer;->mEyeBright:F

    float-to-double v2, v2

    const-string v4, "eye_bright"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1136
    sget v2, Lcom/faceunity/FURenderer;->mToothWhiten:F

    float-to-double v2, v2

    const-string v4, "tooth_whiten"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1138
    sget v2, Lcom/faceunity/FURenderer;->mFaceShapeLevel:F

    float-to-double v2, v2

    const-string v4, "face_shape_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1139
    sget v2, Lcom/faceunity/FURenderer;->mFaceShape:F

    float-to-double v2, v2

    const-string v4, "face_shape"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1140
    sget v2, Lcom/faceunity/FURenderer;->mEyeEnlarging:F

    float-to-double v2, v2

    const-string v4, "eye_enlarging"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1141
    sget v2, Lcom/faceunity/FURenderer;->mEyeCircle:F

    float-to-double v2, v2

    const-string v4, "intensity_eye_circle"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1142
    sget v2, Lcom/faceunity/FURenderer;->mCheekThinning:F

    float-to-double v2, v2

    const-string v4, "cheek_thinning"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1143
    sget v2, Lcom/faceunity/FURenderer;->mCheekNarrow:F

    float-to-double v2, v2

    const-string v4, "cheek_narrow"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1144
    sget v2, Lcom/faceunity/FURenderer;->mCheekSmall:F

    float-to-double v2, v2

    const-string v4, "cheek_small"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1145
    sget v2, Lcom/faceunity/FURenderer;->mCheekV:F

    float-to-double v2, v2

    const-string v4, "cheek_v"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1146
    sget v2, Lcom/faceunity/FURenderer;->mIntensityCheekbones:F

    float-to-double v2, v2

    const-string v4, "intensity_cheekbones"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1147
    sget v2, Lcom/faceunity/FURenderer;->mIntensityLowerJaw:F

    float-to-double v2, v2

    const-string v4, "intensity_lower_jaw"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1148
    sget v2, Lcom/faceunity/FURenderer;->mIntensityNose:F

    float-to-double v2, v2

    const-string v4, "intensity_nose"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1149
    sget v2, Lcom/faceunity/FURenderer;->mIntensityChin:F

    float-to-double v2, v2

    const-string v4, "intensity_chin"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1150
    sget v2, Lcom/faceunity/FURenderer;->mIntensityForehead:F

    float-to-double v2, v2

    const-string v4, "intensity_forehead"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1151
    sget v2, Lcom/faceunity/FURenderer;->mIntensityMouth:F

    float-to-double v2, v2

    const-string v4, "intensity_mouth"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1153
    sget v2, Lcom/faceunity/FURenderer;->sMicroPouch:F

    float-to-double v2, v2

    const-string v4, "remove_pouch_strength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1154
    sget v2, Lcom/faceunity/FURenderer;->sMicroNasolabialFolds:F

    float-to-double v2, v2

    const-string v4, "remove_nasolabial_folds_strength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1155
    sget v2, Lcom/faceunity/FURenderer;->sMicroSmile:F

    float-to-double v2, v2

    const-string v4, "intensity_smile"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1156
    sget v2, Lcom/faceunity/FURenderer;->sMicroCanthus:F

    float-to-double v2, v2

    const-string v4, "intensity_canthus"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1157
    sget v2, Lcom/faceunity/FURenderer;->sMicroPhiltrum:F

    float-to-double v2, v2

    const-string v4, "intensity_philtrum"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1158
    sget v2, Lcom/faceunity/FURenderer;->sMicroLongNose:F

    float-to-double v2, v2

    const-string v4, "intensity_long_nose"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1159
    sget v2, Lcom/faceunity/FURenderer;->sMicroEyeSpace:F

    float-to-double v2, v2

    const-string v4, "intensity_eye_space"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1160
    sget v2, Lcom/faceunity/FURenderer;->sMicroEyeRotate:F

    float-to-double v2, v2

    const-string v4, "intensity_eye_rotate"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1162
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    .line 1166
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1167
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 1036
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 1039
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlphaL(F)V
    .locals 1

    .line 2094
    new-instance v0, Lcom/faceunity/FURenderer$42;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/FURenderer$42;-><init>(Lcom/faceunity/FURenderer;F)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCartoonFilter(I)V
    .locals 1

    .line 1807
    iget v0, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1810
    :cond_0
    iput p1, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    .line 1811
    new-instance v0, Lcom/faceunity/FURenderer$27;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/FURenderer$27;-><init>(Lcom/faceunity/FURenderer;I)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setChromaThres(F)V
    .locals 1

    .line 2066
    new-instance v0, Lcom/faceunity/FURenderer$40;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/FURenderer$40;-><init>(Lcom/faceunity/FURenderer;F)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setChromaThresT(F)V
    .locals 1

    .line 2080
    new-instance v0, Lcom/faceunity/FURenderer$41;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/FURenderer$41;-><init>(Lcom/faceunity/FURenderer;F)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInputTextureType(I)V
    .locals 0

    .line 2740
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    return-void
.end method

.method public setKeyColor([D)V
    .locals 1

    .line 2051
    new-instance v0, Lcom/faceunity/FURenderer$39;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/FURenderer$39;-><init>(Lcom/faceunity/FURenderer;[D)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMaxFaces(I)V
    .locals 1

    .line 1062
    iget v0, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 1063
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    .line 1064
    new-instance p1, Lcom/faceunity/FURenderer$13;

    invoke-direct {p1, p0}, Lcom/faceunity/FURenderer$13;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setMaxHumans(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 423
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    .line 424
    new-instance v0, Lcom/faceunity/FURenderer$1;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/FURenderer$1;-><init>(Lcom/faceunity/FURenderer;I)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setResetFlag(I)V
    .locals 0

    .line 877
    new-instance p1, Lcom/faceunity/FURenderer$5;

    invoke-direct {p1, p0}, Lcom/faceunity/FURenderer$5;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRunBgSegGreen(Z)V
    .locals 1

    .line 2133
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2136
    :cond_0
    new-instance v0, Lcom/faceunity/FURenderer$44;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/FURenderer$44;-><init>(Lcom/faceunity/FURenderer;Z)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransform(FFFF)V
    .locals 7

    .line 2113
    new-instance v6, Lcom/faceunity/FURenderer$43;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/faceunity/FURenderer$43;-><init>(Lcom/faceunity/FURenderer;FFFF)V

    invoke-virtual {p0, v6}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateEffectItemParams(Lcom/faceunity/entity/Effect;I)V
    .locals 9

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 1743
    :cond_0
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result v0

    iput v0, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    .line 1744
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEffectItemParams: mRotationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget v0, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    const-wide/16 v1, 0x0

    const-string v3, "isAndroid"

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    .line 1746
    invoke-static {p2, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_3

    .line 1748
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mIsSystemCameraRecord:Z

    if-eqz v0, :cond_2

    move-wide v7, v5

    goto :goto_0

    :cond_2
    move-wide v7, v1

    :goto_0
    invoke-static {p2, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_1

    .line 1750
    :cond_3
    invoke-static {p2, v3, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1752
    :goto_1
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 1755
    :cond_4
    iget v3, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    mul-int/lit8 v3, v3, 0x5a

    int-to-double v7, v3

    const-string v3, "rotationAngle"

    invoke-static {p2, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1758
    :cond_5
    iget v3, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-wide v1, v5

    :goto_2
    const-string v3, "is_front_camera"

    invoke-static {p2, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1759
    iget v1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    const-string v1, "is3DFlipH"

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    int-to-double v7, v4

    .line 1762
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v3, "isFlipExpr"

    .line 1764
    invoke-static {p2, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v3, "camera_change"

    .line 1766
    invoke-static {p2, v3, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_8
    const/4 v3, 0x6

    if-ne v0, v3, :cond_9

    int-to-double v7, v4

    .line 1771
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "loc_y_flip"

    .line 1772
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "loc_x_flip"

    .line 1773
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1775
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/faceunity/FURenderer;->setEffectRotationMode(Lcom/faceunity/entity/Effect;I)V

    if-ne v0, v2, :cond_a

    int-to-double v0, v4

    const-string v2, "isFlipTrack"

    .line 1778
    invoke-static {p2, v2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v2, "isFlipLight "

    .line 1780
    invoke-static {p2, v2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "{\"thing\":\"<global>\",\"param\":\"follow\"}"

    .line 1782
    invoke-static {p2, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1784
    :cond_a
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getMaxFace()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setMaxFaces(I)V

    :cond_b
    :goto_4
    return-void
.end method
