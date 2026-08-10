.class public final Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;
.super Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;
.source "HorizontalRecycleView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$DefaultItemDecoration;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$BaseItemDecoration;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;
    }
.end annotation


# static fields
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

.field private mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

.field private mOnScrolledPositionListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;

.field private mOnSelectChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

.field private mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

.field private mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

.field private final mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;

.field private mScrollStride:I

.field private mSelectedPosition:I


# direct methods
.method public static synthetic $r8$lambda$omoP41j63aXNLyUSBJ2CNeQXpUk(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->lambda$scrollToPosition$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mSelectedPosition:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsClickToPosition:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsPaused:Z

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsInit:Z

    .line 240
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;

    .line 267
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mItemWidth:I

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    if-eqz p2, :cond_3

    .line 274
    sget-object v3, Lcom/transsion/camera/feature/arcore/R$styleable;->HorizontalRecycleView:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 275
    sget p3, Lcom/transsion/camera/feature/arcore/R$styleable;->HorizontalRecycleView_ItemWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 277
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mItemWidth:I

    .line 279
    :cond_1
    sget p3, Lcom/transsion/camera/feature/arcore/R$styleable;->HorizontalRecycleView_ItemMargin:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-ltz p3, :cond_2

    move v2, p3

    .line 283
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    :cond_3
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$DefaultItemDecoration;

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mItemWidth:I

    invoke-direct {p2, p0, p3, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$DefaultItemDecoration;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;II)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 287
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mItemWidth:I

    add-int p3, p2, v2

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mScrollStride:I

    .line 289
    new-instance p3, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    invoke-direct {p3, p0, p0, p2, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Landroidx/recyclerview/widget/RecyclerView;II)V

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    .line 290
    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$1;)V

    .line 293
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 295
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 296
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;

    invoke-direct {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;-><init>()V

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->setTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;)V

    .line 298
    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 299
    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;

    invoke-direct {v1, p0, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$1;)V

    invoke-direct {p2, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 302
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p2, 0x50

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->notifyScrollStart()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->isCenterView(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsInit:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsClickToPosition:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->isExternalView(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;I)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->canLongPress(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->notifyScrollEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->notifyScroll(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    return-object p0
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mScrollStride:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mSelectedPosition:I

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnSelectChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mDataContract:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    return-object p0
.end method

.method private canLongPress(I)Z
    .locals 3

    .line 425
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mSelectedPosition:I

    .line 426
    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz v0, :cond_0

    .line 427
    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    sub-int/2addr p0, v0

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

.method private getScreenWidth()I
    .locals 1

    .line 593
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    .line 595
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "window"

    .line 598
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 599
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 600
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 601
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private isCenterView(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->shutter_bar_touch_area:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float v4, v0, v3

    sub-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    add-float/2addr p0, v4

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

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

.method private isExternalView(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$dimen;->shutter_bar_touch_area:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 447
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 448
    sget-object v3, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    int-to-float v2, v2

    add-float/2addr p0, v2

    cmpl-float p0, v3, p0

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    return v0
.end method

.method private synthetic lambda$scrollToPosition$0(I)V
    .locals 0

    .line 569
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->scrollToPositionImpl(I)V

    return-void
.end method

.method private notifyScroll(II)V
    .locals 3

    .line 247
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnScrolledPositionListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;

    if-eqz p0, :cond_0

    .line 249
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;->getPositionAndAnimation(I)V

    :cond_0
    return-void
.end method

.method private notifyScrollEnd()V
    .locals 1

    .line 254
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "notifyScrollEnd"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private notifyScrollStart()V
    .locals 1

    .line 243
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "notifyScrollStart"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private scrollToPositionImpl(I)V
    .locals 6

    .line 577
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 579
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "layoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 583
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->getScreenWidth()I

    move-result v1

    .line 587
    :cond_1
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mItemWidth:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    .line 588
    sget-object v3, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToPositionImpl width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mItemWidth: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mItemWidth:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public getClickToPosition()Z
    .locals 0

    .line 558
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsClickToPosition:Z

    return p0
.end method

.method public getCurrentChildAt()Landroid/view/View;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->access$2700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNailRes()I

    move-result v0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 482
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getDefaultImage failed. mDataList.size() < 3"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsRecording()Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsRecording:Z

    return p0
.end method

.method public getScrolling()Z
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mScrollListenerInternal:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->access$1900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;)Z

    move-result p0

    return p0
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 550
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mSelectedPosition:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsRecording:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    if-eqz p1, :cond_1

    .line 313
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsRecording:Z

    .line 314
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setRecordingState(Z)V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

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

    .line 563
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 567
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 568
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 572
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->scrollToPositionImpl(I)V

    :goto_0
    return-void
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 501
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 505
    :cond_1
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    if-eqz v0, :cond_3

    .line 508
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    if-eqz v0, :cond_2

    .line 512
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 514
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mDataContract:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    .line 515
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mRecycleAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    return-void

    .line 509
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The adapter doesn\'t implements IDataContract !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 506
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only RecycleAdapter can be set here !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setClickToPosition(Z)V
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsClickToPosition:Z

    return-void
.end method

.method public setIsInit(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsInit:Z

    return-void
.end method

.method public setIsRecording(Z)V
    .locals 0

    .line 466
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsRecording:Z

    return-void
.end method

.method public final setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 492
    :cond_1
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    if-eqz v0, :cond_2

    .line 496
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 493
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only HorizontalLayoutManager can be set here !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnScrolledPositionListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnScrolledPositionListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;

    return-void
.end method

.method public setOnSelectChangeListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnSelectChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    return-void
.end method

.method public setOnShutterEventListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    return-void
.end method

.method public setPauseFlag(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsPaused:Z

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 3

    .line 525
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedPosition position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 527
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mIsPaused:Z

    if-eqz v1, :cond_0

    const-string p0, "setSelectedPosition Fragment pause"

    .line 528
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "invalid position: "

    if-gez p1, :cond_1

    .line 533
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 536
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 540
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    .line 541
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 545
    :cond_2
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mSelectedPosition:I

    .line 546
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->scrollToPosition(I)V

    return-void

    .line 538
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Adapter can\'t be null when this method is called !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;)V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    if-nez p0, :cond_0

    .line 454
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mLayoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->setTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;)V

    return-void
.end method
