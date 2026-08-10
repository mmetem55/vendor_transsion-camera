.class public Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;
.super Landroid/widget/FrameLayout;
.source "SlimBodyRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# static fields
.field private static final FEATURE_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private final mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter<",
            "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

.field private mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$Qfk6q1_3xYLZn3fYJjIR1ZE85bg(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->lambda$showResetDialog$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VJxTl2jZRqXnfamuWINMgMv_69Q(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->lambda$showResetDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 74
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->FEATURE_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 191
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    .line 193
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/adapter/FeatureAdapter;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->FEATURE_INFO_LIST:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/FeatureAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->defaultCustom()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateValueByFeatureId(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->handleAnalytics(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->showResetDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateUIByFeatureId(I)V

    return-void
.end method

.method private handleAnalytics(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;)V
    .locals 0

    if-eqz p1, :cond_6

    const/4 p0, 0x3

    .line 156
    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    if-ne p0, p1, :cond_0

    .line 157
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBodySlimDone()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-ne p0, p1, :cond_1

    .line 159
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHeadShrinkDone()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    if-ne p0, p1, :cond_2

    .line 161
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShoulderSlimDone()V

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    if-ne p0, p1, :cond_3

    .line 163
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setWaistSlimDone()V

    goto :goto_0

    :cond_3
    const/4 p0, 0x7

    if-ne p0, p1, :cond_4

    .line 165
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setButtPlumpDone()V

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    if-ne p0, p1, :cond_5

    .line 167
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegSlimDone()V

    goto :goto_0

    :cond_5
    const/16 p0, 0x9

    if-ne p0, p1, :cond_6

    .line 169
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegLengthenDone()V

    :cond_6
    :goto_0
    return-void
.end method

.method private hideAutoHint()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_0

    .line 256
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showResetDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 270
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showResetDialog$1(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 272
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p2, :cond_0

    .line 274
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 275
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->restoreDefault(I)Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-interface {p3, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateProgressBar(I)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    :cond_0
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showResetDialog(I)V
    .locals 3

    .line 261
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 264
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 267
    :cond_1
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 268
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_showDialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 280
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateProgressBar(I)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getProgress(I)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v1, :cond_0

    .line 178
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->getSeekBarFeatureDataByFeatureId(I)Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    iget v1, p1, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarMax:I

    iget v2, p1, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarMin:I

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarOptimal:I

    invoke-interface {p0, v1, v2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    :cond_0
    return-void
.end method

.method private updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 108
    iget v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 114
    iput v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 110
    iput v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 111
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 121
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    iget p1, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateSelectedItemById(I)V

    :cond_3
    return-void
.end method

.method private updateState()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    if-eqz v0, :cond_2

    .line 92
    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 100
    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateProgressBar(I)V

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateUIByFeatureId(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 140
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateProgressBar(I)V

    :goto_0
    return-void
.end method

.method private updateValueByFeatureId(ILjava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p2, :cond_1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 131
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->updateFeatureId(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 1

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 358
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "0"

    .line 362
    iput-object v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hideDialog()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 223
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 224
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public openContrast()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 348
    iput-object v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public progressChanged(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 335
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->updateProgress(I)Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    .line 337
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->defaultCustom()Z

    move-result p0

    .line 336
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    :cond_0
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 3

    .line 297
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 298
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 299
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    .line 300
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 305
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getFeatureId()I

    move-result v1

    .line 306
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 308
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    .line 311
    :cond_1
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;

    invoke-direct {v0, p0, p1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 316
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public releaseResource()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 236
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;

    .line 239
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    .line 240
    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->setGender(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 328
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 322
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    return-void
.end method

.method public updateFeatureUI(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateState()V

    const/4 p1, 0x0

    .line 373
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    const/16 p1, 0x8

    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
