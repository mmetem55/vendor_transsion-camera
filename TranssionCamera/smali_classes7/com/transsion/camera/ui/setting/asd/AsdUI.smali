.class public Lcom/transsion/camera/ui/setting/asd/AsdUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "AsdUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ASD_RESULT:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFakeAsdCameraVersion:I

.field protected mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsMacroEnable:Z

.field private mIsWideCamera:Z

.field private mResources:Landroid/content/res/Resources;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AsdUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 76
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 77
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 78
    iput v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    .line 80
    new-instance v0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    .line 81
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    .line 82
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0a001e

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mFakeAsdCameraVersion:I

    .line 88
    new-instance p1, Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 67
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/asd/AsdUI;[II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->doUpdateAsdResult([II)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    return p1
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult()V

    return-void
.end method

.method private checkWideMacroEnable()Z
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_macro"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    .line 476
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private doUpdateAsdResult([II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 189
    sget-object v3, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doUpdateAsdResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    .line 190
    array-length v4, v1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v7, :cond_a

    .line 199
    aget v9, v1, v4

    .line 200
    aget v10, v1, v7

    .line 201
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDalgorithmResult(I)V

    .line 202
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDeffect(I)V

    const v11, 0x7f100073

    const v12, 0x7f08056c

    if-eq v9, v7, :cond_5

    if-eq v9, v6, :cond_3

    const/4 v13, 0x3

    if-eq v9, v13, :cond_3

    const/4 v13, 0x4

    if-eq v9, v13, :cond_2

    const/4 v13, 0x7

    if-eq v9, v13, :cond_1

    move v15, v4

    move-object v13, v8

    move-object v14, v13

    goto :goto_1

    .line 226
    :cond_1
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f080568

    invoke-virtual {v13, v14, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 227
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f100083

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 221
    :cond_2
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f080576

    invoke-virtual {v13, v14, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move v15, v7

    move-object v14, v8

    goto :goto_1

    .line 211
    :cond_3
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f080563

    invoke-virtual {v13, v14, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 212
    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v15, "Itel"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v15, "itel-P661N"

    .line 213
    invoke-static {v15, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 214
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f100082

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 216
    :cond_4
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f100081

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 205
    :cond_5
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v13, v12, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 206
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_0
    move v15, v7

    :goto_1
    const v4, 0x7f080565

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move-object v4, v8

    move-object v10, v4

    goto/16 :goto_3

    .line 329
    :pswitch_1
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v4, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 330
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f100071

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 324
    :pswitch_2
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080560

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 325
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 319
    :pswitch_3
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080575

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 320
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10007c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 314
    :pswitch_4
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v4, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 315
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f100072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 309
    :pswitch_5
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f08055e

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 310
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10006b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 304
    :pswitch_6
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v12, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 305
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 299
    :pswitch_7
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f08055f

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 300
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10007f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 294
    :pswitch_8
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080578

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 295
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10007e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 289
    :pswitch_9
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080571

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 290
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f100076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 284
    :pswitch_a
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080566

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 285
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10006f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 279
    :pswitch_b
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f08055c

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 280
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10006a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 274
    :pswitch_c
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080573

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 275
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f100079

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 269
    :pswitch_d
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080577

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 270
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10007d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 264
    :pswitch_e
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080572

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 265
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f100077

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 259
    :pswitch_f
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080562

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 260
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10006e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 254
    :pswitch_10
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080561

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 255
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10006d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 249
    :pswitch_11
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f08055d

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 250
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 243
    :pswitch_12
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080574

    invoke-virtual {v4, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 244
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f10007a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_2
    move v15, v7

    .line 336
    :goto_3
    iget v11, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mFakeAsdCameraVersion:I

    const v12, 0x7f100239

    if-ne v11, v7, :cond_8

    if-ne v9, v7, :cond_b

    .line 338
    iget v9, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    if-eq v9, v7, :cond_7

    if-eq v9, v6, :cond_6

    goto :goto_6

    .line 348
    :cond_6
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f10023a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_4

    .line 340
    :cond_7
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    :goto_4
    move-object v14, v4

    goto :goto_5

    .line 358
    :cond_8
    iget v6, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    if-eq v6, v7, :cond_9

    goto :goto_6

    .line 360
    :cond_9
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 365
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    :goto_5
    move v15, v7

    move-object v4, v8

    move-object v10, v4

    move-object v13, v10

    goto :goto_6

    :cond_a
    move-object v4, v8

    move-object v10, v4

    move-object v13, v10

    move-object v14, v13

    const/4 v15, 0x0

    .line 370
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->checkWideMacroEnable()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v15, 0x0

    :cond_c
    if-eqz v15, :cond_15

    .line 374
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v2, :cond_16

    if-eqz v14, :cond_d

    .line 376
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v14}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 378
    :cond_d
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v8}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    :goto_7
    if-eqz v13, :cond_e

    .line 381
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v13}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 383
    :cond_e
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v8}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    if-eqz v10, :cond_f

    .line 386
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v10}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    goto :goto_9

    .line 388
    :cond_f
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v8}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    :goto_9
    if-eqz v4, :cond_10

    .line 391
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 393
    :cond_10
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v8}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a
    if-eqz v14, :cond_11

    if-nez v13, :cond_12

    :cond_11
    if-eqz v10, :cond_13

    if-eqz v4, :cond_13

    .line 396
    :cond_12
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 397
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_b

    :cond_13
    const/4 v4, 0x0

    .line 399
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 401
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v2, :cond_14

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 404
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 405
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 406
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 407
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    :cond_14
    const/4 v2, 0x0

    .line 411
    aget v2, v1, v2

    .line 412
    aget v1, v1, v7

    .line 413
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->updateGuideUIState(II)V

    .line 415
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 417
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 419
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_c

    .line 422
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult()V

    if-nez v2, :cond_16

    .line 424
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDalgorithmResult(I)V

    .line 425
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDeffect(I)V

    :cond_16
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hideAsdResult()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->resetTwinkleGuide()V

    :cond_0
    return-void
.end method

.method private registerListenerToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterListenerToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_asd"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 147
    sget-object p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    const-string p1, "key_fake_asd_camera_status"

    .line 155
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    const-string p1, "key_macro_status"

    .line 156
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v0, "key_fake_asd_camera_status"

    .line 172
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    const-string v0, "key_macro_status"

    .line 173
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method protected updateGuideUIState(II)V
    .locals 0

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
