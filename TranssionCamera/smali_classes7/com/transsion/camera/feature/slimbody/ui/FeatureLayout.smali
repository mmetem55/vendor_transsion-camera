.class public Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;
.super Landroid/widget/LinearLayout;
.source "FeatureLayout.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BODY_SLIM:I = 0x3

.field private static final BUTT_PLUMP:I = 0x7

.field private static final FEATURE_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEAD_SHRINK:I = 0x4

.field private static final LEG_LENGTHEN:I = 0x9

.field private static final LEG_SLIM:I = 0x8

.field private static final SHOULDER_SLIM:I = 0x5

.field private static final WAIST_SLIM:I = 0x6


# instance fields
.field private mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mFaceAttributeSupport:Z

.field private mFeatureAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

.field private mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

.field private mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

.field private mGender:Ljava/lang/String;

.field private mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsAI:Z

.field private mIsBeingDragged:Z

.field private mIsClose:Z

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

.field private mOverScroller:Landroid/widget/OverScroller;

.field private mSBFeatureInfo:Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

.field private mScrollRange:I

.field private mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

.field private mSlimbodyFeatureId:I

.field private mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->FEATURE_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 349
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 63
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 91
    new-instance p1, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    .line 389
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 353
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 63
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 91
    new-instance p2, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    .line 389
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    .line 354
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mContext:Landroid/content/Context;

    .line 355
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFaceAttributeSupport:Z

    .line 356
    new-instance p2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    .line 357
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOverScrollMode(I)V

    .line 358
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/high16 p2, 0x40000

    .line 359
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 360
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 361
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 362
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/slimbody/R$dimen;->fake_item_layout_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsClose:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsClose:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAutoHint()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showResetDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFaceAttributeSupport:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setSkinAndChangepostion(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsAI:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsAI:Z

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodyFeatureId:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSBFeatureInfo:Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSBFeatureInfo:Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showAutoHint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method private getDefaultSlimBodySetting()Ljava/lang/String;
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFaceAttributeSupport:Z

    const-string v1, "white"

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    if-nez v0, :cond_1

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "{\"bodySlim\":10,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    return-object p0

    :cond_0
    const-string p0, "{\"bodySlim\":20,\"buttPlump\":-48,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":8,\"waistSlim\":38}"

    return-object p0

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "{\"bodySlim\":0,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":20,\"legSlim\":10,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    return-object p0

    :cond_2
    const-string p0, "{\"bodySlim\":5,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":25,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":15,\"waistSlim\":30}"

    return-object p0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "{\"bodySlim\":20,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0

    :cond_4
    const-string p0, "{\"bodySlim\":5,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0
.end method

.method private getProcessByFeatureId(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)I
    .locals 0

    .line 230
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x64

    goto :goto_0

    .line 262
    :pswitch_0
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistUpper:I

    goto :goto_0

    .line 259
    :pswitch_1
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->armSlim:I

    goto :goto_0

    .line 256
    :pswitch_2
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bellySlim:I

    goto :goto_0

    .line 253
    :pswitch_3
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->chestPlump:I

    goto :goto_0

    .line 250
    :pswitch_4
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    goto :goto_0

    .line 247
    :pswitch_5
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    goto :goto_0

    .line 244
    :pswitch_6
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    goto :goto_0

    .line 241
    :pswitch_7
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    goto :goto_0

    .line 238
    :pswitch_8
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    goto :goto_0

    .line 235
    :pswitch_9
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    goto :goto_0

    .line 232
    :pswitch_a
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getScrollRange()I
    .locals 0

    .line 487
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    neg-int p0, p0

    return p0
.end method

.method private hideAutoHint()V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_0

    .line 521
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 5

    .line 334
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->feature_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 335
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 336
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 337
    new-instance v0, Lcom/transsion/camera/feature/slimbody/adapter/FeatureAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->FEATURE_INFO_LIST:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/camera/feature/slimbody/adapter/FeatureAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    .line 338
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 340
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 341
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private setSkinAndChangepostion(Ljava/lang/String;I)V
    .locals 0

    .line 580
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 602
    :pswitch_0
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    goto :goto_0

    .line 599
    :pswitch_1
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    goto :goto_0

    .line 596
    :pswitch_2
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    goto :goto_0

    .line 593
    :pswitch_3
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    goto :goto_0

    .line 590
    :pswitch_4
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    goto :goto_0

    .line 587
    :pswitch_5
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    goto :goto_0

    .line 584
    :pswitch_6
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    .line 606
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateProgressForUI(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 515
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showResetDialog(I)V
    .locals 3

    .line 526
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 527
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 528
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_showDialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_sure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 569
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 570
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 12

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    .line 613
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v11

    .line 614
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 615
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 617
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getScrollRange()I

    move-result v6

    .line 618
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    sub-int v3, v1, v0

    sub-int v4, v2, v11

    const/4 v7, 0x0

    .line 622
    iget v8, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v10}, Landroid/widget/LinearLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 624
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v11}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    :cond_1
    return-void
.end method

.method public defaultValueSlimBody()Ljava/lang/String;
    .locals 0

    .line 313
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getCloseDefaultSB()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "2"

    :goto_0
    return-object p0
.end method

.method public featureScrollOut()V
    .locals 1

    const/16 v0, 0x8

    .line 287
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public getDefaultSkin()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 224
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideAlwaysHint()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideDialog()V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 382
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 383
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 393
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 368
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 369
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    .line 371
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 373
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 375
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0, v1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 8

    .line 494
    iget-object p4, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_0

    .line 495
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p4

    .line 496
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    .line 497
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScrollX(I)V

    .line 498
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setScrollY(I)V

    .line 499
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 500
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    if-eqz p3, :cond_1

    .line 502
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getScrollRange()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_0

    .line 505
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 508
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->awakenScrollBars()Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 416
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastMotionX:I

    sub-int/2addr v2, v0

    .line 417
    iget-boolean v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 418
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 420
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 422
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-lez v2, :cond_2

    .line 424
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 426
    :cond_2
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    add-int/2addr v2, v3

    :cond_3
    :goto_0
    move v4, v2

    .line 429
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_9

    .line 431
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastMotionX:I

    .line 433
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    .line 434
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    .line 435
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getScrollRange()I

    move-result v8

    .line 436
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x0

    .line 439
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/LinearLayout;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_1

    .line 447
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_9

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 451
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->smoothScrollTo(II)V

    .line 452
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 400
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    .line 401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 403
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 411
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastMotionX:I

    .line 460
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resetProgressBarAndSetValue(I)V
    .locals 4

    .line 202
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodyFeatureId:I

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_slimbody_custom"

    .line 204
    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    .line 208
    iput p1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    .line 209
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getProcessByFeatureId(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)I

    move-result v1

    const/4 v2, 0x2

    if-le p1, v2, :cond_0

    .line 211
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    invoke-interface {v3, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateProgressForUI(II)V

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x3

    .line 328
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    :cond_0
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 3

    .line 300
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    .line 301
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->defaultValueSlimBody()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_slimbody_latested_featureid"

    .line 304
    invoke-virtual {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x3

    .line 308
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    :cond_0
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    .line 464
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 470
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p2

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 472
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 477
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 479
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    .line 483
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->smoothScrollBy(II)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAutoHint()V

    return-void
.end method

.method public updateSettingData(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    if-eqz p1, :cond_0

    .line 294
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodyFeatureId:I

    iput p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    :cond_0
    return-void
.end method
