.class public Lcom/transsion/camera/app/ui/ScreenManager;
.super Ljava/lang/Object;
.source "ScreenManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/manager/IScreenManager;


# static fields
.field public static ACTIVITY_TYPE_AOD:I

.field public static ACTIVITY_TYPE_MAIN:I

.field public static ACTIVITY_TYPE_SLAVE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBottomHeight:I

.field private final mColumnBaseLineHeight:I

.field private final mCutoutBaseLineHeight:I

.field private mCutoutHeight:I

.field private final mDisplayActivityType:I

.field private final mFullScreenBaseLineHeightHigher:I

.field private final mFullScreenBaseLineHeightNormal:I

.field private final mHoverBottomHeightReduce:I

.field private final mMiddlePadding:I

.field private final mModePickerMainLayoutHeight:I

.field private final mModePickerScollExtra:I

.field private final mNavigationHeight:I

.field private mScreenDefaultFormType:I

.field private mScreenFormType:I

.field private mScreenHeight:I

.field private mScreenOriginalHeight:I

.field private mScreenOriginalWidth:I

.field private mScreenRatio:D

.field private mScreenWidth:I

.field private final mShutterButtonHeight:I

.field private mShutterPanelBasePaddingHeight:I

.field private mShutterPanelBasePaddingHeightHover:I

.field private mSlaveSurfaceDisplaySize:Landroid/util/Size;

.field private final mToolBarBaselineHeight:I

.field private final mToolBarBaselinePaddingTopHigher:I

.field private final mToolBarBaselinePaddingTopNormal:I

.field private mToolBarHeight:I

.field private mToolBarOriginPaddingHeight:I

.field private final mTopBarBaselineHeight:I

.field private mTopBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 17
    sput v0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_MAIN:I

    const/4 v0, 0x1

    .line 18
    sput v0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_SLAVE:I

    const/4 v0, 0x2

    .line 19
    sput v0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_AOD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    .line 23
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenRatio:D

    .line 27
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    .line 28
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutBaseLineHeight:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070759

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarBaselineHeight:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07075b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopNormal:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07075a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopHigher:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselineHeight:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterButtonHeight:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerScollExtra:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightHigher:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightNormal:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mColumnBaseLineHeight:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mMiddlePadding:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mHoverBottomHeightReduce:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeight:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeightHover:I

    .line 76
    iput p2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    .line 79
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return-void
.end method

.method private static additionalToolBarHeight(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x5

    .line 350
    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private setScreenRatio(II)V
    .locals 4

    int-to-double v0, p1

    int-to-double p1, p2

    .line 343
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr v2, p1

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenRatio:D

    return-void
.end method


# virtual methods
.method public getBottomHeight()I
    .locals 2

    .line 252
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 255
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mHoverBottomHeightReduce:I

    :goto_0
    sub-int/2addr v0, p0

    return v0

    .line 257
    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    goto :goto_0
.end method

.method public getColumnPreviewStartMargin()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getCutoutHeight()I
    .locals 0

    .line 226
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    return p0
.end method

.method public getModePickerMainLayoutHeight()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    return p0
.end method

.method public getModePickerScollExtra()I
    .locals 0

    .line 314
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerScollExtra:I

    return p0
.end method

.method public getModePlusBottomBarHeight()I
    .locals 2

    .line 262
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 265
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mHoverBottomHeightReduce:I

    sub-int/2addr v0, p0

    return v0

    .line 267
    :cond_1
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    return p0
.end method

.method public getNavigationHeight()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return p0
.end method

.method public getOriginModePlusBottomBarHeight()I
    .locals 0

    .line 282
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    return p0
.end method

.method public getOriginTopBarHeight()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getScreenFormType()I
    .locals 0

    .line 206
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    return p0
.end method

.method public getScreenHeight()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    return p0
.end method

.method public getScreenRatio()D
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenRatio:D

    return-wide v0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    return p0
.end method

.method public getShutterButtonHeight()I
    .locals 0

    .line 306
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterButtonHeight:I

    return p0
.end method

.method public getShutterPanelBasePaddingHeight()I
    .locals 2

    .line 324
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 325
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeightHover:I

    return p0

    .line 327
    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeight:I

    return p0
.end method

.method public getSlaveSurfaceDisplaySize()Landroid/util/Size;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    return-object p0
.end method

.method public getToolBarHeight()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    return p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    return p0
.end method

.method public getTopBarHeight()I
    .locals 2

    .line 243
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLongScreen()Z
    .locals 1

    .line 332
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    const/16 v0, 0x9f6

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateScreenFormType(I)Z
    .locals 9

    .line 121
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateCurrentScreenType(I)V

    .line 122
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 125
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    .line 127
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    .line 128
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 130
    div-int/2addr v0, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mMiddlePadding:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    :cond_1
    const/4 v0, 0x5

    const-string v4, ", height:"

    if-ne p1, v0, :cond_2

    .line 133
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    .line 134
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    .line 135
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    .line 136
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    .line 137
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    .line 138
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenSize(II)V

    .line 139
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenRatio(II)V

    .line 140
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setRealScreenSize(II)V

    goto/16 :goto_3

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightHigher:I

    goto :goto_0

    .line 144
    :cond_3
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightNormal:I

    :goto_0
    sub-int/2addr v2, v0

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_4

    .line 146
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mColumnBaseLineHeight:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 148
    :cond_4
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->additionalToolBarHeight(I)I

    move-result v1

    .line 149
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarBaselineHeight:I

    add-int/2addr v2, v1

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    .line 150
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result v2

    if-nez v2, :cond_5

    .line 151
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    iget v3, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarBaselineHeight:I

    if-gt v2, v3, :cond_5

    .line 152
    iput v3, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    .line 155
    :cond_5
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutBaseLineHeight:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    .line 156
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselineHeight:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    .line 157
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopHigher:I

    goto :goto_1

    .line 158
    :cond_6
    iget v3, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopNormal:I

    :goto_1
    sub-int/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    .line 159
    sget-object v2, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreenFormType, mCutoutHeight:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,mToolBarHeight: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mToolBarOriginPaddingHeight: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,toolBarOriginPaddingHeight:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " addFullHeight:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " type:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,isLongScreen:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mFullScreenBaseLineHeightHigher:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightHigher:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mFullScreenBaseLineHeightNormal:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightNormal:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    mul-int/lit8 v3, v1, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    .line 165
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    sget v3, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_MAIN:I

    if-ne v0, v3, :cond_7

    .line 166
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenSize(II)V

    .line 167
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenRatio(II)V

    .line 168
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setRealScreenSize(II)V

    .line 169
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setMainScreenSize(II)V

    goto :goto_2

    :cond_7
    int-to-double v5, v1

    .line 172
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int p1, v5

    .line 173
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    if-le p1, v0, :cond_8

    int-to-double v5, v0

    .line 175
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v1, v5

    move p1, v0

    .line 177
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenFormType, slave surface display width:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    .line 180
    :goto_2
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ScreenManager;->setScreenRatio(II)V

    .line 183
    :goto_3
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenFormType, new cur screen width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", form type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateScreenFormType(Landroid/content/Context;IZ)Z
    .locals 9

    .line 85
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 86
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 87
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v1

    .line 89
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v3

    .line 94
    :goto_0
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x168

    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v3

    .line 97
    :goto_1
    iget p2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    sget v4, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_AOD:I

    if-ne p2, v4, :cond_2

    const/4 p1, 0x5

    .line 100
    :cond_2
    iput p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    .line 102
    iget p2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    const-string v4, ", default form:"

    const-string v5, ", density:"

    const-string v6, ", height:"

    const/4 v7, -0x1

    if-eq p2, v7, :cond_4

    iget v8, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    if-eq v8, v7, :cond_4

    if-ne p2, v1, :cond_4

    if-ne v8, v2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    .line 113
    :cond_3
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateScreenFormType, original screen unchanged, width:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 105
    :cond_4
    :goto_2
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    .line 106
    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    .line 107
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    .line 108
    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    .line 109
    sget-object p2, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenFormType, new original screen width:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(I)Z

    move-result p0

    return p0
.end method

.method public updateScreenSize()V
    .locals 2

    .line 189
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenSize(II)V

    .line 190
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenRatio(II)V

    .line 191
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ScreenUtils;->setRealScreenSize(II)V

    return-void
.end method
