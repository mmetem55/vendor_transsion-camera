.class public Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MoreGridListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;,
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;,
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;

.field private mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field private mDraggingView:Landroid/view/View;

.field private mEnable:Z

.field private final mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mHideAnimatorSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEditMode:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mSecureCamera:Z

.field private mShowAnimatorSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$A9CWyrddtOM8Er7yxz1n6AWqcJ8(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->lambda$onBindViewHolder$2(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxHSdNBVDWcFHixJXgfY9l9Eit8(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R12Go1BC0o5qRe6b5Ut06yLoljo(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->lambda$onBindViewHolder$3(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jehu_vNDbOHlcP0n6F8-KhUo_nA(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoreGridListAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/GridLayoutManager;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 5

    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 66
    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 86
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mEnable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mSecureCamera:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->startDragAndDrop(Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;

    return-object p0
.end method

.method private hideViewWithAnimation(Landroid/view/View;)V
    .locals 8

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mShowAnimatorSetList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 242
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 247
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 248
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v0, [F

    .line 249
    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 250
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 251
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mHideAnimatorSetList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 252
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v5, 0x96

    .line 254
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v1, v6, v2

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V
    .locals 1

    const v0, 0x3f733333    # 0.95f

    .line 183
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$2(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 193
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$3(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 197
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method private showOrHideSellingPoint(Landroid/view/View;I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 209
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-boolean p2, p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getSPVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 211
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 213
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showViewWithAnimation(Landroid/view/View;)V
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mHideAnimatorSetList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 220
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 227
    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 228
    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v1, [F

    .line 229
    fill-array-data v4, :array_2

    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 230
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 231
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mShowAnimatorSetList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 232
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v5, 0x96

    .line 234
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v0

    const/4 v0, 0x1

    aput-object v3, v6, v0

    aput-object p1, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDragAndDrop(Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V
    .locals 3

    .line 300
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingView:Landroid/view/View;

    .line 301
    new-instance p0, Landroid/content/ClipData;

    const-string v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    .line 302
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "grid_item_view"

    invoke-direct {p0, v2, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/16 v0, 0x200

    .line 301
    invoke-virtual {p2, p0, p1, p2, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public cancelDragAndDrop()V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_0
    return-void
.end method

.method public containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 138
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 139
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 140
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 141
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    iput v1, v2, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;I)V
    .locals 7

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const v3, 0x7f08071f

    if-ne v0, v1, :cond_2

    .line 156
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$000(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$100(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$200(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    if-eqz v0, :cond_1

    .line 160
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$300(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->showViewWithAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 162
    :cond_1
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$300(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->hideViewWithAnimation(Landroid/view/View;)V

    .line 164
    :goto_1
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$200(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->showOrHideSellingPoint(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 165
    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 166
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$400(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v4

    iget v4, v4, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$500(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$600(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$700(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    const-wide/16 v3, 0x96

    if-eqz v0, :cond_4

    .line 172
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$800(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f080718

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$900(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->updateAnimFlag(Z)V

    new-array v0, v1, [F

    .line 175
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 183
    :cond_3
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$800(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 186
    :cond_4
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$800(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f080717

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$900(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->updateAnimFlag(Z)V

    new-array v0, v1, [F

    .line 189
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 197
    :cond_5
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$800(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 201
    :goto_2
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->access$700(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->showOrHideSellingPoint(Landroid/view/View;I)V

    .line 203
    :cond_6
    :goto_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->setModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0103

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0101

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 275
    :goto_0
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public removeItem(I)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public resetFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public setDragEnterListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;

    return-void
.end method

.method public setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    if-eqz p1, :cond_0

    .line 293
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mShowAnimatorSetList:Ljava/util/List;

    goto :goto_0

    .line 295
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mHideAnimatorSetList:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mEnable:Z

    return-void
.end method

.method public updateModeData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method public updateSecureCamera(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mSecureCamera:Z

    return-void
.end method
