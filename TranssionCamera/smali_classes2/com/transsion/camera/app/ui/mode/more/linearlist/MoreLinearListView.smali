.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "MoreLinearListView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;
    }
.end annotation


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

.field private static final SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

.field private mDragItemFromGridToTab:Z

.field private mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

.field private mEnterPlaceHolder:Z

.field private mScreenSize:Landroid/util/Size;

.field private mSupportPMasterMode:Z


# direct methods
.method public static synthetic $r8$lambda$CUMrP-KBhRIhVyunn-ONRI0eaBM(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->lambda$setRightPadding$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-3UoJ1vS7wulfd7nKvndFwAkGo(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->lambda$setLeftPadding$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 50
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

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->BOKEH_MODE_LIST:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.slimbody.mode.SlimBodyModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.facebeauty.MultiFaceBeautyModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->initView()V

    return-void
.end method

.method private addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_0

    .line 529
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_0
    return-void
.end method

.method private addItemToBeginOrEnd(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z
    .locals 5

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 118
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 120
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getX()F

    move-result v2

    int-to-float p2, p2

    add-float/2addr v2, p2

    .line 121
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    cmpl-float v0, v2, p2

    const/4 v2, -0x1

    if-lez v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return v3

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    cmpl-float p2, v0, p2

    if-lez p2, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p2

    goto :goto_1

    :cond_3
    add-int/2addr p2, v3

    .line 140
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return v3

    :cond_4
    return v1
.end method

.method private asdTabLocationInScreenRight(I)Z
    .locals 3

    .line 197
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 198
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 199
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mSupportPMasterMode:Z

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkMoveLeftAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 3

    .line 537
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-eqz v1, :cond_1

    .line 541
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v2, :cond_1

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 542
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkMoveRightAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .locals 4

    .line 547
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const-string v2, "place_holder"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 553
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-eqz v0, :cond_2

    .line 554
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v3, :cond_2

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private containBetween(III)Z
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 565
    :cond_0
    new-instance p0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .locals 1

    .line 578
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getAsdTabPosition()I
    .locals 3

    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 188
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private getChildItemPosition(II)F
    .locals 0

    .line 582
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    int-to-float p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 459
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    .line 461
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 462
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getRightPosition(Landroid/view/View;)F
    .locals 1

    .line 586
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0703ee

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private initView()V
    .locals 2

    const/16 v0, 0x1e

    .line 591
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 592
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private insertItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 474
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_2

    .line 475
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_2
    return-void
.end method

.method private isTabItemNeedChange(Landroid/view/View;IIF)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-eq p3, v0, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x1

    if-le p2, p3, :cond_2

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_1

    move p0, v0

    :cond_1
    return p0

    :cond_2
    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_3

    move p0, v0

    :cond_3
    :goto_0
    return p0
.end method

.method private synthetic lambda$setLeftPadding$0(I)V
    .locals 2

    .line 624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0703ef

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$setRightPadding$1(I)V
    .locals 3

    .line 628
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0703ef

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveItem, modeUIItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoreLinearListView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 601
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 602
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 603
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-ge v0, p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 606
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_1

    .line 609
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_1

    .line 615
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyAddItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAsdTabPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 153
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 155
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->asdTabLocationInScreenRight(I)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    goto/16 :goto_1

    .line 158
    :cond_1
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mSupportPMasterMode:Z

    if-nez p2, :cond_2

    add-int/lit8 v0, v0, 0x3

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 165
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 166
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v1

    .line 168
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 169
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    goto :goto_1

    .line 171
    :cond_4
    sget-object v2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    goto :goto_1

    .line 174
    :cond_5
    sget-object v2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x2

    .line 175
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 180
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setLeftPadding(I)V
    .locals 1

    .line 624
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setRightPadding(I)V
    .locals 1

    .line 628
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;F)V
    .locals 5

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItemToBeginOrEnd(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 87
    :cond_2
    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 88
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v3

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 93
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    add-int/2addr p2, v3

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, p2

    .line 98
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    goto :goto_4

    .line 100
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_9

    .line 101
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v2

    float-to-int v2, v2

    float-to-int v4, p2

    invoke-direct {p0, v1, v2, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containBetween(III)Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v1, v3, -0x1

    .line 102
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containBetween(III)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    :cond_7
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyAddItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    goto :goto_4

    .line 89
    :cond_8
    :goto_3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyAddItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public findItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;
    .locals 1

    .line 206
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
    .locals 0

    .line 214
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    return-object p0
.end method

.method public handleLinearViewDragEnterEvent(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .locals 2

    const-string v0, "MoreLinearListView"

    const-string v1, "handleLinearViewDragEnterEvent"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->findItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->checkMoveRightAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->checkMoveLeftAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    :cond_0
    return-void
.end method

.method public notifyDragEnterFixModeArea(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 4

    .line 375
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAsdTabPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 381
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 382
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->asdTabLocationInScreenRight(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 383
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v0, :cond_e

    .line 384
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 386
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 387
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 389
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 390
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 392
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 393
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_e

    .line 395
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    goto/16 :goto_2

    .line 400
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v0, :cond_e

    .line 401
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 402
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 405
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    .line 408
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const-string v2, "place_holder"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, p1, 0x2

    .line 410
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mSupportPMasterMode:Z

    if-nez v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x3

    if-nez v3, :cond_6

    add-int/lit8 p1, p1, 0x1

    .line 425
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 426
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 428
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_e

    .line 429
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    goto :goto_2

    .line 414
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 415
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_e

    .line 417
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    goto :goto_2

    .line 435
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-nez v0, :cond_a

    return-void

    .line 439
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 440
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    goto :goto_1

    .line 441
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 442
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 443
    :cond_c
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 444
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_d
    move p1, v1

    :goto_1
    if-eq p1, v1, :cond_e

    .line 448
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->insertItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_e
    :goto_2
    return-void
.end method

.method public notifyDragFromGridToTab(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    return-void
.end method

.method public onDragEnter(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string v1, "place_holder"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 315
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

    if-eqz v0, :cond_2

    .line 317
    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;->onDragStateChanged(ZZ)V

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 320
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 321
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz v0, :cond_6

    .line 325
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    if-eqz v3, :cond_5

    .line 330
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;->onDragStateChanged(ZZ)V

    .line 332
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    :cond_6
    :goto_0
    if-eq p1, p2, :cond_a

    .line 335
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 349
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v0, :cond_a

    .line 350
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 351
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 353
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 354
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-lt p1, v2, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 359
    :cond_7
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getModeUIItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 362
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 365
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_a

    .line 366
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_a
    return-void
.end method

.method public onDragStop()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    return-void
.end method

.method public onFirstViewHolderWidthChanged(I)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setLeftPadding(I)V

    return-void
.end method

.method public onLastViewHolderWidthChanged(I)V
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setRightPadding(I)V

    return-void
.end method

.method public removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 493
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setLeftPadding(I)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setRightPadding(I)V

    .line 497
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 498
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_2
    return-void
.end method

.method public setAdapter(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->setViewHolderWidthChangeListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;)V

    .line 220
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->setDragEnterListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;)V

    return-void
.end method

.method public setDragEnterFinishCallback(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    return-void
.end method

.method public setOnDragStateListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

    return-void
.end method

.method public setScreenSize(Landroid/util/Size;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mScreenSize:Landroid/util/Size;

    return-void
.end method

.method public setSupportPMasterMode(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mSupportPMasterMode:Z

    return-void
.end method

.method public showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 4

    .line 503
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 506
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f090266

    .line 510
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090265

    .line 511
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/more/linearlist/LinearListItemView;

    const v3, 0x7f090264

    .line 512
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 513
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removePlaceHolderIfNecessary(I)V

    :cond_1
    return-void
.end method

.method public swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Landroid/view/View;IIF)I
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->isTabItemNeedChange(Landroid/view/View;IIF)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 246
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    check-cast p2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    const-string p4, "place_holder"

    invoke-virtual {p3, p4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    if-ne p2, p3, :cond_2

    return v1

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 260
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_4
    return p2

    :cond_5
    return v1
.end method
