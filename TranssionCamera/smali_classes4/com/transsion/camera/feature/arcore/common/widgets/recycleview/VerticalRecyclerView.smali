.class public final Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;
.super Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;
.source "VerticalRecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$DefaultItemDecoration;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADD_POSITION:I = 0x1

.field private static final DEFAULT_ITEM_MARGIN_DP:I = 0xc

.field private static final DEFAULT_ITEM_WIDTH_DP:I = 0x30

.field private static final DEFAULT_TIME_SCROLLER:I = 0xa

.field private static final FADING_EDGE_LENGTH:I = 0x50

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataContract:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

.field private mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

.field private mIsClickToPosition:Z

.field private mIsInit:Z

.field private mIsPaused:Z

.field private mIsRecording:Z

.field private mItemWidth:I

.field private mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

.field private mOnScrolledPositionListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;

.field private mOnSelectChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

.field private mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

.field private mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

.field private final mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;

.field private mScrollStride:I

.field private mSelectedPosition:I

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public static synthetic $r8$lambda$5gKsSOY5a09iHkH-mfuI5DD1TrM(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->lambda$scrollToPosition$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mSelectedPosition:I

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsClickToPosition:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsPaused:Z

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsInit:Z

    .line 232
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;

    .line 259
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    if-eqz p2, :cond_3

    .line 266
    sget-object v3, Lcom/transsion/camera/feature/arcore/R$styleable;->VerticalRecycleView:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 267
    sget p3, Lcom/transsion/camera/feature/arcore/R$styleable;->VerticalRecycleView_ItemWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 269
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    .line 271
    :cond_1
    sget p3, Lcom/transsion/camera/feature/arcore/R$styleable;->VerticalRecycleView_ItemMargin:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-ltz p3, :cond_2

    move v2, p3

    .line 275
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    :cond_3
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$DefaultItemDecoration;

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    invoke-direct {p2, p3, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$DefaultItemDecoration;-><init>(II)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 279
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mScrollStride:I

    .line 281
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    invoke-direct {p2, p0, p0, p3, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Landroidx/recyclerview/widget/RecyclerView;II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    .line 282
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 284
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$1;)V

    .line 285
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 287
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 288
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    invoke-direct {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;-><init>()V

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->setTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer;)V

    .line 290
    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 291
    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$1;)V

    invoke-direct {p2, p1, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->notifyScrollStart()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->isClickOnSelectedPosition(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsInit:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsClickToPosition:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->isClickOnExternPosition(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->notifyScrollEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->notifyScroll(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    return-object p0
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->getCurrentSelectedCoordinate()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mSelectedPosition:I

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnSelectChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mDataContract:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    return-object p0
.end method

.method private canLongPress(I)Z
    .locals 3

    .line 416
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mSelectedPosition:I

    .line 417
    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    if-le p1, v2, :cond_6

    if-gt p1, v1, :cond_6

    :cond_1
    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    if-gt p1, v1, :cond_6

    :cond_3
    const/4 v0, 0x6

    if-ne p0, v0, :cond_4

    if-ne p1, v1, :cond_6

    :cond_4
    if-ge p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v2

    :goto_1
    xor-int/2addr p0, v2

    return p0
.end method

.method private getCurrentSelectedCoordinate()I
    .locals 6

    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    int-to-double v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    int-to-double v4, p0

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    int-to-double v0, p0

    mul-double/2addr v0, v2

    :goto_0
    double-to-int p0, v0

    return p0
.end method

.method private getScreenWidth()I
    .locals 1

    .line 575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    .line 577
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "window"

    .line 580
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 581
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 582
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 583
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 91
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private isClickOnExternPosition(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 437
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$dimen;->shutter_bar_touch_area:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 438
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 439
    sget-object v3, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firstView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " , lastView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " , current position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    int-to-float v2, v2

    add-float/2addr p0, v2

    cmpl-float p0, v3, p0

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    return v0
.end method

.method private isClickOnSelectedPosition(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->shutter_bar_touch_area:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 431
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->getCurrentSelectedCoordinate()I

    move-result p0

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float p0, p0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float v3, p0, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr p0, v2

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$scrollToPosition$0(I)V
    .locals 0

    .line 556
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->scrollToPositionImpl(I)V

    return-void
.end method

.method private notifyScroll(II)V
    .locals 3

    .line 239
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScroll, centerPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnScrolledPositionListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;

    if-eqz p0, :cond_0

    .line 241
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;->getPositionAndAnimation(I)V

    :cond_0
    return-void
.end method

.method private notifyScrollEnd()V
    .locals 1

    .line 246
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "notifyScrollEnd"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private notifyScrollStart()V
    .locals 1

    .line 235
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "notifyScrollStart"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private scrollToPositionImpl(I)V
    .locals 1

    .line 564
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 566
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "layoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 571
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mItemWidth:I

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public getClickToPosition()Z
    .locals 0

    .line 545
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsClickToPosition:Z

    return p0
.end method

.method public getCurrentChildAt()Landroid/view/View;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->access$2600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNailRes()I

    move-result v0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 468
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getDefaultImage failed. mDataList.size() < 3"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsRecording()Z
    .locals 0

    .line 456
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsRecording:Z

    return p0
.end method

.method public getScrolling()Z
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->access$1800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;)Z

    move-result p0

    return p0
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 537
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mSelectedPosition:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsRecording:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    if-eqz p1, :cond_1

    .line 302
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsRecording:Z

    .line 303
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setRecordingState(Z)V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterUp()V

    return p2

    :cond_1
    :goto_0
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 550
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 554
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 555
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 559
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->scrollToPositionImpl(I)V

    :goto_0
    return-void
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 491
    :cond_1
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    if-eqz v0, :cond_3

    .line 494
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    if-eqz v0, :cond_2

    .line 498
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 500
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mDataContract:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    .line 501
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    return-void

    .line 495
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The adapter doesn\'t implements IDataContract !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 492
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only RecycleAdapter can be set here !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setClickToPosition(Z)V
    .locals 0

    .line 541
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsClickToPosition:Z

    return-void
.end method

.method public setIsInit(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsInit:Z

    return-void
.end method

.method public setIsRecording(Z)V
    .locals 0

    return-void
.end method

.method public final setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 474
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 478
    :cond_1
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    if-eqz v0, :cond_2

    .line 482
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 479
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only HorizontalLayoutManager can be set here !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnScrolledPositionListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnScrolledPositionListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;

    return-void
.end method

.method public setOnSelectChangeListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnSelectChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    return-void
.end method

.method public setOnShutterEventListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    return-void
.end method

.method public setPauseFlag(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsPaused:Z

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 3

    .line 511
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedPosition position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mIsPaused:Z

    if-eqz v1, :cond_0

    const-string p0, "setSelectedPosition Fragment pause"

    .line 514
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "invalid position: "

    if-gez p1, :cond_1

    .line 519
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 522
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 526
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    .line 527
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 531
    :cond_2
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mSelectedPosition:I

    .line 532
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->scrollToPosition(I)V

    return-void

    .line 524
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Adapter can\'t be null when this method is called !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer;)V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    if-nez p0, :cond_0

    .line 445
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mLayoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;->setTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer;)V

    return-void
.end method
